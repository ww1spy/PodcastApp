.class public Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;
.super Landroid/preference/PreferenceFragment;
.source "CrossDeviceSyncSetupFragment.java"


# static fields
.field private static final BEYOND_POD_HELP:Ljava/lang/String;


# instance fields
.field _AcceptFeeds:Landroid/widget/Spinner;

.field _CDSRegistrationContext:Landroid/content/Context;

.field _Cancel:Landroid/widget/Button;

.field _CreateAccount:Landroid/widget/Button;

.field _CurrentUser:Landroid/widget/TextView;

.field _DeviceId:Landroid/widget/TextView;

.field _ForgotPassword:Landroid/widget/TextView;

.field _Help:Landroid/widget/TextView;

.field _Login:Landroid/widget/Button;

.field _LoginArea:Landroid/view/View;

.field _LoginAreaHandler:Landroid/os/Handler;

.field private _LoginCreateListener:Landroid/view/View$OnClickListener;

.field private _LogoutListener:Landroid/view/View$OnClickListener;

.field _OptAllowRemoteDeletions:Landroid/widget/CheckBox;

.field _Password:Ljava/lang/String;

.field _Save:Landroid/widget/Button;

.field _SettingsArea:Landroid/view/View;

.field _SyncEnabled:Landroid/widget/Switch;

.field private _SyncSettingsChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field _Token:Ljava/lang/String;

.field private _UpdateLoginAreaRunnable:Ljava/lang/Runnable;

.field _UserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1001a4

    .line 46
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->BEYOND_POD_HELP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginAreaHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$1;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SyncSettingsChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 232
    new-instance v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$6;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UpdateLoginAreaRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$7;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginCreateListener:Landroid/view/View$OnClickListener;

    .line 261
    new-instance v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LogoutListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->BEYOND_POD_HELP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->saveSettings()V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->updateLoginArea()V

    return-void
.end method

