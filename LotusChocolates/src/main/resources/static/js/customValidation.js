/*  $('.nospecialCharacter').bind('keypress', function(e) {
	    console.log( e.which );
	        var k = e.which;
	        var ok = k >= 65 && k <= 90 || // A-Z
	            k >= 97 && k <= 123 || // a-z
	            k >= 48 && k <= 57; // 0-9
	        
	        if (!ok){
	            e.preventDefault();
	        }
	});*/

/* if(!(inputValue >= 65 && inputValue <= 123) && (inputValue != 32 && inputValue != 0)) { 
     event.preventDefault(); 
 }
function changetext(){
$(".capsOnly").val(function () {
    return this.value.toUpperCase();
}); 
}*/

$(".capsOnly").keyup(function() {
	this.value = this.value.toUpperCase();
});

/*
 * $(".capsOnly").keypress(function (e) { if
 * (String.fromCharCode(e.keyCode).match(/[^A-Z]/g)) return false; });
 */

/*
 * $(".numericOnly").keypress(function (e) {
 * 
 * if (String.fromCharCode(e.keyCode).match(/[^0-9]/g)) return false; });
 */

$('.mobilenumber').keyup(function() {
    $('span.error-keyup-4').remove();
    var inputVal = $(this).val();
    if(inputVal != "" ){
    	
    var characterReg = /^[6789]\d{9}$/;
    if(!characterReg.test(inputVal)) {
        $(this).after('<span class="error error-keyup-4">Not a valid Mobile Number </span>');
        
        $('.mobilenumber' ).css('border-color','#e73d4a');
		$('.mobilenumber' ).css('color','#e73d4a');
		
		$('.mobilenumber' ).addClass("errorCls");
        //setTimeout(function() { $("#error-keyup-4").text(''); }, 3000);
        
        return false;
    }else{
    	$('.mobilenumber' ).removeClass("errorCls");
    	return true;
    }
    }else{
    	
    	return false;
    }
});


$('.mobilenumber').focusout(function() {
    $('span.error-keyup-4').remove();
    var inputVal = $(this).val();
    if(inputVal != "" ){
    	
    var characterReg = /^[6789]\d{9}$/;
    if(!characterReg.test(inputVal)) {
        $(this).after('<span class="error error-keyup-4">Not a valid Mobile Number </span>');
        
        $('.mobilenumber' ).css('border-color','#e73d4a');
		$('.mobilenumber' ).css('color','#e73d4a');
		
		$('.mobilenumber' ).addClass("errorCls");
        //setTimeout(function() { $("#error-keyup-4").text(''); }, 3000);
        
        return false;
    }
    }
});

jQuery('.numericOnly').keyup(function() {
	this.value = this.value.replace(/[^0-9\.]/g, '');
});


jQuery('.numericOnly2').keyup(function() {
	this.value = this.value.replace(/[^0-9]/g, '');
});


/*
 * $('.numericOnly').keydown(function (event) {
 * 
 * var keycode = event.which;
 * 
 * if (!/[\d\t\b+]/.test(String.fromCharCode(event.which)) || event.shiftKey ) {
 * return false; } else { return true; } });
 */

$(".numericOnly").keydown(function(e) {
			// Allow: backspace, delete, tab, escape, enter and .
			if ($.inArray(e.keyCode, [ 46, 8, 9, 27, 13, 110, 190 ]) !== -1 ||
			// Allow: Ctrl+A, Command+A
			(e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
			// Allow: home, end, left, right, down, up
			(e.keyCode >= 35 && e.keyCode <= 40)) {
				// let it happen, don't do anything
				return;
			}
			// Ensure that it is a number and stop the keypress
			if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57))
					&& (e.keyCode < 96 || e.keyCode > 105)) {
				e.preventDefault();
			}
		});


$(".numericOnly2").keydown(function(e) {
	// Allow: backspace, delete, tab, escape, enter and .
	if ($.inArray(e.keyCode, [ 8, 9, 27, 13 ]) !== -1 ||
	// Allow: Ctrl+A, Command+A
	(e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
	// Allow: home, end, left, right, down, up
	(e.keyCode >= 35 && e.keyCode <= 40)) {
		// let it happen, don't do anything
		return;
	}
	// Ensure that it is a number and stop the keypress
	if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57))
			&& (e.keyCode < 96 || e.keyCode > 105)) {
		e.preventDefault();
	}
});

