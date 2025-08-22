trigger HolidayToTheContact on Contact (before insert, before update) {
    switch on trigger.operationType{
        when BEFORE_INSERT{
            HolidayToTheContactHandler.FindHolidayOnContact(Trigger.new);
        }
        when BEFORE_UPDATE{
            HolidayToTheContactHandler.FindHolidayOnContact(Trigger.new);
        }
    }

}