.method private saveSettings()V
    .locals 5

    .line 195
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Password:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SyncEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSEnabled(Z)V

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setCDSEnabled(Z)V

    .line 201
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSUserName(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Password:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSPassword(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSDeviceID(Ljava/lang/String;)V

    .line 204
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setCDSSyncRetryInterval(I)V

    .line 206
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->initializeHistory()V

    .line 209
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastRemoteChangeTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 210
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->setLastRemoteChangeTimeStamp(J)V

    .line 212
    :cond_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->isGCMSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    invoke-static {}, Lmobi/beyondpod/evo/GcmRegistrar;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CDSRegistrationContext:Landroid/content/Context;

    invoke-static {v0}, Lmobi/beyondpod/evo/GcmRegistrar;->register(Landroid/content/Context;)V

    goto :goto_2

    .line 218
    :cond_3
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->isGCMSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    invoke-static {}, Lmobi/beyondpod/evo/GcmRegistrar;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CDSRegistrationContext:Landroid/content/Context;

    invoke-static {v0}, Lmobi/beyondpod/evo/GcmRegistrar;->unregister(Landroid/content/Context;)V

    .line 223
    :cond_4
    :goto_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->updateLoginArea()V

    return-void
.end method

.method private updateLoginArea()V
    .locals 6

    .line 300
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginArea:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SyncEnabled:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Password:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f1000f1

    const/4 v1, 0x1

    .line 307
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v0, v4}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v4, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Token:Ljava/lang/String;

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Token:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 312
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSTokenExpiration()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Token Expired"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token Expires: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSTokenExpiration()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 320
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->isGCMSupportedOnDevice()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 322
    invoke-static {}, Lmobi/beyondpod/evo/GcmRegistrar;->getRegistrationId()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nNot registered for InstantSync!"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 328
    :cond_4
    invoke-static {}, Lmobi/beyondpod/evo/GcmRegistrar;->isRegisteredOnServer()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nRegistered for InstantSync!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 334
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nRegistered with GCM but not with CDS!"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 339
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nInstantSync is not supported on this device!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move v1, v3

    .line 341
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEndpoint()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v4, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_DeviceId:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_DeviceId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 347
    :cond_7
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_DeviceId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v3

    .line 349
    :goto_4
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CurrentUser:Landroid/widget/TextView;

    iget-object v4, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CurrentUser:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Login:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_ForgotPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SettingsArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CreateAccount:Landroid/widget/Button;

    const v2, 0x7f1000fa

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 355
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CreateAccount:Landroid/widget/Button;

    iget-object v2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LogoutListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_9

    .line 358
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->updateLoginAreaDelayed()V

    goto :goto_5

    .line 362
    :cond_8
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_DeviceId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CurrentUser:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Login:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CreateAccount:Landroid/widget/Button;

    const v1, 0x7f1000ef

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 366
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CreateAccount:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginCreateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SettingsArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_ForgotPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method private updateLoginAreaDelayed()V
    .locals 4

    .line 228
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginAreaHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginAreaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UpdateLoginAreaRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p1, "userName"

    .line 281
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    const-string p1, "password"

    .line 282
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Password:Ljava/lang/String;

    .line 284
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Password:Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 286
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1000ee

    .line 287
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000ed

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f100092

    const/4 p3, 0x0

    .line 290
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 294
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->saveSettings()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 70
    invoke-static {}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p3

    iput-object p3, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CDSRegistrationContext:Landroid/content/Context;

    .line 72
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSUserName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    .line 73
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSPassword()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Password:Ljava/lang/String;

    .line 74
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSToken()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Token:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f100348

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setTitle(I)V

    const/4 p3, 0x0

    const v0, 0x7f0c003b

    .line 78
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09004b

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginArea:Landroid/view/View;

    const p2, 0x7f090276

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SettingsArea:Landroid/view/View;

    const p2, 0x7f090112

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_ForgotPassword:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000f4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 86
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    iget-object v1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_ForgotPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_ForgotPassword:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$2;

    invoke-direct {v1, p0, p2}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$2;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09007e

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_OptAllowRemoteDeletions:Landroid/widget/CheckBox;

    .line 101
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_OptAllowRemoteDeletions:Landroid/widget/CheckBox;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSAllowRemoteEpisodeDeletions()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_OptAllowRemoteDeletions:Landroid/widget/CheckBox;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SyncSettingsChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f090012

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_AcceptFeeds:Landroid/widget/Spinner;

    .line 106
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f030009

    const v1, 0x1090008

    invoke-static {p2, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p2

    const v0, 0x1090009

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_AcceptFeeds:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 112
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSAllowRemoteFeeds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f03000a

    .line 111
    invoke-static {p2, v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexInNumArray(Landroid/content/Context;ILjava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_AcceptFeeds:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_AcceptFeeds:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 119
    :goto_0
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_AcceptFeeds:Landroid/widget/Spinner;

    new-instance v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$3;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f090173

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Login:Landroid/widget/Button;

    .line 137
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Login:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginCreateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900ae

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CreateAccount:Landroid/widget/Button;

    .line 140
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CreateAccount:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginCreateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c0

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_DeviceId:Landroid/widget/TextView;

    const p2, 0x7f0900b2

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_CurrentUser:Landroid/widget/TextView;

    const p2, 0x7f090080

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Help:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000f3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 149
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f6

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 151
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p3

    .line 154
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v1, p3, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 155
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Help:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Help:Landroid/widget/TextView;

    new-instance p3, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$4;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$4;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09007f

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SyncEnabled:Landroid/widget/Switch;

    .line 167
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SyncEnabled:Landroid/widget/Switch;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 168
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_SyncEnabled:Landroid/widget/Switch;

    new-instance p3, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$5;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$5;-><init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 181
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->initializeHistory()V

    .line 183
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->updateLoginArea()V

    .line 185
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 186
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f10007d

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f10007c

    .line 187
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f10008c

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 375
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_LoginAreaHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 376
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    return-void
.end method
