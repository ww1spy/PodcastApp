package mobi.beyondpod.ui.views;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.RssFeedUpdateManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class UpdateAndDownloadQueueViewAdapter extends BaseAdapter {
    private LayoutInflater _Inflater;
    ArrayList<QueueListDataItem> _Items = new ArrayList<>();
    UpdateAndDownloadQueueActivityDialog _Owner;
    private static final String UPDATING = CoreHelper.loadResourceString(R.string.update_and_download_queue_updating);
    private static final String UPDATING_S = CoreHelper.loadResourceString(R.string.update_and_download_updating_s);
    private static final String DOWNLOADED = CoreHelper.loadResourceString(R.string.update_and_download_queue_downloaded);
    private static final String CONNECTING = CoreHelper.loadResourceString(R.string.update_and_download_queue_connecting);
    private static StringBuilder sInfoTextStringBuilder = new StringBuilder();
    private static Formatter sInfoTextFormatter = new Formatter(sInfoTextStringBuilder, Locale.getDefault());

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    public UpdateAndDownloadQueueViewAdapter(UpdateAndDownloadQueueActivityDialog updateAndDownloadQueueActivityDialog) {
        this._Owner = updateAndDownloadQueueActivityDialog;
        this._Inflater = LayoutInflater.from(updateAndDownloadQueueActivityDialog);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this._Items.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i < getCount()) {
            return this._Items.get(i);
        }
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        QueueListDataItem queueListDataItem = this._Items.get(i);
        return (queueListDataItem.Feed == null && queueListDataItem.Enclosure == null) ? -1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        r0 = r5._Inflater.inflate(mobi.beyondpod.R.layout.update_queue_view_item, (android.view.ViewGroup) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
    
        r7 = new mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter.QueueListViewItem(r2);
        r7.PrimaryText = (android.widget.TextView) r0.findViewById(mobi.beyondpod.R.id.queuePrimaryText);
        r7.SecondaryText = (android.widget.TextView) r0.findViewById(mobi.beyondpod.R.id.queueSecondaryText);
        r7.ProgressText = (android.widget.TextView) r0.findViewById(mobi.beyondpod.R.id.queueProgressText);
        r7.Progress = (android.widget.ProgressBar) r0.findViewById(mobi.beyondpod.R.id.queueProgress);
        r7.Progress.setMax(100);
        r7.Progress.setProgress(0);
        r7.RemoveFromQueueBtn = (android.widget.ImageView) r0.findViewById(mobi.beyondpod.R.id.btnQueueRemoveFromQueue);
        r0.setTag(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a4, code lost:
    
        r6 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a5, code lost:
    
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b6, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b9, code lost:
    
        return r7;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            r5 = this;
            java.util.ArrayList<mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter$QueueListDataItem> r0 = r5._Items
            java.lang.Object r6 = r0.get(r6)
            mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter$QueueListDataItem r6 = (mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter.QueueListDataItem) r6
            mobi.beyondpod.downloadengine.EnclosureDownloadManager$DownloadableEnclosure r0 = r6.Enclosure     // Catch: java.lang.Exception -> Lb5
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L4d
            mobi.beyondpod.rsscore.Feed r0 = r6.Feed     // Catch: java.lang.Exception -> Lb5
            if (r0 == 0) goto L13
            goto L4d
        L13:
            if (r7 != 0) goto L1f
            android.view.LayoutInflater r6 = r5._Inflater     // Catch: java.lang.Exception -> Lb5
            r8 = 2131493073(0x7f0c00d1, float:1.8609616E38)
            android.view.View r6 = r6.inflate(r8, r2)     // Catch: java.lang.Exception -> Lb5
            r7 = r6
        L1f:
            r6 = 2131296930(0x7f0902a2, float:1.821179E38)
            android.view.View r6 = r7.findViewById(r6)     // Catch: java.lang.Exception -> Lb5
            android.widget.TextView r6 = (android.widget.TextView) r6     // Catch: java.lang.Exception -> Lb5
            r8 = 2131296725(0x7f0901d5, float:1.8211375E38)
            android.view.View r8 = r7.findViewById(r8)     // Catch: java.lang.Exception -> Lb5
            boolean r0 = mobi.beyondpod.downloadengine.UpdateAndDownloadManager.hasWorkToDo()     // Catch: java.lang.Exception -> Lb5
            if (r0 == 0) goto L40
            r0 = 2131756039(0x7f100407, float:1.9142974E38)
            r6.setText(r0)     // Catch: java.lang.Exception -> Lb5
            r8.setVisibility(r1)     // Catch: java.lang.Exception -> Lb5
            goto Lb9
        L40:
            r0 = 2131756040(0x7f100408, float:1.9142976E38)
            r6.setText(r0)     // Catch: java.lang.Exception -> Lb5
            r6 = 8
            r8.setVisibility(r6)     // Catch: java.lang.Exception -> Lb5
            goto Lb9
        L4d:
            if (r7 != 0) goto La7
            android.view.LayoutInflater r0 = r5._Inflater     // Catch: java.lang.Exception -> Lb5
            r3 = 2131493074(0x7f0c00d2, float:1.8609618E38)
            android.view.View r0 = r0.inflate(r3, r2)     // Catch: java.lang.Exception -> Lb5
            mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter$QueueListViewItem r7 = new mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter$QueueListViewItem     // Catch: java.lang.Exception -> La4
            r7.<init>()     // Catch: java.lang.Exception -> La4
            r2 = 2131296750(0x7f0901ee, float:1.8211425E38)
            android.view.View r2 = r0.findViewById(r2)     // Catch: java.lang.Exception -> La4
            android.widget.TextView r2 = (android.widget.TextView) r2     // Catch: java.lang.Exception -> La4
            r7.PrimaryText = r2     // Catch: java.lang.Exception -> La4
            r2 = 2131296753(0x7f0901f1, float:1.8211432E38)
            android.view.View r2 = r0.findViewById(r2)     // Catch: java.lang.Exception -> La4
            android.widget.TextView r2 = (android.widget.TextView) r2     // Catch: java.lang.Exception -> La4
            r7.SecondaryText = r2     // Catch: java.lang.Exception -> La4
            r2 = 2131296752(0x7f0901f0, float:1.821143E38)
            android.view.View r2 = r0.findViewById(r2)     // Catch: java.lang.Exception -> La4
            android.widget.TextView r2 = (android.widget.TextView) r2     // Catch: java.lang.Exception -> La4
            r7.ProgressText = r2     // Catch: java.lang.Exception -> La4
            r2 = 2131296751(0x7f0901ef, float:1.8211428E38)
            android.view.View r2 = r0.findViewById(r2)     // Catch: java.lang.Exception -> La4
            android.widget.ProgressBar r2 = (android.widget.ProgressBar) r2     // Catch: java.lang.Exception -> La4
            r7.Progress = r2     // Catch: java.lang.Exception -> La4
            android.widget.ProgressBar r2 = r7.Progress     // Catch: java.lang.Exception -> La4
            r3 = 100
            r2.setMax(r3)     // Catch: java.lang.Exception -> La4
            android.widget.ProgressBar r2 = r7.Progress     // Catch: java.lang.Exception -> La4
            r2.setProgress(r1)     // Catch: java.lang.Exception -> La4
            r1 = 2131296352(0x7f090060, float:1.8210618E38)
            android.view.View r1 = r0.findViewById(r1)     // Catch: java.lang.Exception -> La4
            android.widget.ImageView r1 = (android.widget.ImageView) r1     // Catch: java.lang.Exception -> La4
            r7.RemoveFromQueueBtn = r1     // Catch: java.lang.Exception -> La4
            r0.setTag(r7)     // Catch: java.lang.Exception -> La4
            goto Lb0
        La4:
            r6 = move-exception
            r7 = r0
            goto Lb6
        La7:
            java.lang.Object r0 = r7.getTag()     // Catch: java.lang.Exception -> Lb5
            mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter$QueueListViewItem r0 = (mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter.QueueListViewItem) r0     // Catch: java.lang.Exception -> Lb5
            r4 = r0
            r0 = r7
            r7 = r4
        Lb0:
            r5.BuildViewItem(r7, r6, r8)     // Catch: java.lang.Exception -> La4
            r7 = r0
            goto Lb9
        Lb5:
            r6 = move-exception
        Lb6:
            r6.printStackTrace()
        Lb9:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    private void BuildViewItem(QueueListViewItem queueListViewItem, QueueListDataItem queueListDataItem, ViewGroup viewGroup) {
        String str;
        CharSequence localFileName;
        String str2;
        sInfoTextStringBuilder.setLength(0);
        queueListViewItem.RemoveFromQueueBtn.setOnClickListener(this._Owner);
        queueListViewItem.RemoveFromQueueBtn.setTag(queueListDataItem);
        if (queueListDataItem.Enclosure != null) {
            TextView textView = queueListViewItem.PrimaryText;
            if (queueListDataItem.Enclosure.enclosure.Parent != null) {
                localFileName = queueListDataItem.Enclosure.enclosure.Parent.Title;
            } else {
                localFileName = queueListDataItem.Enclosure.enclosure.TempTitle != null ? queueListDataItem.Enclosure.enclosure.TempTitle : queueListDataItem.Enclosure.enclosure.localFileName();
            }
            textView.setText(localFileName);
            queueListViewItem.SecondaryText.setVisibility(0);
            queueListViewItem.RemoveFromQueueBtn.setVisibility(0);
            TextView textView2 = queueListViewItem.SecondaryText;
            StringBuilder sb = new StringBuilder();
            sb.append(queueListDataItem.Enclosure.feed.getName());
            if (queueListDataItem.Enclosure.enclosure.enclosureFileLength() == null || queueListDataItem.Enclosure.enclosure.enclosureFileLength().longValue() == 0) {
                str2 = "";
            } else {
                str2 = " - " + queueListDataItem.Enclosure.enclosure.enclosureSizeAsString();
            }
            sb.append(str2);
            textView2.setText(sb.toString());
            if (queueListDataItem.Enclosure.enclosure.playableState() == 5) {
                queueListViewItem.Progress.setVisibility(0);
                queueListViewItem.ProgressText.setVisibility(0);
                Track localEnclosureTrack = queueListDataItem.Enclosure.enclosure.getLocalEnclosureTrack();
                if (localEnclosureTrack != null) {
                    if (localEnclosureTrack.getDownloadedPortion() == 0) {
                        queueListViewItem.Progress.setIndeterminate(true);
                        queueListViewItem.ProgressText.setText(CONNECTING);
                    } else {
                        queueListViewItem.Progress.setIndeterminate(false);
                        queueListViewItem.Progress.setProgress((int) localEnclosureTrack.getDownloadPercent());
                        queueListViewItem.ProgressText.setText(String.format("%s %s%% of %s", DOWNLOADED, Integer.valueOf((int) localEnclosureTrack.getDownloadPercent()), CoreHelper.getFileLengthAsString(Long.valueOf(localEnclosureTrack.getDownloadSize()))));
                    }
                }
            } else if (EnclosureDownloadManager.isDownloadPending(queueListDataItem.Enclosure.enclosure)) {
                queueListViewItem.ProgressText.setVisibility(8);
                queueListViewItem.Progress.setVisibility(8);
            }
        }
        if (queueListDataItem.Feed != null) {
            queueListViewItem.PrimaryText.setText(queueListDataItem.Feed.getName());
            queueListViewItem.SecondaryText.setVisibility(8);
            queueListViewItem.RemoveFromQueueBtn.setVisibility(8);
            if (RssFeedUpdateManager.isUpdating() && RssFeedUpdateManager.currentFeed() == queueListDataItem.Feed) {
                queueListViewItem.ProgressText.setVisibility(0);
                queueListViewItem.Progress.setVisibility(0);
                if (queueListDataItem.Feed.getUpdateSize() <= 0) {
                    queueListViewItem.Progress.setIndeterminate(true);
                    if (queueListDataItem.Feed.getUpdatedPortion() == 0) {
                        str = CONNECTING;
                    } else {
                        str = sInfoTextFormatter.format(UPDATING_S, CoreHelper.getFileLengthAsString(Long.valueOf(queueListDataItem.Feed.getUpdatedPortion()))).toString();
                    }
                } else {
                    String formatter = sInfoTextFormatter.format("%s %s%% of %s", UPDATING, Integer.valueOf(queueListDataItem.Feed.updatePercent()), CoreHelper.getFileLengthAsString(Long.valueOf(queueListDataItem.Feed.getUpdateSize()))).toString();
                    queueListViewItem.Progress.setIndeterminate(false);
                    queueListViewItem.Progress.setProgress(queueListDataItem.Feed.updatePercent());
                    str = formatter;
                }
                queueListViewItem.ProgressText.setText(str);
                return;
            }
            queueListViewItem.ProgressText.setVisibility(8);
            queueListViewItem.Progress.setVisibility(8);
        }
    }

    public void Clear() {
        this._Items.clear();
    }

    public EnclosureDownloadManager.DownloadableEnclosure getEnclosureAt(int i) {
        Object item = getItem(i);
        if (item != null) {
            return ((QueueListDataItem) item).Enclosure;
        }
        return null;
    }

    public Feed getFeedAt(int i) {
        Object item = getItem(i);
        if (item != null) {
            return ((QueueListDataItem) item).Feed;
        }
        return null;
    }

    public void Refresh() {
        this._Items.clear();
        if (UpdateAndDownloadManager.hasWorkToDo() || EnclosureDownloadManager.queueCount() > 0) {
            Iterator<Feed> it = RssFeedUpdateManager.updateQueue().iterator();
            while (it.hasNext()) {
                this._Items.add(new QueueListDataItem(it.next(), null));
            }
            Iterator<EnclosureDownloadManager.DownloadableEnclosure> it2 = EnclosureDownloadManager.downloadQueue().iterator();
            while (it2.hasNext()) {
                this._Items.add(new QueueListDataItem(null, it2.next()));
            }
        }
        if (this._Items.size() == 0) {
            this._Items.add(new QueueListDataItem(null, null));
        }
        notifyDataSetChanged();
    }

    /* loaded from: classes.dex */
    public static class QueueListDataItem {
        EnclosureDownloadManager.DownloadableEnclosure Enclosure;
        Feed Feed;

        public QueueListDataItem(Feed feed, EnclosureDownloadManager.DownloadableEnclosure downloadableEnclosure) {
            this.Feed = feed;
            this.Enclosure = downloadableEnclosure;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class QueueListViewItem {
        TextView PrimaryText;
        ProgressBar Progress;
        TextView ProgressText;
        ImageView RemoveFromQueueBtn;
        TextView SecondaryText;

        private QueueListViewItem() {
        }
    }
}
