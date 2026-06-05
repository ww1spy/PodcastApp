package mobi.beyondpod.htmlbuilder;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.htmlbuilder.TemplateBase;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class FeedContentItemTemplate extends TemplateBase {
    private static final String TAG = "FeedContentItemTemplate";
    private static List<TemplateBase.KeyValuePair> m_Template;
    public String itemContent;
    public String itemLink;
    public String itemPubDate;
    public CharSequence itemTitle;
    public String originatingFeed;

    @Override // mobi.beyondpod.htmlbuilder.TemplateBase
    public List<TemplateBase.KeyValuePair> template() {
        if (m_Template == null) {
            if (this._TemplateResourceId == 0) {
                this._TemplateResourceId = R.raw.rss_feed_content_item;
            }
            m_Template = loadTemplate();
        }
        return m_Template;
    }

    public void switchTemplateResourceTo(int i) {
        if (this._TemplateResourceId == i) {
            return;
        }
        this._TemplateResourceId = i;
        if (m_Template != null) {
            m_Template.clear();
        }
        m_Template = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
    /* JADX WARN: Type inference failed for: r5v0, types: [mobi.beyondpod.htmlbuilder.FeedContentItemTemplate] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.OutputStreamWriter] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean saveAsHtml(java.io.File r6) throws java.lang.Exception {
        /*
            r5 = this;
            java.lang.String r0 = mobi.beyondpod.htmlbuilder.FeedContentItemTemplate.TAG
            java.lang.String r1 = "Generating feed HTML..."
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r1)
            r0 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4c
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4c
            java.io.OutputStreamWriter r6 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4c
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4c
            r3 = 8192(0x2000, float:1.148E-41)
            r2.<init>(r1, r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4c
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4c
            java.util.List r0 = r5.template()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
        L21:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
            if (r2 == 0) goto L31
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
            mobi.beyondpod.htmlbuilder.TemplateBase$KeyValuePair r2 = (mobi.beyondpod.htmlbuilder.TemplateBase.KeyValuePair) r2     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
            r5.writeTemplateFor(r2, r6)     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
            goto L21
        L31:
            mobi.beyondpod.rsscore.helpers.CoreHelper.sync(r1)     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
            r6.close()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L6b
            r0 = 1
            if (r6 == 0) goto L3d
            r6.close()
        L3d:
            java.lang.String r6 = mobi.beyondpod.htmlbuilder.FeedContentItemTemplate.TAG
            java.lang.String r1 = "DONE Generating feed HTML!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r6, r1)
            return r0
        L45:
            r0 = move-exception
            goto L50
        L47:
            r6 = move-exception
            r4 = r0
            r0 = r6
            r6 = r4
            goto L6c
        L4c:
            r6 = move-exception
            r4 = r0
            r0 = r6
            r6 = r4
        L50:
            java.lang.Exception r1 = new java.lang.Exception     // Catch: java.lang.Throwable -> L6b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6b
            r2.<init>()     // Catch: java.lang.Throwable -> L6b
            java.lang.String r3 = "Error loading feed Content! reason: "
            r2.append(r3)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r3 = r0.getMessage()     // Catch: java.lang.Throwable -> L6b
            r2.append(r3)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L6b
            r1.<init>(r2, r0)     // Catch: java.lang.Throwable -> L6b
            throw r1     // Catch: java.lang.Throwable -> L6b
        L6b:
            r0 = move-exception
        L6c:
            if (r6 == 0) goto L71
            r6.close()
        L71:
            java.lang.String r6 = mobi.beyondpod.htmlbuilder.FeedContentItemTemplate.TAG
            java.lang.String r1 = "DONE Generating feed HTML!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r6, r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.htmlbuilder.FeedContentItemTemplate.saveAsHtml(java.io.File):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // mobi.beyondpod.htmlbuilder.TemplateBase
    protected void writeContentFor(String str, Writer writer) throws IOException {
        char c;
        switch (str.hashCode()) {
            case -2007986957:
                if (str.equals("#DOCUMENT_FONT_SIZE#")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1817983222:
                if (str.equals("#ITEM_PUB_DATE#")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1329166510:
                if (str.equals("#FEEDITEM_DESCRIPTION#")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 44634747:
                if (str.equals("#H_MARGIN#")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 347682708:
                if (str.equals("#ITEM_TITLE#")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 510076041:
                if (str.equals("#V_MARGIN#")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 973652896:
                if (str.equals("#ITEM_LINK#")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1067682032:
                if (str.equals("#ITEM_ORIG_FEED#")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2065786043:
                if (str.equals("#DOCUMENT_THEME#")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                if (StringUtils.isNullOrEmpty(Configuration.getDefaultDocFontSize())) {
                    writer.write("medium");
                    return;
                } else {
                    writer.write(Configuration.getDefaultDocFontSize());
                    return;
                }
            case 1:
                writer.write(Configuration.contentTheme());
                return;
            case 2:
                writer.write(this.itemContent);
                return;
            case 3:
                writer.write(this.itemTitle.toString());
                return;
            case 4:
                writer.write(this.itemPubDate);
                return;
            case 5:
                writer.write(this.originatingFeed);
                return;
            case 6:
                writer.write(this.itemLink);
                return;
            case 7:
                writer.write(Integer.toString(BeyondPodApplication.getInstance().getResources().getInteger(R.integer.FeedContentItemTemplate_V_Margin)));
                return;
            case '\b':
                writer.write(Integer.toString(BeyondPodApplication.getInstance().getResources().getInteger(R.integer.FeedContentItemTemplate_V_Margin)));
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // mobi.beyondpod.htmlbuilder.TemplateBase
    protected void writeContentFor(String str, StringBuilder sb) {
        char c;
        switch (str.hashCode()) {
            case -2007986957:
                if (str.equals("#DOCUMENT_FONT_SIZE#")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1817983222:
                if (str.equals("#ITEM_PUB_DATE#")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1329166510:
                if (str.equals("#FEEDITEM_DESCRIPTION#")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 44634747:
                if (str.equals("#H_MARGIN#")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 347682708:
                if (str.equals("#ITEM_TITLE#")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 510076041:
                if (str.equals("#V_MARGIN#")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 973652896:
                if (str.equals("#ITEM_LINK#")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1067682032:
                if (str.equals("#ITEM_ORIG_FEED#")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2065786043:
                if (str.equals("#DOCUMENT_THEME#")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                if (StringUtils.isNullOrEmpty(Configuration.getDefaultDocFontSize())) {
                    sb.append("medium");
                    return;
                } else {
                    sb.append(Configuration.getDefaultDocFontSize());
                    return;
                }
            case 1:
                sb.append(Configuration.contentTheme());
                return;
            case 2:
                sb.append(this.itemContent);
                return;
            case 3:
                sb.append(this.itemTitle.toString());
                return;
            case 4:
                sb.append(this.itemPubDate);
                return;
            case 5:
                sb.append(this.originatingFeed);
                return;
            case 6:
                sb.append(this.itemLink);
                return;
            case 7:
                sb.append(BeyondPodApplication.getInstance().getResources().getInteger(R.integer.FeedContentItemTemplate_V_Margin));
                return;
            case '\b':
                sb.append(BeyondPodApplication.getInstance().getResources().getInteger(R.integer.FeedContentItemTemplate_V_Margin));
                return;
            default:
                return;
        }
    }

    public static void refreshTemplate() {
        m_Template = null;
    }

    public String toHtml() {
        CoreHelper.writeTraceEntry(TAG, "Generating Post HTML...");
        StringBuilder sb = new StringBuilder((this.itemContent == null ? 0 : this.itemContent.length()) + IHttpClient.SC_INTERNAL_SERVER_ERROR);
        Iterator<TemplateBase.KeyValuePair> it = template().iterator();
        while (it.hasNext()) {
            writeTemplateFor(it.next(), sb);
        }
        CoreHelper.writeTraceEntry(TAG, "DONE Generating Post HTML!");
        return sb.toString();
    }
}
