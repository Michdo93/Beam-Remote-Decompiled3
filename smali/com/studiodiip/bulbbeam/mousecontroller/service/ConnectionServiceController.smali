.class public Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;
.super Ljava/lang/Object;
.source "ConnectionServiceController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private connectionServiceIntent:Landroid/content/Intent;

.field private mServiceBinder:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

.field private mServiceBound:Z

.field protected mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBound:Z

    .line 34
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceStarted:Z

    .line 95
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceConn:Landroid/content/ServiceConnection;

    .line 50
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;
    .param p1, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBinder:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBound:Z

    return p1
.end method

.method static synthetic access$202(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceStarted:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->instance:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "contxt"    # Landroid/content/Context;

    .prologue
    .line 39
    sput-object p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->instance:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-direct {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;-><init>()V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->instance:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBinder:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    return-object v0
.end method

.method public startConnectionService(Ljava/lang/String;Ljava/lang/String;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;)V
    .locals 7
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "connectionType"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    .prologue
    const/4 v3, 0x1

    .line 74
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startConnectionService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Mac - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service bound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "localMacAddress":Ljava/lang/String;
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "userName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    const-string v4, "ip"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    const-string v4, "port"

    const/16 v5, 0x3490

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    const-string v4, "user"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    const-string v4, "mac"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    const-string v4, "bluetoothMacaddress"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    const-string v5, "isBluetooth"

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne p3, v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBound:Z

    if-eqz v2, :cond_0

    .line 88
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    const-string v4, "Unbinding from connection service"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->unbindConnectionService()V

    .line 91
    :cond_0
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceConn:Landroid/content/ServiceConnection;

    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 93
    return-void

    .line 84
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stopConnectionService()V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopConnectionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->connectionServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 56
    return-void
.end method

.method public unbindConnectionService()V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindConnectionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 62
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->stopConnectionService()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBound:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->mServiceBinder:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .line 66
    :cond_0
    return-void
.end method
