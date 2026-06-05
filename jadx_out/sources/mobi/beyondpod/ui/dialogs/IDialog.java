package mobi.beyondpod.ui.dialogs;

import android.app.Dialog;

/* loaded from: classes.dex */
public interface IDialog {
    Dialog createDialog();

    int dialogID();

    void prepareDialog(Dialog dialog);
}
