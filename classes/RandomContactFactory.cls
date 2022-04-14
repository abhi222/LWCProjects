public class RandomContactFactory {
 public static List<Contact> generateRandomContacts(integer count,string lastname)
     {  List<Contact> contlist = new List<Contact>();
        try{
            for(integer i=0;i<count;i++){
                Contact c=new Contact(
                FirstName = 'fname'+i,    
                LastName = 'lname',
                Email = 'email@gmail.com',
                Phone = '9743800309');
                contlist.add(c);
            }
        }catch(Exception e){} 
        return contlist;
     }
}