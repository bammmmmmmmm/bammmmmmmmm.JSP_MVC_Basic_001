/**
 * This will be called to make a XMLHTTPRequestObject, when and how to handle retrieval of data from login.jsp's 'CreateLogin' form's '_userId' field and send Request to the
 * 'CheckUserController' servlet, and how to retrieve the Response and inject into the parent element, under the userId prompt.
 */

//1. Create XMLHTTPRequestObject... and check populated
var xmlHttp = createXmlHttpRequestObject();

function createXmlHttpRequestObject(){
		var xmlHttp;
		
		if(window.ActiveXObject){//Deal with IE... This may not still be needed...?
			
			try{
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				
			}catch(e){
				xmlHttp = false;
			}
		}else{
			try{
				xmlHttp = new XMLHttpRequest();
				
			}catch(e){
				xmlHttp = false;
			}
		}
		
		if(!xmlHttp){
			alert("Ajax xmlHttpRequest Object Creation Failed!");//Replace this!!!
		}else{
			return xmlHttp;
		}
		
}


//2. Check for readyStateChance [and/or 'onChange()'], parse login _userId field, and send Request to CheckUserController!!!!!!!!!!!!!
function check_user(){
	
	if(xmlHttp.readyState==0 || xmlHttp.readyState==4 ){//States 0 and 4 mean the xmlHttp object is free atm
		userIdEntered=encodeURIComponent(document.getElementById("_userId").value);
		xmlHttp.open("GET","CheckUser?_userId="+userIdEntered,true);//True=asynchronous
		xmlHttp.onreadystatechange = handleServerResponse;
		xmlHttp.send(null);//null, unless POST method
	}else{
		setTimeout('check_user()',1000);
	}
}

//3. Catch every Response to the above method (2) and inject into 'login_warning_div'>'login_warning_text'.value
function handleServerResponse(){
	
	if(xmlHttp.readyState==4){
		if(xmlHttp.status==200){
			xmlResponse = xmlHttp.responseXML;
			xmlDocumentElement = xmlResponse.documentElement;//This is root element of xml file
			message = xmlDocumentElement.firstChild.data;
			document.getElementById("login_warning_text").innerHTML=message;//Pass the span and styling entirely here?
			setTimeout('check_user()',1000);
		}else{
			alert("Failed to retrieve HTML XML Response!");//Replace this!!!
		}
	}
}