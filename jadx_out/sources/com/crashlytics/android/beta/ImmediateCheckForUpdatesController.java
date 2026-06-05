package com.crashlytics.android.beta;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ImmediateCheckForUpdatesController extends AbstractCheckForUpdatesController {
    @Override // com.crashlytics.android.beta.UpdatesController
    public boolean isActivityLifecycleTriggered() {
        return false;
    }

    public ImmediateCheckForUpdatesController() {
        super(true);
    }
}
