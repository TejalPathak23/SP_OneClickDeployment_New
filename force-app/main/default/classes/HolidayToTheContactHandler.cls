public class HolidayToTheContactHandler {
    public static void FindHolidayOnContact(List<Contact> conList) {
        Date today = Date.today();
        Date maxDate = today.addDays(30);
        Set<Date> holidayDates = new Set<Date>();
        for (Holiday h : [
            SELECT ActivityDate 
            FROM Holiday 
            WHERE ActivityDate >= :today 
              AND ActivityDate <= :maxDate
        ]) {
            holidayDates.add(h.ActivityDate);
        }

        for (Contact c : conList) {
            if (c.Start_Date__c == null) continue;

            Date dt = c.Start_Date__c;
            Integer daysAdded = 0;
            Date potentialEnd = dt;
 
            while (daysAdded < 3) {
                potentialEnd = potentialEnd.addDays(1);
 
                Integer wd = potentialEnd.toStartOfWeek().daysBetween(potentialEnd) + 1;
                if (wd == 6 || wd == 7) continue;


                if (holidayDates.contains(potentialEnd)) continue;

                daysAdded++;
            }

 
            while (holidayDates.contains(potentialEnd) ||
                   new Set<Integer>{6,7}.contains(
                       potentialEnd.toStartOfWeek().daysBetween(potentialEnd) + 1
                   )
            ) {
                potentialEnd = potentialEnd.addDays(1);
 
                Integer wd2 = potentialEnd.toStartOfWeek().daysBetween(potentialEnd) + 1;
                if (wd2 == 6 || wd2 == 7 || holidayDates.contains(potentialEnd)) {
                    continue;
                }
            }

            c.End_Date__c = potentialEnd;
        }
    }
}