// $('.onlyCharacters').keypress(function (e) {
// var keyCode = event.keyCode || event.which
// //Don't validate the input if below arrow, delete and backspace keys were
// pressed
// if (keyCode == 8 || (keyCode >= 35 && keyCode <= 40)) { // Left / Up / Right
// / Down Arrow, Backspace, Delete keys
// return;
// }
/*
 * var regex = new RegExp("^[A-Z, ,a-z\b]+$"); var str =
 * String.fromCharCode(!e.charCode ? e.which : e.charCode); if (regex.test(str)) {
 * return true; } else { e.preventDefault(); return false; }
 */
// });
var correct = false;
function checkEmail(str) {
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if (!re.test(str)) {
		alert("Please enter a valid email address");

		correct = false;
		return false;
	} else {
		correct = true;
		return true;
	}
}

$(".emailOnly").on(	"blur",	function(e) {
	 $('span.error-keyup-4').remove();
					// console.log(event.which);
					var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
					// var expr =/[A-Z0-9a-z@]/;
					var key = String.fromCharCode(event.which);
					 var inputVal = $(this).val();
					/*
					 * if($(".emailOnly").match(expr)) { console.log("Email");
					 * return true; }
					 */
					if (expr.test(inputVal)) {
						console.log("Email");
						return true;
					}else{
						
						 $(this).after('<span class="error error-keyup-4">Not a valid Email </span>');
					        
					        $('.emailOnly' ).css('border-color','#e73d4a');
							$('.emailOnly' ).css('color','#e73d4a');
							
							$('.emailOnly' ).addClass("errorCls");
					}
					// keychar = String.fromCharCode(keynum);
					// regEx = /[A-Z0-9a-z@]/;
					// return regEx.test(keychar);
					return false;
				});

$('.nospecialCharacter').bind('keypress', function validate(e) {
	var regex = new RegExp("[a-zA-Z0-9]");
	var key = e.keyCode || e.which;
	key = String.fromCharCode(key);

	if (!regex.test(key) && key.charCodeAt(0) > 32) {
		e.returnValue = false;
		if (e.preventDefault) {
			e.preventDefault();
		}
	}
});

$(".onlyCharacters").on("keypress",	function(event) {

			// Disallow anything not matching the regex pattern (A to Z
			// uppercase, a to z lowercase and white space)
			var englishAlphabetAndWhiteSpace = /[A-Za-z. ]/g;

			// Retrieving the key from the char code passed in event.which
			var key = String.fromCharCode(event.which);

			// alert(event.keyCode);

			if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37
					|| event.keyCode == 39
					|| englishAlphabetAndWhiteSpace.test(key)) {
				return true;
			}

			// If we got this far, just return false because a disallowed key
			// was typed.
			return false;
		});

/*$('.onlyCharacters').on("paste", function(e) {
	e.preventDefault();
});*/

// ---------------------------------------------------

// input placeholders
$("input").each(function() {
	$(this).data('holder', $(this).attr('placeholder'));
	$(this).focusin(function() {
		$(this).attr('placeholder', '');
	});
	$(this).focusout(function() {
		$(this).attr('placeholder', $(this).data('holder'));
	});

});
/*$(".validate").focusout(function(){
		$('.validate').on('change',function() {
			var id = $(this).attr('id');
			var placeholder = $(this).attr('placeholder');
			var value = $("#" + id).val();
			if (value == null || value == "" || value == "undefined") {
				$("#" + id + "Error").text("Please " + placeholder);
			} else {
				$("#" + id + "Error").text(" ");
			}
		});*/
// onblur validation
var styleBlock = '.placeholder-style.placeholder-style::-moz-placeholder {color: #cc0000;} .placeholder-style::-webkit-input-placeholder {color: #cc0000;}';
$('.validate').blur(function() {
	var id = $(this).attr('id');
	var placeholder = $(this).attr('placeholder');
	var value1 = $("#" + id).val();
	var value=$.trim(value1);
	if (value == null || value == "" || value == "undefined") {
		$('style').append(styleBlock);
		$("#" + id ).attr("placeholder", placeholder);
		$("#" + id ).css('border-color','#e73d4a');
		$("#" + id ).css('color','#e73d4a');
		$("#" + id ).addClass('placeholder-style your-class');
		
		if ($("#" + id+"_chosen").length)
		{
			$("#" + id+"_chosen").children('a').css('border-color','#e73d4a');
		}
//		$("#" + id + "Error").text("Please " + placeholder);
	} else {
		$("#" + id + "Error").text("");
	}
});

var idArray = $.makeArray($('.validate').map(function() {
	return this.id;
}));

var idArrayCmt = $.makeArray($('.validateCmt').map(function() {
	return this.id;
}));



//console.log(idArray);
// submit validation
var validation = true;

