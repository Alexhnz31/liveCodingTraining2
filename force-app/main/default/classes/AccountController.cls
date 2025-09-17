public with sharing class AccountController {
    public AccountController() {

    }
    @AuraEnabled(cacheable = true)
    public static List<Account> getAccounts(){
        return [SELECT ID , NAME FROM Account];
    }
}