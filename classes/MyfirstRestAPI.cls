@RestResource(urlMapping='/onAccount/*')
global with sharing class MyfirstRestAPI {
    
    global class WrapperforAccount{
        public String AccountName;
        public String Description;
        
        global WrapperforAccount(String accntName,String accntDesc){
            
            this.AccountName = accntName;
            this.Description = accntDesc;
            
        }
    }
    
    @HttpGet
    global static WrapperforAccount getDetail(){
        
        WrapperforAccount responseStructure;
        RestRequest  req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        if(accountId!=null && accountId!=''){
             Account acnt =[select id,Name,Description from Account where ID =:accountId];
             responseStructure = new WrapperforAccount(acnt.Name,acnt.Description);
        }
       
        
        
        return responseStructure;

        
    }

}