$('#submit1').click(function(event) {
	validation = true;
	$.each(idArray, function(i, val) {
		var value = $("#" + idArray[i]).val();
		var placeholder = $("#" + idArray[i]).attr('placeholder');
		
		/* optional variable is for hidden and show input field validation  */
		 
		var optional = $("#" + idArray[i]).hasClass('display-none');
		var errorCls = $("#" + idArray[i]).hasClass('errorCls');
		if ((value == null || value == "" || value == "undefined" || errorCls) && !optional) {
			$('style').append(styleBlock);
			$("#" + idArray[i] ).attr("placeholder", placeholder);
			$("#" + idArray[i] ).css('border-color','#e73d4a');
			$("#" + idArray[i] ).css('color','#e73d4a');
			$("#" + idArray[i] ).addClass('placeholder-style your-class');
			 var id11 = $("#" + idArray[i]+"_chosen").length;
			if ($("#" + idArray[i]+"_chosen").length)
			{
				$("#" + idArray[i]+"_chosen").children('a').css('border-color','#e73d4a');
			}
//			$("#" + idArray[i] + "Error").text("Please " + placeholder);
			validation = false;
		} 
	});
	if(validation) {
		$("#submit1").attr("disabled",true);
		$("#submit1").val("Please wait...");
		$("form").submit();											
	}else {
		event.preventDefault();
		return false;
	}
});




$('#submit3').click(function(event) {
	validation = true;
	$.each(idArrayCmt, function(i, val) {
		var value = $("#" + idArrayCmt[i]).val();
		var placeholder = $("#" + idArrayCmt[i]).attr('placeholder');
		if (value == null || value == "" || value == "undefined") {
			$('style').append(styleBlock);
			$("#" + idArrayCmt[i] ).attr("placeholder", placeholder);
			$("#" + idArrayCmt[i] ).css('border-color','#e73d4a');
			$("#" + idArrayCmt[i] ).css('color','#e73d4a');
			$("#" + idArrayCmt[i] ).addClass('placeholder-style your-class');
			 var id11 = $("#" + idArrayCmt[i]+"_chosen").length;
			if ($("#" + idArrayCmt[i]+"_chosen").length)
			{
				$("#" + idArrayCmt[i]+"_chosen").children('a').css('border-color','#e73d4a');
			}
//			$("#" + idArray[i] + "Error").text("Please " + placeholder);
			validation = false;
		} 
	});
	if(validation) {
		$("#submit3").attr("disabled",true);
		$("#submit3").val("Please wait...");
		$("form").submit();											
		event.preventDefault();
	}else {
		event.preventDefault();
		return false;
	}
});

//remove border validation for edit-form
$(".editIt").click(function()
{
	$.each(idArray, function(i, val)
	{
//		var value = $("#" + idArray[i]).val();
		/*if ($("#" +idArray[i]+"_chosen").length)
		{
			$("#" +idArray[i]).val("");
			$("#" +idArray[i]).trigger("chosen:updated");
		}*/
		$("#"+idArray[i]).css('border-color','');
		$("#"+idArray[i]).css('color','black');
		$("#"+idArray[i]).removeClass('placeholder-style your-class default-class');
		if ($("#" + idArray[i]+"_chosen").length)
		{
			$("#" + idArray[i]+"_chosen").children('a').css('border-color','black');
		}
	});
});

//reset-form
$(".cancel").click(function()
{
	$("#id").val(0);
	$('span.error-keyup-4').remove();
	$.each(idArray, function(i, val)
	{
		var value = $("#" + idArray[i]).val();
		if ($("#" +idArray[i]+"_chosen").length)
		{
			$("#" +idArray[i]).val("");
			$("#" +idArray[i]).trigger("chosen:updated");
		}
//		$("form")[0].reset();
		$("#"+idArray[i]).val('');
		$("#"+idArray[i]).prop('disabled',false);
		$("#"+idArray[i]).css('border-color','');
		$("#"+idArray[i]).css('color','black');
		$("#"+idArray[i]).removeClass('placeholder-style your-class default-class');
		if ($("#" + idArray[i]+"_chosen").length)
		{
			$("#" + idArray[i]+"_chosen").children('a').css('border-color','black');
		}
	});
});

//
$('.validate').keydown(function() {
	var id = $(this).attr('id');
	removeBorder(id);
});
//remove borders
function removeBorder(el){	
	  $("#"+el).css("border", "");
	  $("#"+el).css('color','black');
	  $('#'+el).addClass('default-class');
	  if ($("#" + el+"_chosen").length)
		{
			$("#" +el+"_chosen").children('a').css('border-color','black');
		}
}