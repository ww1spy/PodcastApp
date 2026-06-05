package mobi.beyondpod.ui.views.notifications;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class Message {
    private static final String EMBEDDED_IMAGE_ALT_MARKER = "#IMGALT#";
    private static final String EMBEDDED_IMAGE_MARKER = "#IMG#";
    public String DismissTitle;
    public int ImageAltResourceId;
    public int ImageResourceId;
    public String MessageText;
    public String MessageTitle;
    public int RepeatInterval;
    public String URL;
    private MessageExpirationPolicy _ExpirationPolicy;

    public Message() {
        this.RepeatInterval = 168;
    }

    public Message(String str) {
        this.RepeatInterval = 168;
        if (StringUtils.isNullOrEmpty(str) || str.startsWith("--")) {
            return;
        }
        String[] split = str.split("\\|");
        if (split.length > 0) {
            this.MessageText = split[0].replace("&lt;", "<").replace("&gt;", ">").replace("\\n", "\n");
        }
        if (split.length > 1) {
            this.URL = split[1];
        }
        if (split.length > 2) {
            this.RepeatInterval = StringUtils.tryParseIntFromString(split[2], 168).intValue();
        }
        if (split.length > 3) {
            this._ExpirationPolicy = MessageExpirationPolicy.buildPolicy(split[3]);
        }
    }

    public int hashCode() {
        return (31 * ((((this.MessageText == null ? 0 : this.MessageText.hashCode()) + 31) * 31) + this.RepeatInterval)) + (this.URL != null ? this.URL.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        if (this.MessageText == null) {
            if (message.MessageText != null) {
                return false;
            }
        } else if (!this.MessageText.equals(message.MessageText)) {
            return false;
        }
        if (this.RepeatInterval != message.RepeatInterval) {
            return false;
        }
        if (this.URL == null) {
            if (message.URL != null) {
                return false;
            }
        } else if (!this.URL.equals(message.URL)) {
            return false;
        }
        return true;
    }

    public boolean hasText() {
        return !StringUtils.isNullOrEmpty(this.MessageText);
    }

    public boolean isExpired() {
        return this._ExpirationPolicy != null && this._ExpirationPolicy.isExpired();
    }

    public String expandURLTokens() {
        return StringUtils.isNullOrEmpty(this.URL) ? "" : this.URL.replace("#BP_VERSION#", Configuration.productVersion());
    }

    public Spannable formattedMessage(Context context) {
        int indexOf;
        int indexOf2;
        SpannableString spannableString = new SpannableString(this.MessageText);
        if (this.ImageResourceId > 0 && (indexOf2 = this.MessageText.indexOf(EMBEDDED_IMAGE_MARKER)) >= 0) {
            spannableString.setSpan(new ImageSpan(context, this.ImageResourceId), indexOf2, EMBEDDED_IMAGE_MARKER.length() + indexOf2, 33);
        }
        if (this.ImageAltResourceId > 0 && (indexOf = this.MessageText.indexOf(EMBEDDED_IMAGE_ALT_MARKER)) >= 0) {
            spannableString.setSpan(new ImageSpan(context, this.ImageAltResourceId), indexOf, EMBEDDED_IMAGE_ALT_MARKER.length() + indexOf, 33);
        }
        return spannableString;
    }
}
