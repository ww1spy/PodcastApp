package mobi.beyondpod.htmlbuilder;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public abstract class TemplateBase {
    private static final String TAG = "TemplateBase";
    public static int TemplateTypes_RSS = 1;
    public int TemplateTypes_TTS;
    protected HashMap<String, String> _Parameters;
    protected int _TemplateResourceId;
    protected int _TemplateType;

    public List<KeyValuePair> template() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class KeyValuePair {
        public String key;
        public String value;

        public KeyValuePair(String str, String str2) {
            this.key = str;
            this.value = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TemplateBase(int i) {
        this.TemplateTypes_TTS = 2;
        this._Parameters = new HashMap<>();
        this._TemplateType = TemplateTypes_RSS;
        this._TemplateType = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TemplateBase() {
        this.TemplateTypes_TTS = 2;
        this._Parameters = new HashMap<>();
        this._TemplateType = TemplateTypes_RSS;
    }

    public int templateType() {
        return this._TemplateType;
    }

    public void toHtml(Writer writer) throws IOException {
        applyParameters(writer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<KeyValuePair> loadTemplate() {
        try {
            return parseTemplate(CoreHelper.loadResToString(this._TemplateResourceId));
        } catch (Exception e) {
            CoreHelper.logException(TAG, "template " + this._TemplateResourceId + " does not exist!", e);
            return new ArrayList();
        }
    }

    private static List<KeyValuePair> parseTemplate(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("\\x23[A-Z_]*\\x23", 10).matcher(str);
        int i = 0;
        while (matcher.find()) {
            KeyValuePair keyValuePair = new KeyValuePair(str.substring(i, matcher.start()), matcher.group());
            i = matcher.end();
            arrayList.add(keyValuePair);
        }
        arrayList.add(new KeyValuePair(str.substring(i), null));
        return arrayList;
    }

    protected void applyParameters(Writer writer) throws IOException {
        if (template() == null) {
            writer.write("template file " + this._TemplateResourceId + " does not exist!");
        }
        for (KeyValuePair keyValuePair : template()) {
            if (!StringUtils.isNullOrEmpty(keyValuePair.key)) {
                writer.write(keyValuePair.key);
            }
            if (!StringUtils.isNullOrEmpty(keyValuePair.value) && this._Parameters.containsKey(keyValuePair.value)) {
                writer.write(this._Parameters.get(keyValuePair.value));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeTemplateFor(KeyValuePair keyValuePair, StringBuilder sb) {
        if (!StringUtils.isNullOrEmpty(keyValuePair.key)) {
            sb.append(keyValuePair.key);
        }
        if (StringUtils.isNullOrEmpty(keyValuePair.value)) {
            return;
        }
        writeContentFor(keyValuePair.value, sb);
    }

    protected void writeContentFor(String str, StringBuilder sb) {
        if (StringUtils.isNullOrEmpty(str) || !this._Parameters.containsKey(str)) {
            return;
        }
        sb.append(this._Parameters.get(str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeTemplateFor(KeyValuePair keyValuePair, Writer writer) throws IOException {
        if (!StringUtils.isNullOrEmpty(keyValuePair.key)) {
            writer.write(keyValuePair.key);
        }
        if (StringUtils.isNullOrEmpty(keyValuePair.value)) {
            return;
        }
        writeContentFor(keyValuePair.value, writer);
    }

    protected void writeContentFor(String str, Writer writer) throws IOException {
        if (StringUtils.isNullOrEmpty(str) || !this._Parameters.containsKey(str)) {
            return;
        }
        writer.write(this._Parameters.get(str));
    }
}
