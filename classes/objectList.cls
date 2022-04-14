public class objectList{
 
// creating dummy apex property
public Account acc {get;set;}
 
 // creating dummy method
   public String getAccount() {
        return null;
    }

public pagereference searchdata()
{
//you can fetch dummy lookup field vale here and process accordingly.
 System.debug('@@@@@@@@@@@'+acc.ownerid);
 return null;
}
 
  public objectList()
  {
 // instantiate your dummy object
    acc = new Account();
    System.debug('in a controller');
  }
  }