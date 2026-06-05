package mobi.beyondpod.htmlbuilder;

import java.util.List;
import mobi.beyondpod.R;
import mobi.beyondpod.htmlbuilder.TemplateBase;

/* loaded from: classes.dex */
public class ErrorMessageTemplate extends InfoMessageTemplate {
    private static List<TemplateBase.KeyValuePair> _Template;

    public ErrorMessageTemplate(int i) {
        super(i);
    }

    @Override // mobi.beyondpod.htmlbuilder.InfoMessageTemplate, mobi.beyondpod.htmlbuilder.TemplateBase
    public List<TemplateBase.KeyValuePair> template() {
        if (_Template == null) {
            this._TemplateResourceId = R.raw.error_message;
            _Template = loadTemplate();
        }
        return _Template;
    }

    public String getMessage() {
        return this._Parameters.get("#MESSAGE#");
    }

    public void setMessage(String str) {
        this._Parameters.put("#MESSAGE#", str.replace("\n", "<br/>"));
    }
}
