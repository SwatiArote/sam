package cnfd.dummyproject;

/**
 * Created by swati on 17/10/16.
 */
public class RecordOfDay {

    public String getToday() {
        return today;
    }

    public void setToday(String today) {
        this.today = today;
    }


    private String today;
    private   String[] attendance;

    public String[] getAttendance() {
        return attendance;
    }

    public void setAttendance(String[] attendance) {
        this.attendance = attendance;
    }
}