package uk.co.chrisjenx.calligraphy;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
class CalligraphyLayoutInflater extends LayoutInflater implements CalligraphyActivityFactory {
    private static final String[] sClassPrefixList = {"android.widget.", "android.webkit."};
    private final int mAttributeId;
    private final CalligraphyFactory mCalligraphyFactory;
    private Field mConstructorArgs;
    private boolean mSetPrivateFactory;

    protected CalligraphyLayoutInflater(Context context, int i) {
        super(context);
        this.mSetPrivateFactory = false;
        this.mConstructorArgs = null;
        this.mAttributeId = i;
        this.mCalligraphyFactory = new CalligraphyFactory(i);
        setUpLayoutFactories(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CalligraphyLayoutInflater(LayoutInflater layoutInflater, Context context, int i, boolean z) {
        super(layoutInflater, context);
        this.mSetPrivateFactory = false;
        this.mConstructorArgs = null;
        this.mAttributeId = i;
        this.mCalligraphyFactory = new CalligraphyFactory(i);
        setUpLayoutFactories(z);
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context context) {
        return new CalligraphyLayoutInflater(this, context, this.mAttributeId, true);
    }

    @Override // android.view.LayoutInflater
    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        setPrivateFactoryInternal();
        return super.inflate(xmlPullParser, viewGroup, z);
    }

    private void setUpLayoutFactories(boolean z) {
        if (z) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 11 && getFactory2() != null && !(getFactory2() instanceof WrapperFactory2)) {
            setFactory2(getFactory2());
        }
        if (getFactory() == null || (getFactory() instanceof WrapperFactory)) {
            return;
        }
        setFactory(getFactory());
    }

    @Override // android.view.LayoutInflater
    public void setFactory(LayoutInflater.Factory factory) {
        if (!(factory instanceof WrapperFactory)) {
            super.setFactory(new WrapperFactory(factory, this, this.mCalligraphyFactory));
        } else {
            super.setFactory(factory);
        }
    }

    @Override // android.view.LayoutInflater
    @TargetApi(11)
    public void setFactory2(LayoutInflater.Factory2 factory2) {
        if (!(factory2 instanceof WrapperFactory2)) {
            super.setFactory2(new WrapperFactory2(factory2, this.mCalligraphyFactory));
        } else {
            super.setFactory2(factory2);
        }
    }

    private void setPrivateFactoryInternal() {
        if (!this.mSetPrivateFactory && CalligraphyConfig.get().isReflection()) {
            if (!(getContext() instanceof LayoutInflater.Factory2)) {
                this.mSetPrivateFactory = true;
                return;
            }
            Method method = ReflectionUtils.getMethod(LayoutInflater.class, "setPrivateFactory");
            if (method != null) {
                ReflectionUtils.invokeMethod(this, method, new PrivateWrapperFactory2((LayoutInflater.Factory2) getContext(), this, this.mCalligraphyFactory));
            }
            this.mSetPrivateFactory = true;
        }
    }

    @Override // uk.co.chrisjenx.calligraphy.CalligraphyActivityFactory
    @TargetApi(11)
    public View onActivityCreateView(View view, View view2, String str, Context context, AttributeSet attributeSet) {
        return this.mCalligraphyFactory.onViewCreated(createCustomViewInternal(view, view2, str, context, attributeSet), context, attributeSet);
    }

    @Override // android.view.LayoutInflater
    @TargetApi(11)
    protected View onCreateView(View view, String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return this.mCalligraphyFactory.onViewCreated(super.onCreateView(view, str, attributeSet), getContext(), attributeSet);
    }

    @Override // android.view.LayoutInflater
    protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        View view = null;
        for (String str2 : sClassPrefixList) {
            try {
                view = createView(str, str2, attributeSet);
            } catch (ClassNotFoundException unused) {
            }
        }
        if (view == null) {
            view = super.onCreateView(str, attributeSet);
        }
        return this.mCalligraphyFactory.onViewCreated(view, view.getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View createCustomViewInternal(View view, View view2, String str, Context context, AttributeSet attributeSet) {
        if (!CalligraphyConfig.get().isCustomViewCreation() || view2 != null || str.indexOf(46) <= -1) {
            return view2;
        }
        if (this.mConstructorArgs == null) {
            this.mConstructorArgs = ReflectionUtils.getField(LayoutInflater.class, "mConstructorArgs");
        }
        Object[] objArr = (Object[]) ReflectionUtils.getValue(this.mConstructorArgs, this);
        Object obj = objArr[0];
        objArr[0] = context;
        ReflectionUtils.setValue(this.mConstructorArgs, this, objArr);
        try {
            return createView(str, null, attributeSet);
        } catch (ClassNotFoundException unused) {
            return view2;
        } finally {
            objArr[0] = obj;
            ReflectionUtils.setValue(this.mConstructorArgs, this, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class WrapperFactory implements LayoutInflater.Factory {
        private final CalligraphyFactory mCalligraphyFactory;
        private final LayoutInflater.Factory mFactory;
        private final CalligraphyLayoutInflater mInflater;

        public WrapperFactory(LayoutInflater.Factory factory, CalligraphyLayoutInflater calligraphyLayoutInflater, CalligraphyFactory calligraphyFactory) {
            this.mFactory = factory;
            this.mInflater = calligraphyLayoutInflater;
            this.mCalligraphyFactory = calligraphyFactory;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            if (Build.VERSION.SDK_INT < 11) {
                return this.mCalligraphyFactory.onViewCreated(this.mInflater.createCustomViewInternal(null, this.mFactory.onCreateView(str, context, attributeSet), str, context, attributeSet), context, attributeSet);
            }
            return this.mCalligraphyFactory.onViewCreated(this.mFactory.onCreateView(str, context, attributeSet), context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    /* loaded from: classes.dex */
    public static class WrapperFactory2 implements LayoutInflater.Factory2 {
        protected final CalligraphyFactory mCalligraphyFactory;
        protected final LayoutInflater.Factory2 mFactory2;

        public WrapperFactory2(LayoutInflater.Factory2 factory2, CalligraphyFactory calligraphyFactory) {
            this.mFactory2 = factory2;
            this.mCalligraphyFactory = calligraphyFactory;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.mCalligraphyFactory.onViewCreated(this.mFactory2.onCreateView(str, context, attributeSet), context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.mCalligraphyFactory.onViewCreated(this.mFactory2.onCreateView(view, str, context, attributeSet), context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    /* loaded from: classes.dex */
    public static class PrivateWrapperFactory2 extends WrapperFactory2 {
        private final CalligraphyLayoutInflater mInflater;

        public PrivateWrapperFactory2(LayoutInflater.Factory2 factory2, CalligraphyLayoutInflater calligraphyLayoutInflater, CalligraphyFactory calligraphyFactory) {
            super(factory2, calligraphyFactory);
            this.mInflater = calligraphyLayoutInflater;
        }

        @Override // uk.co.chrisjenx.calligraphy.CalligraphyLayoutInflater.WrapperFactory2, android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.mCalligraphyFactory.onViewCreated(this.mInflater.createCustomViewInternal(view, this.mFactory2.onCreateView(view, str, context, attributeSet), str, context, attributeSet), context, attributeSet);
        }
    }
}
