public class myControllerExtensionLookup {

    private final Contact acct;
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    public myControllerExtensionLookup(ApexPages.StandardController stdController) {
        this.acct = (Contact)stdController.getRecord();
    }

    public String getGreeting() {
        return 'Hello ' + acct.name + ' (' + acct.id + ')';
    }
}