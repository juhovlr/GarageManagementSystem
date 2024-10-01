trigger AmountDistribution on Appointments__c (before insert, before update) {

    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        AmountDistributionHandler.amountDist(Trigger.new);
    }

}