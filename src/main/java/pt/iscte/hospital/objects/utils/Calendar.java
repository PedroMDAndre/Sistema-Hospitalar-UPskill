package pt.iscte.hospital.objects.utils;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class Calendar {
    public static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    public static final DateTimeFormatter TIME_FORMATTER = DateTimeFormatter.ofPattern("HH:mm");
    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd\nHH:mm");

    public static List<Day> calendarList(int year, int month) {
        LocalDate date = LocalDate.of(year, month, 1);

        Integer[] calendar = new Integer[42];

        int nrDays = date.lengthOfMonth();
        int weekDay = date.getDayOfWeek().getValue();

        for (int day = 1; day <= nrDays; day++) {
            calendar[day + weekDay - 2] = day;
        }

        List<Day> calendarDays = new ArrayList<>();

        for (int i = 0; i < calendar.length; i++) {
            String strDate = "";
            LocalDate ld = null;
            if (calendar[i] != null) {
                ld = LocalDate.of(year, month, calendar[i]);
                strDate = ld.format(FORMATTER);
            }
            calendarDays.add(new Day(i, calendar[i], strDate,ld));
        }

        return calendarDays;
    }
}
