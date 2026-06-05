package mobi.beyondpod.ui.views.impexp;

import android.content.Context;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.InertCheckBox;

/* loaded from: classes.dex */
public class OpmlListViewAdapter extends BaseAdapter {
    static Typeface PrimaryBold;
    static Typeface PrimaryNormal;
    private Feed _Feed;
    private CharSequence _IfEmptyText;
    private LayoutInflater _Inflater;
    private ListView _Owner;
    private static final String IN_S = CoreHelper.loadResourceString(R.string.opml_view_adapter_in_s);
    private static final String SUBSCRIBED = CoreHelper.loadResourceString(R.string.opml_view_adapter_subscribed);
    private static final String BACK_TO_S = CoreHelper.loadResourceString(R.string.opml_view_adapter_back_to_s);
    private static final String GO_BACK = CoreHelper.loadResourceString(R.string.opml_view_adapter_go_back);
    private static final String ITEMS = CoreHelper.loadResourceString(R.string.opml_view_adapter_items);
    ArrayList<Feed> _Items = new ArrayList<>();
    View.OnClickListener _ItemPreviewListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewAdapter.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Feed feed = (Feed) view.getTag();
            if (feed != null) {
                CommandManager.cmdOpenFeedPreview(feed.getFeedUri(), feed.getName(), null, feed.isGReaderFeed());
            }
        }
    };

    public boolean areAllItemsSelectable() {
        return false;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    public OpmlListViewAdapter(Context context, ListView listView) {
        this._Inflater = LayoutInflater.from(context);
        this._Owner = listView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class OpmlViewItem {
        CheckBox itemCheck;
        View preview;
        TextView primaryText;
        ImageView secondaryImage;
        TextView secondaryText;

        private OpmlViewItem() {
        }
    }

    public void setIfEmptyText(CharSequence charSequence) {
        this._IfEmptyText = charSequence;
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

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this._Items.get(i) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Feed getRootFeed() {
        return this._Feed;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        OpmlViewItem opmlViewItem;
        try {
            if (this._Items.get(i) != null) {
                if (view == null) {
                    view2 = this._Inflater.inflate(R.layout.opml_list_view_item, (ViewGroup) null);
                    try {
                        opmlViewItem = new OpmlViewItem();
                        opmlViewItem.primaryText = (TextView) view2.findViewById(R.id.feedPrimaryText);
                        opmlViewItem.secondaryText = (TextView) view2.findViewById(R.id.feedSecondaryText);
                        opmlViewItem.itemCheck = (InertCheckBox) view2.findViewById(R.id.feedCheckbox);
                        opmlViewItem.preview = view2.findViewById(R.id.preview);
                        opmlViewItem.secondaryImage = (ImageView) view2.findViewById(R.id.feedFolderIcon);
                        view2.setTag(opmlViewItem);
                        if (PrimaryNormal == null) {
                            PrimaryNormal = opmlViewItem.primaryText.getTypeface();
                            PrimaryBold = Typeface.create(PrimaryNormal, 1);
                        }
                    } catch (Exception e) {
                        e = e;
                        view = view2;
                        e.printStackTrace();
                        return view;
                    }
                } else {
                    view2 = view;
                    opmlViewItem = (OpmlViewItem) view.getTag();
                }
                buildViewItem(opmlViewItem, i);
                return view2;
            }
            if (view == null) {
                view = this._Inflater.inflate(R.layout.list_view_empty_view, (ViewGroup) null);
            }
            ((TextView) view).setText(this._IfEmptyText);
            return view;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public boolean isFeedImportable(Feed feed) {
        return FeedRepository.getFeedByUrl(feed.getFeedUrl()) == null && feed.subFeeds().size() == 0 && !feed.equals(FeedRepository.getGoUpPlaceholder());
    }

    private OpmlViewItem buildViewItem(OpmlViewItem opmlViewItem, int i) {
        String str;
        Feed feed = this._Items.get(i);
        opmlViewItem.primaryText.setText(feed.getName());
        int size = feed.subFeeds().size();
        TextView textView = opmlViewItem.secondaryText;
        if (size > 0) {
            str = size + " " + ITEMS;
        } else {
            str = "";
        }
        textView.setText(str);
        opmlViewItem.itemCheck.setVisibility(isFeedImportable(feed) ? 0 : 8);
        opmlViewItem.secondaryImage.setVisibility(4);
        opmlViewItem.preview.setOnClickListener(null);
        opmlViewItem.preview.setTag(null);
        opmlViewItem.preview.setVisibility(4);
        if (feed.equals(FeedRepository.getGoUpPlaceholder())) {
            opmlViewItem.secondaryImage.setImageResource(R.drawable.ic_action_undo);
            opmlViewItem.secondaryImage.setVisibility(0);
            opmlViewItem.primaryText.setText(StringUtils.isNullOrEmpty(this._Feed.parentFeed().getName()) ? GO_BACK : String.format(BACK_TO_S, this._Feed.parentFeed().getName()));
            opmlViewItem.primaryText.setTypeface(PrimaryNormal);
        } else if (size == 0) {
            Feed feedByUrl = FeedRepository.getFeedByUrl(feed.getFeedUrl());
            if (feedByUrl != null) {
                String name = feedByUrl.getCategories().getPrimary().name();
                String name2 = feedByUrl.getCategories().getSecondary().name();
                String name3 = CategoryManager.Unassigned.name();
                if (!name3.equals(name)) {
                    name2 = name;
                } else if (name3.equals(name2)) {
                    name2 = name3;
                }
                opmlViewItem.secondaryText.setText(name2.equals(name3) ? SUBSCRIBED : String.format(IN_S, name2));
                opmlViewItem.preview.setVisibility(8);
            }
        } else {
            opmlViewItem.secondaryImage.setImageResource(R.drawable.ic_action_folder_open);
            opmlViewItem.secondaryImage.setVisibility(0);
        }
        return opmlViewItem;
    }

    public void clear() {
        this._Feed = null;
        this._Items.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Feed getFeedAtPosition(int i) {
        Object item = getItem(i);
        if (item == null) {
            return null;
        }
        return (Feed) item;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRootFeed(Feed feed) {
        this._Feed = feed;
        this._Items.clear();
        ArrayList arrayList = new ArrayList(feed.subFeeds());
        if (feed != null) {
            for (Feed feed2 : feed.subFeeds()) {
                if (FeedRepository.getFeedByUrl(feed2.getFeedUrl()) == null) {
                    this._Items.add(feed2);
                    arrayList.remove(feed2);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this._Items.add((Feed) it.next());
            }
            if (this._Feed.canNavigateUp()) {
                this._Items.add(0, FeedRepository.getGoUpPlaceholder());
            }
        }
        notifyDataSetChanged();
        this._Owner.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                OpmlListViewAdapter.this._Owner.setSelectionAfterHeaderView();
            }
        }, 100L);
    }

    FeedList feeds() {
        FeedList feedList = new FeedList();
        Iterator<Feed> it = this._Items.iterator();
        while (it.hasNext()) {
            Feed next = it.next();
            if (next != null) {
                feedList.add(next);
            }
        }
        return feedList;
    }

    public void refresh() {
        notifyDataSetChanged();
    }

    public int numCheckableFeeds() {
        Iterator<Feed> it = this._Items.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (isFeedImportable(it.next())) {
                i++;
            }
        }
        return i;
    }
}
