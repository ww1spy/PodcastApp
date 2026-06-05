package mobi.beyondpod.htmlbuilder;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;
import mobi.beyondpod.R;
import mobi.beyondpod.htmlbuilder.TemplateBase;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class InfoMessageTemplate extends TemplateBase {
    private static final String TAG = "InfoMessageTemplate";
    private static List<TemplateBase.KeyValuePair> _Template;

    public InfoMessageTemplate(int i) {
        super(i);
        this._Parameters.put("#SYS_COLOR_A#", Configuration.getContentViewColor());
        this._Parameters.put("#IMAGE_FOLDER#", Configuration.rssTemplatesImagePath());
    }

    @Override // mobi.beyondpod.htmlbuilder.TemplateBase
    public List<TemplateBase.KeyValuePair> template() {
        if (_Template == null) {
            this._TemplateResourceId = R.raw.info_message;
            _Template = loadTemplate();
        }
        return _Template;
    }

    public String getFeedName() {
        return this._Parameters.get("#FEED_NAME#");
    }

    public void setFeedName(String str) {
        this._Parameters.put("#FEED_NAME#", str);
    }

    public boolean saveAsHtml(File file) throws IOException {
        FileOutputStream fileOutputStream;
        OutputStreamWriter outputStreamWriter;
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                outputStreamWriter = new OutputStreamWriter(new BufferedOutputStream(fileOutputStream));
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            toHtml(outputStreamWriter);
            CoreHelper.sync(fileOutputStream);
            fileOutputStream.close();
            if (outputStreamWriter != null) {
                outputStreamWriter.close();
            }
            return true;
        } catch (Exception e2) {
            e = e2;
            outputStreamWriter2 = outputStreamWriter;
            CoreHelper.writeLogEntry(TAG, "Unable to write to " + file + "! reason: " + e);
            if (outputStreamWriter2 == null) {
                return false;
            }
            outputStreamWriter2.close();
            return false;
        } catch (Throwable th2) {
            th = th2;
            outputStreamWriter2 = outputStreamWriter;
            if (outputStreamWriter2 != null) {
                outputStreamWriter2.close();
            }
            throw th;
        }
    }

    public static void refreshTemplate() {
        _Template = null;
    }
}
