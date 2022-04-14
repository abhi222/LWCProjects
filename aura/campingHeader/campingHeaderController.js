({
    clickCreateItem: function(component, event, helper) {
        var validCamping = component.find('campingform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        // If we pass error checking, do some real work
        if(validCamping){
            // Create the new expense
            var newItem = component.get("v.newItem");
            console.log("Create item: " + JSON.stringify(newItem));
            
            //Camping initialize
            var theItems = component.get("v.items");
                 
            // Copy the expense to a new object
            // THIS IS A DISGUSTING, TEMPORARY HACK
            var tempItem = JSON.parse(JSON.stringify(newItem));
     
            
            console.log("Camping before 'create': " + JSON.stringify(theItems));
            theItems.push(tempItem);
            component.set("v.items", theItems);
            console.log("Camping after 'create': " + JSON.stringify(theItems));
        }
    }
})