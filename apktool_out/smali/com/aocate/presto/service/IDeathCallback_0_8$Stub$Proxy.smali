.class Lcom/aocate/presto/service/IDeathCallback_0_8$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeathCallback_0_8.java"

# interfaces
.implements Lcom/aocate/presto/service/IDeathCallback_0_8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aocate/presto/service/IDeathCallback_0_8$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/aocate/presto/service/IDeathCallback_0_8$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aocate/presto/service/IDeathCallback_0_8$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.aocate.presto.service.IDeathCallback_0_8"

    return-object v0
.end method
