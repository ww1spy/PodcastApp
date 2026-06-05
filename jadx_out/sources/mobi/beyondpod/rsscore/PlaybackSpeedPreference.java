package mobi.beyondpod.rsscore;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.DialogPreference;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class PlaybackSpeedPreference extends DialogPreference {
    int _DefaultSpeed;
    PlaybackSpeedControl _PlaybackSpeed;
    int _Speed;

    public PlaybackSpeedPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setDialogLayoutResource(R.layout.playback_speed_preference);
    }

    public PlaybackSpeedPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setDialogLayoutResource(R.layout.playback_speed_preference);
    }

    @Override // android.preference.DialogPreference
    protected View onCreateDialogView() {
        View onCreateDialogView = super.onCreateDialogView();
        this._PlaybackSpeed = new PlaybackSpeedControl(onCreateDialogView);
        setPersistent(true);
        return onCreateDialogView;
    }

    @Override // android.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        int round = Math.round(StringUtils.safeParseFloat(z ? getPersistedString((String) obj) : (String) obj, 1.0f) * 100.0f);
        this._DefaultSpeed = round;
        this._Speed = round;
    }

    @Override // android.preference.DialogPreference
    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        this._PlaybackSpeed.initialize(this._Speed);
    }

    @Override // android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        super.onDialogClosed(z);
        if (z) {
            String valueOf = String.valueOf(this._PlaybackSpeed.getSelectedSpeed() / 100.0f);
            if (callChangeListener(valueOf)) {
                persistString(valueOf);
                int selectedSpeed = this._PlaybackSpeed.getSelectedSpeed();
                this._Speed = selectedSpeed;
                this._DefaultSpeed = selectedSpeed;
                return;
            }
            return;
        }
        this._Speed = this._DefaultSpeed;
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (this._PlaybackSpeed == null) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.value = this._PlaybackSpeed.getSelectedSpeed();
        return savedState;
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this._Speed = savedState.value;
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: mobi.beyondpod.rsscore.PlaybackSpeedPreference.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int value;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.value = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.value);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
