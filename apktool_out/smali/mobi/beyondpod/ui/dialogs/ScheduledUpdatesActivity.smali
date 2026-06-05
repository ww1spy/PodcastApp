.class public Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ScheduledUpdatesActivity.java"


# static fields
.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_OK:I = 0x0

.field private static final PLEASE_MAKE_SURE_THAT_START_TIMES_ARE_AT_LEAST_15_MINUTES_APART:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ScheduledUpdatesActivity"

.field private static final THE_START_TIME_OF_THIS_UPDATE_OVERLAPS_WITH_CATEGORY:Ljava/lang/String;


# instance fields
.field _Active:Landroid/widget/Switch;

.field _CategoryName:Landroid/widget/TextView;

.field _CategoryUnderline:Landroid/view/View;

.field _CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field _CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

.field _Interval:I

.field _IntervalLayoutGroup:Landroid/view/View;

.field _IntervalTitle:Landroid/view/View;

.field _MinusButton:Landroid/widget/ImageButton;

.field private _OnActiveCheckChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private _OnMinusListener:Landroid/view/View$OnClickListener;

.field private _OnPlusListener:Landroid/view/View$OnClickListener;

.field _Period:Landroid/widget/Spinner;

.field _Periods:[Lmobi/beyondpod/rsscore/helpers/TimeSpan;

.field _PlusButton:Landroid/widget/ImageButton;

.field _ScheduleInformationText:Landroid/widget/TextView;

.field _Switcher:Landroid/widget/TextSwitcher;

.field _TimePicker:Landroid/widget/TimePicker;

.field _TimePickerTitle:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1000e3

    .line 71
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->PLEASE_MAKE_SURE_THAT_START_TIMES_ARE_AT_LEAST_15_MINUTES_APART:Ljava/lang/String;

    const v0, 0x7f1000e5

    .line 72
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->THE_START_TIME_OF_THIS_UPDATE_OVERLAPS_WITH_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 69
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x3

    .line 90
    new-array v1, v1, [Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    new-instance v9, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJ)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v2, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    const-wide/16 v5, 0x7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, v0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Periods:[Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    .line 313
    new-instance v1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$4;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$4;-><init>(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V

    iput-object v1, v0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_OnActiveCheckChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 331
    new-instance v1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$5;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$5;-><init>(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V

    iput-object v1, v0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_OnPlusListener:Landroid/view/View$OnClickListener;

    .line 344
    new-instance v1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$6;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$6;-><init>(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V

    iput-object v1, v0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_OnMinusListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->saveChanges()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->toggleActive(Z)V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->updateInterval()V

    return-void
.end method

.method private addOkCancelButtons()V
    .locals 4

    .line 232
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c001b

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090028

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$2;-><init>(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090027

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$3;-><init>(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x1a

    .line 255
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 259
    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private saveChanges()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 267
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->validateControls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 271
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/16 v2, 0x17

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-lt v1, v2, :cond_1

    .line 272
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getHour()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 273
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getMinute()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 277
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 280
    :goto_0
    new-instance v1, Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Periods:[Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v1, v0, v2, v3}, Lmobi/beyondpod/schedulercore/Event;-><init>(Ljava/util/Date;ILmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    .line 281
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->operations()Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->OperationID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/schedulercore/OperationBase;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lmobi/beyondpod/schedulercore/OperationBase;->createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    .line 282
    move-object v2, v0

    check-cast v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->setCategoryToUpdate(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    if-nez v2, :cond_2

    .line 286
    new-instance v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-direct {v2, v1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;-><init>(Lmobi/beyondpod/schedulercore/Event;Lmobi/beyondpod/schedulercore/OperationBase;)V

    iput-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 287
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-static {v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->registerTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    goto :goto_1

    .line 291
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-static {v2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->deleteScheduledTaskFromDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 292
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    iput-object v1, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 293
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->setOperation(Lmobi/beyondpod/schedulercore/OperationBase;)V

    .line 296
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Active:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    .line 298
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    iget-boolean v0, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-static {v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->setScheduledTaskToDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 301
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    const/16 v0, 0xe

    .line 304
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyCategoryEvent(I)V

    .line 305
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->finish()V

    return-void
.end method

.method private toggleActive(Z)V
    .locals 4

    .line 324
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePickerTitle:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_IntervalTitle:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_IntervalLayoutGroup:Landroid/view/View;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_ScheduleInformationText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateInterval()V
    .locals 2

    .line 310
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Switcher:Landroid/widget/TextSwitcher;

    iget v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validateControls()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 360
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 362
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 363
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getHour()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 364
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v3

    if-lt v3, v2, :cond_1

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getMinute()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    const/16 v3, 0xb

    .line 365
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 366
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 367
    new-instance v1, Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Periods:[Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v1, v0, v2, v3}, Lmobi/beyondpod/schedulercore/Event;-><init>(Ljava/util/Date;ILmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    .line 369
    invoke-static {v1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->findOverlappingTasksWith(Lmobi/beyondpod/schedulercore/Event;)Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 373
    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    if-eq v2, v4, :cond_2

    const-string v1, ""

    const/4 v2, 0x0

    .line 376
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    .line 377
    instance-of v4, v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    if-eqz v4, :cond_3

    .line 379
    check-cast v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 383
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->THE_START_TIME_OF_THIS_UPDATE_OVERLAPS_WITH_CATEGORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->PLEASE_MAKE_SURE_THAT_START_TIMES_ARE_AT_LEAST_15_MINUTES_APART:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_4
    return v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 102
    sget-object p1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->finish()V

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "categoryValue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0c0035

    .line 108
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->setContentView(I)V

    .line 110
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x258

    if-ge v1, v2, :cond_2

    .line 116
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->addOkCancelButtons()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 120
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    :cond_3
    :goto_0
    const v0, 0x7f09025a

    .line 124
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    const v0, 0x7f030016

    const v1, 0x1090008

    .line 126
    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x1090009

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f090289

    .line 132
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePickerTitle:Landroid/view/View;

    const v0, 0x7f090160

    .line 135
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_IntervalTitle:Landroid/view/View;

    const v0, 0x7f09015f

    .line 136
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_IntervalLayoutGroup:Landroid/view/View;

    const v0, 0x7f090204

    .line 139
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_ScheduleInformationText:Landroid/widget/TextView;

    const v0, 0x7f090078

    .line 140
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CategoryName:Landroid/widget/TextView;

    const v0, 0x7f090215

    .line 141
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CategoryUnderline:Landroid/view/View;

    const v0, 0x7f090255

    .line 143
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_PlusButton:Landroid/widget/ImageButton;

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_PlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_OnPlusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090254

    .line 146
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_MinusButton:Landroid/widget/ImageButton;

    .line 147
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_MinusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_OnMinusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090258

    .line 149
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Active:Landroid/widget/Switch;

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Active:Landroid/widget/Switch;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_OnActiveCheckChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090259

    .line 152
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Switcher:Landroid/widget/TextSwitcher;

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Switcher:Landroid/widget/TextSwitcher;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$1;-><init>(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const/high16 v0, 0x10a0000

    .line 163
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x10a0001

    .line 165
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Switcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Switcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f09025c

    .line 170
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    .line 171
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 173
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 174
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/16 v2, 0x17

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-lt v1, v2, :cond_4

    .line 175
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TimePicker;->setHour(I)V

    .line 176
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setMinute(I)V

    goto :goto_1

    .line 179
    :cond_4
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 180
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 183
    :goto_1
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 184
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {p1}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    const p1, 0x7f100033

    .line 186
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->setTitle(I)V

    .line 187
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CategoryName:Landroid/widget/TextView;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result p1

    if-eqz p1, :cond_5

    .line 191
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CategoryUnderline:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 193
    :cond_5
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 196
    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    iget-object v5, v5, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 198
    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Active:Landroid/widget/Switch;

    iget-object v6, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    iget-boolean v6, v6, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-static {v6}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->hasPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v1

    goto :goto_2

    :cond_6
    move v6, v0

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 199
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v5

    if-lt v5, v2, :cond_7

    .line 200
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TimePicker;->setHour(I)V

    .line 201
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TimePicker;->setMinute(I)V

    goto :goto_3

    .line 204
    :cond_7
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 205
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_TimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 208
    :goto_3
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    iget-object p1, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/Event;->getRecurrenceInterval()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    .line 210
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_CurrentTask:Lmobi/beyondpod/schedulercore/ScheduledTask;

    iget-object p1, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/Event;->getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v2

    .line 211
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Periods:[Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_8

    .line 212
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 213
    :cond_8
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Periods:[Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_9

    .line 214
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 216
    :cond_9
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 220
    :cond_a
    iput v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    .line 221
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Period:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 222
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Active:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    :goto_4
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Active:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->toggleActive(Z)V

    .line 226
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->updateInterval()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 397
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x258

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f100094

    .line 400
    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0800d7

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x6

    .line 401
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f10008a

    const/4 v3, 0x1

    .line 402
    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0800b5

    .line 403
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 404
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 426
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 418
    :pswitch_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->finish()V

    return v2

    .line 422
    :pswitch_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->saveChanges()V

    return v2

    .line 414
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
