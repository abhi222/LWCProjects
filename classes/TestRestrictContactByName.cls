@istest
  Public class TestRestrictContactByName{
     public static void generateRandomContacts()
     {   try{
            Contact c=new Contact(
            LastName = 'lname',
            Email = 'email@gmail.com',
            Phone = '9743800309'); 
            insert c; 
            c = [select LastName From contact limit 1];
            c.LastName='INVALIDNAME';
            update c;
        
     }catch(Exception e){} 
 }
  }