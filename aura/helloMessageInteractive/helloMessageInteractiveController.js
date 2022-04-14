({
	handleclick : function(component, event, helper) {
        var btnClicked = event.getSource(); // the button
        var btnMessage = btnClicked.get("v.label");  // the button's label
        component.set("v.message",btnMessage);
		
	},
    clickme : function(component, event, helper) {
        var message = event.getSource().get("v.label");
        console.log("message===> "+message);
        var msg = component.get("v.message");
        console.log('msg==>'+msg);
        component.set("v.message",message);
		
	}
})