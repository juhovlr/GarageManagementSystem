public class AmountDistributionHandler {

    public static void amountDist(List<Appointments__c> listApp) {

        List<Service_records__c> serList = new List<Service_records__c>();

        for (Appointments__c app : listApp) {

            if (app.Maintenance_service__c == true && app.Repairs__c == true && app.Replacement_Parts__c == true) {
                app.Service_Amount__c = 10000;
            } 
            else if (app.Maintenance_service__c == true && app.Repairs__c == true) {
                app.Service_Amount__c = 5000;
            } 
            else if (app.Maintenance_service__c == true && app.Replacement_Parts__c == true) {
                app.Service_Amount__c = 8000;
            } 
            else if (app.Repairs__c == true && app.Replacement_Parts__c == true) {
                app.Service_Amount__c = 7000;
            } 
            else if (app.Maintenance_service__c == true) {
                app.Service_Amount__c = 2000;
            } 
            else if (app.Repairs__c == true) {
                app.Service_Amount__c = 3000;
            } 
            else if (app.Replacement_Parts__c == true) {
                app.Service_Amount__c = 5000;
            }

        }
    }
}