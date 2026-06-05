package uk.co.chrisjenx.calligraphy;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;

/* loaded from: classes.dex */
class CalligraphyFactory {
    private static final String ACTION_BAR_SUBTITLE = "action_bar_subtitle";
    private static final String ACTION_BAR_TITLE = "action_bar_title";
    private final int mAttributeId;

    protected static int[] getStyleForTextView(TextView textView) {
        int[] iArr = {-1, -1};
        if (isActionBarTitle(textView)) {
            iArr[0] = 16843470;
            iArr[1] = 16843512;
        } else if (isActionBarSubTitle(textView)) {
            iArr[0] = 16843470;
            iArr[1] = 16843513;
        }
        if (iArr[0] == -1) {
            iArr[0] = CalligraphyConfig.get().getClassStyles().containsKey(textView.getClass()) ? CalligraphyConfig.get().getClassStyles().get(textView.getClass()).intValue() : android.R.attr.textAppearance;
        }
        return iArr;
    }

    @SuppressLint({"NewApi"})
    protected static boolean isActionBarTitle(TextView textView) {
        if (matchesResourceIdName(textView, ACTION_BAR_TITLE)) {
            return true;
        }
        if (parentIsToolbarV7(textView)) {
            return TextUtils.equals(((Toolbar) textView.getParent()).getTitle(), textView.getText());
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    protected static boolean isActionBarSubTitle(TextView textView) {
        if (matchesResourceIdName(textView, ACTION_BAR_SUBTITLE)) {
            return true;
        }
        if (parentIsToolbarV7(textView)) {
            return TextUtils.equals(((Toolbar) textView.getParent()).getSubtitle(), textView.getText());
        }
        return false;
    }

    protected static boolean parentIsToolbarV7(View view) {
        return CalligraphyUtils.canCheckForV7Toolbar() && view.getParent() != null && (view.getParent() instanceof Toolbar);
    }

    protected static boolean matchesResourceIdName(View view, String str) {
        if (view.getId() == -1) {
            return false;
        }
        return view.getResources().getResourceEntryName(view.getId()).equalsIgnoreCase(str);
    }

    public CalligraphyFactory(int i) {
        this.mAttributeId = i;
    }

    public View onViewCreated(View view, Context context, AttributeSet attributeSet) {
        if (view != null && view.getTag(R.id.calligraphy_tag_id) != Boolean.TRUE) {
            onViewCreatedInternal(view, context, attributeSet);
            view.setTag(R.id.calligraphy_tag_id, Boolean.TRUE);
        }
        return view;
    }

    void onViewCreatedInternal(View view, final Context context, AttributeSet attributeSet) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (TypefaceUtils.isLoaded(textView.getTypeface())) {
                return;
            }
            String pullFontPathFromView = CalligraphyUtils.pullFontPathFromView(context, attributeSet, this.mAttributeId);
            if (TextUtils.isEmpty(pullFontPathFromView)) {
                pullFontPathFromView = CalligraphyUtils.pullFontPathFromStyle(context, attributeSet, this.mAttributeId);
            }
            if (TextUtils.isEmpty(pullFontPathFromView)) {
                pullFontPathFromView = CalligraphyUtils.pullFontPathFromTextAppearance(context, attributeSet, this.mAttributeId);
            }
            if (TextUtils.isEmpty(pullFontPathFromView)) {
                int[] styleForTextView = getStyleForTextView(textView);
                if (styleForTextView[1] != -1) {
                    pullFontPathFromView = CalligraphyUtils.pullFontPathFromTheme(context, styleForTextView[0], styleForTextView[1], this.mAttributeId);
                } else {
                    pullFontPathFromView = CalligraphyUtils.pullFontPathFromTheme(context, styleForTextView[0], this.mAttributeId);
                }
            }
            CalligraphyUtils.applyFontToTextView(context, textView, CalligraphyConfig.get(), pullFontPathFromView, matchesResourceIdName(view, ACTION_BAR_TITLE) || matchesResourceIdName(view, ACTION_BAR_SUBTITLE));
        }
        if (CalligraphyUtils.canCheckForV7Toolbar() && (view instanceof Toolbar)) {
            final ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: uk.co.chrisjenx.calligraphy.CalligraphyFactory.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                @TargetApi(16)
                public void onGlobalLayout() {
                    int childCount = viewGroup.getChildCount();
                    if (childCount != 0) {
                        for (int i = 0; i < childCount; i++) {
                            CalligraphyFactory.this.onViewCreated(viewGroup.getChildAt(i), context, null);
                        }
                    }
                    if (Build.VERSION.SDK_INT < 16) {
                        viewGroup.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else {
                        viewGroup.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                }
            });
        }
    }

    /* renamed from: uk.co.chrisjenx.calligraphy.CalligraphyFactory$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ Context val$context;
        final /* synthetic */ ViewGroup val$parent;

        AnonymousClass2(ViewGroup viewGroup, Context context) {
            this.val$parent = viewGroup;
            this.val$context = context;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @TargetApi(16)
        public void onGlobalLayout() {
            int childCount = this.val$parent.getChildCount();
            if (childCount != 0) {
                for (int i = 0; i < childCount; i++) {
                    CalligraphyFactory.this.onViewCreated(this.val$parent.getChildAt(i), this.val$context, null);
                }
            }
            if (Build.VERSION.SDK_INT < 16) {
                this.val$parent.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else {
                this.val$parent.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }
}
