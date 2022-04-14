@isTest
private class TestVerifyDate {
    @isTest static void myTest() {
        Date date1 = Date.newInstance(1960, 2, 17);
        Date date2 = Date.newInstance(1960, 2, 18);
        Date date3 = Date.newInstance(2008, 1, 1);
        Date date4 = Date.newInstance(2008, 1, 31);

        Date returndate1 = VerifyDate.CheckDates(date1,date2);
        Date returndate2 = VerifyDate.CheckDates(date3,date4);
        Date returndate3 = VerifyDate.CheckDates(date3,date1);
    }
}