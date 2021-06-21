@isTest
public class ContactForGDPRTest {
    
    static testmethod void contactForGDPRtest() { 
       
               Account globalParentAcc=new Account(Name='Global Parent Test Acc',Display_Shipping_Country__c ='United States', Display_Billing_Country__c = 'United States',ShippingCity = 'New York', ShippingCountry ='US',RecordTypeId=Schema.SObjectType.Account.getRecordTypeInfosByName().get('Global Parent').getRecordTypeId());
        insert globalParentAcc;
        Account acc = new Account(name='Account ',Display_Shipping_Country__c ='United States', Display_Billing_Country__c = 'United States',ParentId=globalParentAcc.Id,ShippingCity = 'New York', ShippingCountry ='US',
                billingcity='New York', billingcountry='USA',Status__c='Active',Type='Customer',RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Top Level Account').getRecordTypeId());
        insert acc;
        Account acc1 = new Account(ParentId = globalParentAcc.Id,Display_Shipping_Country__c ='United States', Display_Billing_Country__c = 'United States',name='Account1 ', ShippingCity = 'New York', ShippingCountry ='US',
                billingcity='New York test', billingcountry='USA',Status__c='Active',Type='Party',RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Top Level Account').getRecordTypeId());
        
        insert acc1;
        Account acc2 = new Account(name='Account3',ParentId = globalParentAcc.Id,Display_Shipping_Country__c ='United States', Display_Billing_Country__c = 'United States',shippingcity='Raipur',shippingcountry='US',Status__c='Active',Type='Distributor',RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Customer Account').getRecordTypeId(),Legacy_Id__c ='eoqw3214132421341');

        
        insert acc2;
        /** 
        Account acc = new Account(name='Account ', 
                billingcity='New York', billingcountry='USA',Status__c='Active',Type='Customer',RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Top Level Account').getRecordTypeId());
        insert acc;
        Account acc1 = new Account(ParentId = acc.Id,name='Account1 ', 
                billingcity='New York test', billingcountry='USA',Status__c='Active',Type='Party',RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Top Level Account').getRecordTypeId());
        
        insert acc1;
        Account acc2 = new Account(name='Account3',shippingcity='Raipur',shippingcountry='India',Status__c='Active',Type='Distributor',RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Customer Account').getRecordTypeId(),Legacy_Id__c ='eoqw3214132421341');

        
        insert acc2; **/
        /*Account acc2 = new Account(ParentId = acc1.Id,name='Account2 ', 
                billingcity='New York test1', billingcountry='USA',Status__c='Active',Type='Distributor',RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Top Level Account').getRecordTypeId());
        
        insert acc2;*/
        Test.startTest();
        List<Contact> conlist = new List<Contact>(); 
        
        Contact c = new Contact(FirstName = 'Test',LastName = 'Contact',Display_Mailing_Country__c='United States',AccountId = acc.Id,MailingCountry='United States',Email='rest@vv.com');
        Contact c4 = new Contact(FirstName = 'Test',LastName = 'Contact',Display_Mailing_Country__c='China',AccountId = acc.Id,MailingCountry='CHINA',Email='rest@vv.com');
        Contact c1 = new Contact(FirstName = 'Test1',LastName = 'Contact',Display_Mailing_Country__c='Canada',AccountId = acc1.Id,MailingCountry='CANADA',Email='rest@vv.com');
        Contact c5 = new Contact(FirstName = 'Test1',LastName = 'Contact',Display_Mailing_Country__c='Canada',AccountId = acc2.Id,MailingCountry='CANADA',Email='rest@vv.com');
        Contact c6 = new Contact(FirstName = 'Test1',LastName = 'Contact',Display_Mailing_Country__c='Canada',AccountId = acc.Id,MailingCountry='CANADA',Email='rest@vv.com');
        Contact c2 = new Contact(FirstName = 'Test2',LastName = 'Contact',Display_Mailing_Country__c='Singapore',AccountId = acc1.Id,MailingCountry='SINGAPORE',Email='rest@vv.com');
        Contact c3 = new Contact(FirstName = 'Test3',LastName = 'Contact',Display_Mailing_Country__c='Singapore',AccountId = acc.Id,MailingCountry='SINGAPORE',Email='rest@vv.com');
        conlist.add(c); 
        conlist.add(c1);
        conlist.add(c2);
        conlist.add(c3);
        conlist.add(c4);
        conlist.add(c5);
        conlist.add(c6);
        insert conlist;
        delete c3;
        acc.Type='Party';
        update acc;
        // ContactForGDPR.checkPartyAccount(conlist);
        //ContactForGDPR.checkMarketingCommunication(conlist);
       // GDPREmailController mailrec = new GDPREmailController();
        GDPREmailController.contactId=c.id;
        GDPREmailController.contactEmail=c.Email;
        Test.stopTest();
    }
}