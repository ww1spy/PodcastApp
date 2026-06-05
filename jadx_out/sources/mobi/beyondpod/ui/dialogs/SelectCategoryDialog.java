package mobi.beyondpod.ui.dialogs;

import android.R;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class SelectCategoryDialog extends AlertDialog {
    private DialogInterface.OnClickListener ListItemListener;
    private View _ActionFooter;
    private ArrayAdapter<String> _Adapter;
    private TextView _ButtonFooter;
    public ArrayList<String> _Categories;
    private OnCategorySelectedListener _CategorySelectedListener;
    private View _Footer;
    private ListView _ListView;
    private String _PreferredCategory;
    private Window _Window;

    /* loaded from: classes.dex */
    public interface OnCategorySelectedListener {
        void onCategorySelected(FeedCategory feedCategory);
    }

    public SelectCategoryDialog(Context context, OnCategorySelectedListener onCategorySelectedListener) {
        super(context);
        this._ButtonFooter = null;
        this._ActionFooter = null;
        this._Footer = null;
        this._Categories = new ArrayList<>();
        this._CategorySelectedListener = null;
        this.ListItemListener = new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.SelectCategoryDialog.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == SelectCategoryDialog.this._Adapter.getCount()) {
                    return;
                }
                FeedCategory categoryByValue = CategoryManager.getCategoryByValue(SelectCategoryDialog.this._Categories.get(i));
                if (categoryByValue == CategoryManager.CategoryNull) {
                    categoryByValue = new FeedCategory(SelectCategoryDialog.this._Categories.get(i));
                    CategoryManager.addCategory(categoryByValue);
                }
                if (SelectCategoryDialog.this._CategorySelectedListener != null) {
                    SelectCategoryDialog.this._CategorySelectedListener.onCategorySelected(categoryByValue);
                }
            }
        };
        this._CategorySelectedListener = onCategorySelectedListener;
    }

    public AlertDialog createDialog(String str) {
        this._PreferredCategory = str;
        refreshCategoryList();
        this._Adapter = new ArrayAdapter<>(getContext(), R.layout.simple_list_item_1, R.id.text1, this._Categories);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setNeutralButton(mobi.beyondpod.R.string.alert_dialog_cancel, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.SelectCategoryDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (SelectCategoryDialog.this._CategorySelectedListener != null) {
                    SelectCategoryDialog.this._CategorySelectedListener.onCategorySelected(null);
                }
            }
        });
        builder.setAdapter(this._Adapter, this.ListItemListener);
        builder.setTitle(mobi.beyondpod.R.string.opml_import_dlg_title);
        builder.setCancelable(true);
        AlertDialog create = builder.create();
        this._ListView = create.getListView();
        this._Window = create.getWindow();
        createFooter();
        return create;
    }

    @SuppressLint({"InflateParams"})
    private void createFooter() {
        this._Footer = getLayoutInflater().inflate(mobi.beyondpod.R.layout.select_cat_dlg_cat_add, (ViewGroup) null);
        this._ActionFooter = this._Footer.findViewById(mobi.beyondpod.R.id.createCategory);
        this._ActionFooter.setVisibility(4);
        final EditText editText = (EditText) this._ActionFooter.findViewById(mobi.beyondpod.R.id.qcc_edit_text);
        ImageButton imageButton = (ImageButton) this._ActionFooter.findViewById(mobi.beyondpod.R.id.qcc_add_cat_but);
        ImageButton imageButton2 = (ImageButton) this._ActionFooter.findViewById(mobi.beyondpod.R.id.qcc_cancel_add_cat);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.SelectCategoryDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                String obj = editText.getText().toString();
                if (StringUtils.isNullOrEmpty(obj)) {
                    i = mobi.beyondpod.R.string.category_properties_vld_NameEmpty;
                } else {
                    i = CategoryManager.getCategoryByValue(obj) != CategoryManager.CategoryNull ? mobi.beyondpod.R.string.category_properties_vld_categoryExists : 0;
                }
                if (i > 0) {
                    Toast.makeText(SelectCategoryDialog.this.getContext(), i, 1).show();
                    return;
                }
                CategoryManager.addCategory(new FeedCategory(obj));
                SelectCategoryDialog.this.refreshCategoryList();
                SelectCategoryDialog.this._Adapter.notifyDataSetChanged();
                SelectCategoryDialog.this.switchToButtonFooter();
            }
        });
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.SelectCategoryDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SelectCategoryDialog.this.switchToButtonFooter();
            }
        });
        this._ButtonFooter = (TextView) this._Footer.findViewById(mobi.beyondpod.R.id.addButton);
        View findViewById = getLayoutInflater().inflate(R.layout.select_dialog_item, (ViewGroup) null).findViewById(R.id.text1);
        if (findViewById != null && (findViewById instanceof TextView)) {
            this._ButtonFooter.setTextColor(((TextView) findViewById).getTextColors());
        }
        this._Footer.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.SelectCategoryDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SelectCategoryDialog.this.switchToActionFooter();
            }
        });
        this._ListView.addFooterView(this._Footer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToActionFooter() {
        this._ButtonFooter.setVisibility(4);
        this._ActionFooter.setVisibility(0);
        EditText editText = (EditText) this._ActionFooter.findViewById(mobi.beyondpod.R.id.qcc_edit_text);
        editText.requestFocus();
        editText.setText("");
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(editText, 1);
        this._Window.clearFlags(131080);
        this._Window.setSoftInputMode(21);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToButtonFooter() {
        this._ActionFooter.setVisibility(4);
        this._ButtonFooter.setVisibility(0);
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(((EditText) this._ActionFooter.findViewById(mobi.beyondpod.R.id.qcc_edit_text)).getWindowToken(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCategoryList() {
        FeedCategory categoryByValue;
        this._Categories.clear();
        if (!StringUtils.isNullOrEmpty(this._PreferredCategory) && (categoryByValue = CategoryManager.getCategoryByValue(this._PreferredCategory)) != CategoryManager.CategoryNull && categoryByValue != CategoryManager.Unassigned && categoryByValue != CategoryManager.AllFeeds && categoryByValue != CategoryManager.CategoryHome) {
            this._Categories.add(categoryByValue.name());
        }
        Iterator<FeedCategory> it = CategoryManager.getCategoriesForAssignment().iterator();
        while (it.hasNext()) {
            FeedCategory next = it.next();
            if (next != CategoryManager.Unassigned && !this._Categories.contains(next.name())) {
                this._Categories.add(next.name());
            }
        }
    }
}
