package com.charvikent.lotusChocolates.controller;



import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.velocity.VelocityContext;
import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.charvikent.lotusChocolates.config.FilesStuff;
import com.charvikent.lotusChocolates.config.SendSMS;
import com.charvikent.lotusChocolates.config.SendingMail;
import com.charvikent.lotusChocolates.dao.LotusDao;
import com.charvikent.lotusChocolates.model.HomeBean;
import com.charvikent.lotusChocolates.model.Ordertable;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class HomeController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
	@Autowired LotusDao lotusDao;
	
	@Autowired FilesStuff fileTemplate;
	@Autowired  SendingMail sendingMail;
	@Autowired SendSMS smsTemplate;
	@Autowired Environment environment;

	
	@RequestMapping(value={"","/","/home"})
	public String Home(@ModelAttribute("custReg") HomeBean salesrequest,Model model,HttpServletRequest request,HttpSession session) throws JSONException, JsonProcessingException 
	{
		 
		return "home";
	}
	
	@RequestMapping("/saveClient")
	public String Save(@ModelAttribute("custReg") HomeBean salesrequest,Model model,HttpServletRequest request,HttpSession session,RedirectAttributes redir) throws JSONException, JsonProcessingException 
	{
		
		
		lotusDao.saveClient(salesrequest);
		String tmsg =environment.getProperty("app.moreInfo");
		  System.out.println(tmsg);
		  
		  tmsg=  tmsg.replaceAll("_clientName_", salesrequest.getName());
		  tmsg=  tmsg.replaceAll("_mobileNumber_", salesrequest.getMobileNumber());
		  tmsg=  tmsg.replaceAll("_location_", salesrequest.getLocation());
		  //"7799878777"
		 try {
			smsTemplate.sendSMS(tmsg,"7799878777");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		redir.addFlashAttribute("msg", "Received Your Request, We will get back to you soon, Thank You.");
		redir.addFlashAttribute("cssMsg", "info");
		return "redirect:/";
	}
	
	@RequestMapping("/bookorder")
	public String bookorder(@ModelAttribute("requestOrder") Ordertable salesrequest,Model model,HttpServletRequest request,HttpSession session) throws JSONException, JsonProcessingException 
	{
				
		 
		return "order";
	}
	
	
	@RequestMapping("/requestOrder")
	public String requestOrder(@RequestParam("name")  String name,
			@RequestParam("mobileNumber")  String mobileNumber,
			@RequestParam("deliveryDate")  Date deliveryDate,
			@RequestParam("deliveryLocation")  String deliveryLocation	,
			@RequestParam("image") MultipartFile[] image,
			@RequestParam("weight")  String weight	,
			@RequestParam("messageOnChocolate")  String messageOnChocolate	,
			Model model,HttpServletRequest request,HttpSession session,RedirectAttributes redir) throws JSONException, IllegalStateException, IOException, MessagingException 
	{
		
		Ordertable order = new Ordertable();
		order.setName(name);
		order.setMobileNumber(mobileNumber);
		order.setDeliveryDate(deliveryDate);
		order.setDeliveryLocation(deliveryLocation);
		order.setWeight(weight);
		order.setMessageOnChocolate(messageOnChocolate);
		
		//String email = "";
		String email = "rrbece@gmail.com";
		//String email = "rjrv.143@gmail.com";
		String fileName = null;
		   	 for(MultipartFile multipartFile : image) 
		   	 {
		   		 
				fileName = multipartFile.getOriginalFilename();
				
				if(!multipartFile.isEmpty())
				{
				 multipartFile.transferTo(fileTemplate.moveFileTodir(fileName));
				}
				
			}
		   	order.setImage(fileName);
   	 
		   	 lotusDao.saveRequestOrder(order);
		   	// String text = "Name: "+name+"/n Mobile Number:"+mobileNumber+"/n Delivery Date:"+deliveryDate+"/n Delivery Location: "+deliveryLocation+"/n Message On Chocolate:"+messageOnChocolate;
		   	 
		   	VelocityContext velocityContext = new VelocityContext();
			velocityContext.put("name",name);
			velocityContext.put("mobileNumber",mobileNumber);
			velocityContext.put("deliveryDate",deliveryDate);
			velocityContext.put("deliveryLocation",deliveryLocation);
			velocityContext.put("messageOnChocolate",messageOnChocolate);
	   		sendingMail.sendSalesRequestEmailWithMultipleAttachment(email.toString(), image,velocityContext);
	   		//String str ="true";
	   		
	   		SimpleDateFormat formatter = new SimpleDateFormat("E, dd MMM yyyy ");  
	   	    String strDate= formatter.format(deliveryDate);  
	   	    
	   		String tmsg =environment.getProperty("app.lotusOrder");
			  System.out.println(tmsg);
			  
			  tmsg=  tmsg.replaceAll("_clientName_",name);
			  tmsg=  tmsg.replaceAll("_mobileNumber_", mobileNumber);
			  tmsg=  tmsg.replaceAll("_location_", deliveryLocation);
			  tmsg=  tmsg.replaceAll("_deliveryDate_", strDate);
			  tmsg=  tmsg.replaceAll("_messageOnChocolate_", messageOnChocolate);
			  tmsg=  tmsg.replaceAll("_messageOnChocolate_", messageOnChocolate);
			  tmsg=  tmsg.replaceAll("_weight_", weight);
			  //"7799878777"
			  
	   		
	   	 smsTemplate.sendSMS(tmsg,"7799878777");
	   	 
		redir.addFlashAttribute("msg", "Thank you for Ordering. We will call back you soon for any additional infomration needed.");
		redir.addFlashAttribute("cssMsg", "info");
		return "redirect:bookorder";
	}
	
	@RequestMapping("/customizedCollections")
	public String customizedCollections(Model model,HttpServletRequest request,HttpSession session) throws JSONException, JsonProcessingException, FileNotFoundException 
	{
		
		//String baseurl=(String)session.getAttribute("baseurl");
		//System.out.println(baseurl);
		//ClassLoader classLoader = getClass().getClassLoader();
		// ClassPathResource imgFile = new ClassPathResource("image/sid.jpg");
		String baseurl =  request.getScheme() + "://" + request.getServerName() +      ":" +   request.getServerPort() +  request.getContextPath();
		
		 List<String> imageUrlList = new ArrayList<String>();
		 List<String> imageUrlList2 = new ArrayList<String>();
		 List<String> imageUrlList3 = new ArrayList<String>();
		 List<String> imageUrlList4 = new ArrayList<String>();
		 //String path = System.getProperty("catalina.base");
		 //File dir = new File(baseurl + File.separator + "webapps"+ File.separator + "galary");
		 File folder = ResourceUtils.getFile("classpath:static/100g");
		 File folder2 = ResourceUtils.getFile("classpath:static/250g");
		 File folder3 = ResourceUtils.getFile("classpath:static/500g");
		 File folder4 = ResourceUtils.getFile("classpath:static/1Kg");
	        //File folder = new File(baseurl+"/galary");
	       /* File[] files = folder.listFiles();
	        File[] files2 = folder2.listFiles();
	        File[] files3 = folder3.listFiles();
	        File[] files4 = folder4.listFiles();*/
	        for(File imageFile : folder.listFiles()){
	        	 String imageFileName = imageFile.getName();
	        	imageUrlList.add(imageFileName);
	        	
	        }
	        for(File imageFile : folder2.listFiles()){
	        	 String imageFileName2 = imageFile.getName();
	        	imageUrlList2.add(imageFileName2);
	        	 
	        }
	        for(File imageFile : folder3.listFiles()){
	        	 String imageFileName3 = imageFile.getName();
	        	imageUrlList3.add(imageFileName3);
	        	
	        }
	        for(File imageFile : folder4.listFiles()){
	        	 String imageFileName4 = imageFile.getName();
	        	imageUrlList4.add(imageFileName4);
	        	
	        }
	        
	        ObjectMapper om = new ObjectMapper();
	        ObjectMapper om2 = new ObjectMapper();
	        ObjectMapper om3 = new ObjectMapper();
	        ObjectMapper om4 = new ObjectMapper();
	        String json = om.writeValueAsString(imageUrlList);
	        String json2 = om2.writeValueAsString(imageUrlList2);
	        String json3 = om3.writeValueAsString(imageUrlList3);
	        String json4 = om4.writeValueAsString(imageUrlList4);
	        request.setAttribute("oneZeroZero",json.toString());
	        request.setAttribute("twoFivezero",json2.toString());
	        request.setAttribute("fiveZeroZero",json3.toString());
	        request.setAttribute("oneZeroZeroZero",json4.toString());
	        
		return "customizedCollections";
	}
	
	
}
