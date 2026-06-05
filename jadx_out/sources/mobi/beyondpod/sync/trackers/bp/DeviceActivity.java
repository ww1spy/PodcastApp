package mobi.beyondpod.sync.trackers.bp;

import java.util.Date;

/* loaded from: classes.dex */
public class DeviceActivity {
    private String data;
    private Date dateTime;
    private String device;
    private String type;

    public String getDevice() {
        return this.device;
    }

    public void setDevice(String str) {
        this.device = str;
    }

    public Date getDateTime() {
        return this.dateTime;
    }

    public void setDateTime(Date date) {
        this.dateTime = date;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String str) {
        this.data = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }
}
