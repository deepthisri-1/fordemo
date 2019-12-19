public class mass {
    public static List<Opportunity> sendEmail(List<Opportunity>Opportunities)
    {
        EmailTemplate et=[Select id from EmailTemplate where name=:'Approved By Manager'];
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();   
        for(Opportunity Opp : Opportunities)
        {
            if(Opp.StageName =='Prospecting'|| Opp.StageName=='Qualification'){
                Messaging.SingleEmailMessage singleMail = new Messaging.SingleEmailMessage();
                  List<String> sendTo = new List<String>();
                  sendTo.add('putluruvishnu@gmail.com');
                  singlemail.setToAddresses(sendTo);
                singleMail.setTemplateId(et.Id);
                singleMail.setSaveAsActivity(false);
                emails.add(singleMail);
            }
        }
        Messaging.sendEmail(emails);
        return Opportunities;          
    }
}
