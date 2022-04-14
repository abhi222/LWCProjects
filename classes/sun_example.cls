public class sun_example {  
      public list<wrapperclass> disp_list{get;set;}  
 //Declare a wrapper class  
      public class wrapperclass{  
   
      public string name{get;set;}  
      public string accountNumber{get;set;} 
      public Decimal annualrevenue{get;set;} 
     
    }   
   public sun_example() {  
 //define constructor to instantiate the wrapper data type  
   disp_list=new List<wrapperclass>();  
   }  
   //Method for processing logic  
   public void generate_data(){  
 //querying different objects which is not related at all  
     List<account>acc=[SELECT AccountNumber,Name,AnnualRevenue FROM Account where createddate!=null order by name limit 5];  
      //Iterate through each list to extract the values and add it to the custom wrapper data type  
       for(account accs:acc){  
        
 //Instantiating the wrapper SObject   
           wrapperclass w=new wrapperclass();  
               if(accs.name=='324')
                   w.name='';  
               else
                   w.name=accs.name; 
           
           w.accountNumber=accs.AccountNumber;  
           w.annualrevenue=accs.AnnualRevenue;  
           disp_list.add(w);  
     }  
   }  
   public void cancel_data(){  
     disp_list.clear();  
     }  
 }