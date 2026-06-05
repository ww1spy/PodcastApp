package mobi.beyondpod.ui.dialogs;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import java.util.Arrays;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.ui.views.player.charms.CharmPopUpBase;

/* loaded from: classes.dex */
public class FontBackgroundSettingsPopUp extends CharmPopUpBase {
    static final String dialogTitle = "Display Settings";
    private Button _BGDarkButton;
    private Button _BGSepiaButton;
    private Button _BGWhiteButton;
    private FontBackgroundSettingsChangedListener _FontBackgroundSettingsChangedListener;
    private TextSwitcher _FontSizeSwitcher;
    private Animation _InMin;
    private Animation _InPlus;
    private ImageView _MinusButton;
    private View.OnClickListener _OnBackgroundColorChanged;
    private View.OnClickListener _OnMinusListener;
    private View.OnClickListener _OnPlusListener;
    private Animation _OutMin;
    private Animation _OutPlus;
    private ImageView _PlusButton;
    private int _SavedBackgroundColorIndex;
    private int _SavedFontSizeIndex;
    private String[] backgroundColorText;
    private String[] fontSizeText;

    /* loaded from: classes.dex */
    public interface FontBackgroundSettingsChangedListener extends CharmPopUpBase.CharmListener {
        void onFontSizeBackgroundColorChanged(String str, String str2);
    }

    public FontBackgroundSettingsPopUp(final Context context, FontBackgroundSettingsChangedListener fontBackgroundSettingsChangedListener) {
        super(context, R.layout.font_size_background_color_selector_popup, fontBackgroundSettingsChangedListener);
        this._OnBackgroundColorChanged = new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.FontBackgroundSettingsPopUp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Button button = (Button) view;
                if (button.getText().toString().equals(FontBackgroundSettingsPopUp.this.backgroundColorText[0])) {
                    FontBackgroundSettingsPopUp.this._SavedBackgroundColorIndex = 0;
                } else if (button.getText().toString().equals(FontBackgroundSettingsPopUp.this.backgroundColorText[1])) {
                    FontBackgroundSettingsPopUp.this._SavedBackgroundColorIndex = 1;
                } else if (button.getText().toString().equals(FontBackgroundSettingsPopUp.this.backgroundColorText[2])) {
                    FontBackgroundSettingsPopUp.this._SavedBackgroundColorIndex = 2;
                }
                if (FontBackgroundSettingsPopUp.this._FontBackgroundSettingsChangedListener != null) {
                    FontBackgroundSettingsPopUp.this._FontBackgroundSettingsChangedListener.onFontSizeBackgroundColorChanged(Configuration.contentFontSizes[FontBackgroundSettingsPopUp.this._SavedFontSizeIndex], Configuration.contentThemes[FontBackgroundSettingsPopUp.this._SavedBackgroundColorIndex]);
                }
            }
        };
        this._OnPlusListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.FontBackgroundSettingsPopUp.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FontBackgroundSettingsPopUp.this.increaseFontSize();
            }
        };
        this._OnMinusListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.FontBackgroundSettingsPopUp.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FontBackgroundSettingsPopUp.this.decreaseFontSize();
            }
        };
        getContentView().setOnClickListener(null);
        this._FontBackgroundSettingsChangedListener = fontBackgroundSettingsChangedListener;
        View contentView = getContentView();
        this.fontSizeText = context.getResources().getStringArray(R.array.settings_contentFontSize_text);
        this._SavedFontSizeIndex = Arrays.asList(Configuration.contentFontSizes).indexOf(Configuration.getDefaultDocFontSize());
        if (this._SavedFontSizeIndex < 0) {
            this._SavedFontSizeIndex = 2;
        }
        this.backgroundColorText = context.getResources().getStringArray(R.array.settings_screen_item_content_view_theme_text);
        this._SavedBackgroundColorIndex = Arrays.asList(Configuration.contentThemes).indexOf(Configuration.contentTheme());
        if (this._SavedBackgroundColorIndex < 0) {
            this._SavedBackgroundColorIndex = 0;
        }
        this._PlusButton = (ImageView) contentView.findViewById(R.id.sp_buttonPlus);
        this._MinusButton = (ImageView) contentView.findViewById(R.id.sp_buttonMinus);
        this._FontSizeSwitcher = (TextSwitcher) contentView.findViewById(R.id.font_size_info);
        this._FontSizeSwitcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: mobi.beyondpod.ui.dialogs.FontBackgroundSettingsPopUp.4
            @Override // android.widget.ViewSwitcher.ViewFactory
            public View makeView() {
                TextView textView = new TextView(context);
                textView.setGravity(1);
                textView.setTextSize(18.0f);
                textView.setTextColor(-1);
                return textView;
            }
        });
        this._FontSizeSwitcher.setCurrentText(this.fontSizeText[this._SavedFontSizeIndex]);
        this._InPlus = AnimationUtils.loadAnimation(context, R.anim.slide_in_plus);
        this._OutPlus = AnimationUtils.loadAnimation(context, R.anim.slide_out_plus);
        this._InMin = AnimationUtils.loadAnimation(context, R.anim.slide_in_minus);
        this._OutMin = AnimationUtils.loadAnimation(context, R.anim.slide_out_minus);
        this._PlusButton.setOnClickListener(this._OnPlusListener);
        this._MinusButton.setOnClickListener(this._OnMinusListener);
        this._BGWhiteButton = (Button) contentView.findViewById(R.id.bg_light);
        this._BGWhiteButton.setOnClickListener(this._OnBackgroundColorChanged);
        this._BGWhiteButton.setText(this.backgroundColorText[0]);
        this._BGWhiteButton.setBackgroundColor(-1);
        this._BGSepiaButton = (Button) contentView.findViewById(R.id.bg_sepia);
        this._BGSepiaButton.setOnClickListener(this._OnBackgroundColorChanged);
        this._BGSepiaButton.setText(this.backgroundColorText[1]);
        this._BGSepiaButton.setBackgroundColor(Configuration.CONTENT_THEME_BG_COLOR_SEPIA);
        this._BGDarkButton = (Button) contentView.findViewById(R.id.bg_dark);
        this._BGDarkButton.setOnClickListener(this._OnBackgroundColorChanged);
        this._BGDarkButton.setText(this.backgroundColorText[2]);
        this._BGDarkButton.setBackgroundColor(-16777216);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void increaseFontSize() {
        if (this._SavedFontSizeIndex <= 0) {
            return;
        }
        this._FontSizeSwitcher.setInAnimation(this._InPlus);
        this._FontSizeSwitcher.setOutAnimation(this._OutPlus);
        this._SavedFontSizeIndex--;
        updateFontsize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decreaseFontSize() {
        if (this._SavedFontSizeIndex >= Configuration.contentFontSizes.length - 1) {
            return;
        }
        this._FontSizeSwitcher.setInAnimation(this._InMin);
        this._FontSizeSwitcher.setOutAnimation(this._OutMin);
        this._SavedFontSizeIndex++;
        updateFontsize();
    }

    protected void updateFontsize() {
        this._FontSizeSwitcher.setText(this.fontSizeText[this._SavedFontSizeIndex]);
        if (this._FontBackgroundSettingsChangedListener != null) {
            this._FontBackgroundSettingsChangedListener.onFontSizeBackgroundColorChanged(Configuration.contentFontSizes[this._SavedFontSizeIndex], Configuration.contentThemes[this._SavedBackgroundColorIndex]);
        }
    }
}
