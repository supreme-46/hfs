public with sharing class contacts {
    @AuraEnabled
    public static List<Contact> getContacts(){
        return ([select id, name, email, CreatedDate from Contact order by CreatedDate desc]);
    }

    @AuraEnabled
    public static Contact saveContact(Contact cont){
        insert (cont);

        return (cont);
    }
}