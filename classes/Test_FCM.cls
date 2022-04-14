@isTest
private class Test_FCM {

	@isTest static  void testGetCallout() {
	    
	    Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://fcm.googleapis.com/fcm/send');
request.setMethod('POST');
request.setHeader('Content-Type', 'application/json;charset=UTF-8');
request.setHeader('Authorization', 'key=AAAAaKC5qJo:APA91bFKfrhtGcrqUxjwgcSNxXYfhfrvDP7PaO8aH4__1JkxiaNl5kQ7VpiBykvYqYAxrd0RcReZiBBC7t2zVvyrfSfA8AQZnXf11y5afQ9W0RuZ_d_2yEYH4Nt9n1Ue5sh4gXpxRUMD');
// Set the body as a JSON object
request.setBody('{"notification":{     "title":"Notification title",     "body":"Notification body",     "sound":"default",     "click_action":"FCM_PLUGIN_ACTIVITY",     "icon":"fcm_push_icon"   },       "to":"dzqQTtbEP_c:APA91bH8al9R8UmVv-I4vsPu5YPcyi7KWOlJ3e-WezCsWu9v61zZrm-Ruk3CXVpU6jOLSGpghu6FRu8MFB_XY4ETsh_Ek8yOo7rJW3G5RDwSzDZnrI9QK51_C5YdIt4iLAswSK-thKHV",     "priority":"high",     "restricted_package_name":""}');
HttpResponse response = http.send(request);
// Parse the JSON response
if (response.getStatusCode() != 201) {
    System.debug('The status code returned was not expected: ' +
        response.getStatusCode() + ' ' + response.getStatus());
} else {
    System.debug(response.getBody());
}
	   
	    

	}

}