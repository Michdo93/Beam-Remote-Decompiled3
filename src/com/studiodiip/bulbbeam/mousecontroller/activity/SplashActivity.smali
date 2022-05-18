.class public Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"

# interfaces
.implements Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x4

.field private static final REQUEST_ENABLE_BT:I = 0x3e9

.field private static final SCANNING_TEXT_CHANGE_INTERVAL:I = 0x2710

.field public static final SHOULD_SCAN_FULLY:Ljava/lang/String; = "shouldScanFully"

.field private static final TAG:Ljava/lang/String;

.field private static isConnectedToBeam:Z


# instance fields
.field private amountRetries:I

.field private btnTryAgain:Landroid/widget/Button;

.field private changeScanningTextTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

.field private connectionServiceController:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

.field private imageView:Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;

.field private isConnecting:Z

.field private mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

.field private marshmallowAlert:Z

.field private registered:Z

.field private settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

.field private shouldDoFullScan:Z

.field private shouldForceSearching:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnectedToBeam:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    .line 64
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    .line 65
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    .line 66
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->registered:Z

    .line 67
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->marshmallowAlert:Z

    .line 68
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldForceSearching:Z

    .line 167
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->imageView:Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->setUpDefaultConnection()V

    return-void
.end method

.method static synthetic access$1102(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->marshmallowAlert:Z

    return p1
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->btnTryAgain:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    return v0
.end method

.method static synthetic access$600(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->onScanningCompletedWithError(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->stopChangeScanningTextTimerTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMobileDataOnDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    return v0
.end method

.method private onScanningCompletedWithError(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "errMess"    # Ljava/lang/String;
    .param p2, "isWifiScanningFailed"    # Z

    .prologue
    const v9, 0x7f060049

    const v8, 0x7f06002a

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 527
    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 528
    .local v1, "wifiState":I
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 529
    .local v0, "bluetoothState":I
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanningCompletedWithError  Wifi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",BLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    if-eqz p2, :cond_6

    .line 533
    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_BEAM_FOUND:I

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 538
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->setUpDefaultConnection()V

    goto :goto_0

    .line 541
    :cond_2
    if-eq v0, v7, :cond_3

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_NO_BEAM:I

    if-ne v0, v2, :cond_0

    .line 543
    :cond_3
    if-ne v0, v7, :cond_4

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_OFF:I

    if-ne v1, v2, :cond_4

    .line 544
    invoke-virtual {p0, v9}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    .line 545
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    goto :goto_0

    .line 548
    :cond_4
    if-eq v0, v7, :cond_5

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_NO_BEAM:I

    if-ne v0, v2, :cond_0

    .line 549
    :cond_5
    invoke-virtual {p0, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    .line 550
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    goto :goto_0

    .line 558
    :cond_6
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    if-eq v1, v2, :cond_0

    .line 562
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_BEAM_FOUND:I

    if-ne v1, v2, :cond_7

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 563
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->setUpDefaultConnection()V

    goto :goto_0

    .line 566
    :cond_7
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_OFF:I

    if-eq v1, v2, :cond_8

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_NO_BEAM:I

    if-ne v1, v2, :cond_0

    .line 568
    :cond_8
    if-ne v0, v7, :cond_9

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_OFF:I

    if-ne v1, v2, :cond_9

    .line 569
    invoke-virtual {p0, v9}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    .line 570
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    goto :goto_0

    .line 573
    :cond_9
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_NO_BEAM:I

    if-eq v1, v2, :cond_a

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_OFF:I

    if-ne v1, v2, :cond_0

    .line 574
    :cond_a
    invoke-virtual {p0, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    .line 575
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    goto/16 :goto_0
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 450
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "registerReceivers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "beams-discovered"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->registered:Z

    .line 454
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "registerReceivers done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method private selectBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 5
    .param p1, "selectedBeam"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    const/4 v2, 0x0

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "index":I
    if-nez p1, :cond_1

    move-object v0, v2

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 129
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 130
    .local v0, "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    iget-object v4, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v3, v4, :cond_2

    .line 132
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    iget-object v4, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    :cond_2
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    iget-object v4, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v3, v4, :cond_3

    iget-object v3, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v3, v4, :cond_3

    .line 139
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v4, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_4
    move-object v0, v2

    .line 144
    goto :goto_0
.end method

.method private setUpDefaultConnection()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 498
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUpDefaultConnection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnectedToBeam:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-boolean v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnectedToBeam:Z

    if-eqz v2, :cond_0

    .line 500
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v3, "Already connected to beam"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_0
    return-void

    .line 503
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    .line 504
    .local v0, "beamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 505
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v3, "No beam found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 509
    :cond_1
    sput-boolean v6, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnectedToBeam:Z

    .line 510
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getLastUsedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->selectBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v1

    .line 511
    .local v1, "beamToConnect":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-nez v1, :cond_2

    .line 512
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v3, "getLastSelectedBeam is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "beamToConnect":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 515
    .restart local v1    # "beamToConnect":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_2
    iget-object v2, v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v2, v3, :cond_3

    .line 516
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->setUpCurrentBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 517
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v2, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 523
    invoke-direct {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startConnectionService(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    goto :goto_0
.end method

.method private showMessage(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startAnimation"    # Z
    .param p3, "showBtn"    # Z

    .prologue
    .line 88
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method private showMobileDataOnDialog()V
    .locals 6

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getMobileDataState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v4, "cellular data is off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 221
    :cond_0
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v4, "cellular data is on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 223
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "SSID":Ljava/lang/String;
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v3, "\"Beam_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v4, "ssid doesnt start with beam"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_1
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v4, "ssid starts with beam"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->marshmallowAlert:Z

    .line 231
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f060048

    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Settings"

    new-instance v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$5;

    invoke-direct {v5, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$5;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    .line 233
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    new-instance v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$4;

    invoke-direct {v5, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$4;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    .line 244
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showNoBluetoothDevicesDialog()V
    .locals 4

    .prologue
    .line 206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$3;

    invoke-direct {v3, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    .line 208
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 215
    return-void
.end method

.method private startChangeScanningTextTimerTask()V
    .locals 4

    .prologue
    .line 374
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "startChangeScanningTextTimerTask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->stopChangeScanningTextTimerTask()V

    .line 376
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->changeScanningTextTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    .line 377
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 378
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->changeScanningTextTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 380
    return-void
.end method

.method private startConnectionService(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V
    .locals 5
    .param p1, "bulb"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 149
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startConnectionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "Already attempting to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    .line 155
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    .line 156
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 157
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->isScanningStopped:Z

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "Scanning paused "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->connectionServiceController:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    iget-object v1, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v2, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->startConnectionService(Ljava/lang/String;Ljava/lang/String;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;)V

    .line 162
    iput-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    .line 163
    iput v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    .line 164
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startTestActivity()V

    goto :goto_0
.end method

.method private startSearch(Z)V
    .locals 6
    .param p1, "forceSearch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 468
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start search "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnectedToBeam:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Should scan fully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amountRetries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput-boolean v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    .line 471
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 472
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->clear()V

    .line 473
    const v2, 0x7f06003b

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    .line 476
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->scanLeDevices(Z)V

    .line 477
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getLastUsedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    .line 478
    .local v0, "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    if-nez v2, :cond_0

    .line 479
    iget-object v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    .line 480
    .local v1, "lastUsedBeamIp":Ljava/lang/String;
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last used beam ip address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->findLastBulb(Landroid/content/Context;Ljava/lang/String;)Z

    .line 486
    .end local v1    # "lastUsedBeamIp":Ljava/lang/String;
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, p0, p1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->findBulbs(Landroid/content/Context;ZI)Z

    goto :goto_0
.end method

.method private startTestActivity()V
    .locals 4

    .prologue
    .line 254
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v1, "startIntent":Landroid/content/Intent;
    const v2, 0x14008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    .line 258
    .local v0, "selectedBEam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v2, v3, :cond_0

    .line 260
    const-string v2, "bluetooth"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    :cond_0
    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->finish()V

    .line 273
    return-void
.end method

.method private stopChangeScanningTextTimerTask()V
    .locals 2

    .prologue
    .line 383
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopChangeScanningTextTimerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->changeScanningTextTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->changeScanningTextTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;->cancel()Z

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->changeScanningTextTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    .line 387
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "Stopped Scanning timer task "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 3

    .prologue
    .line 459
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterReceivers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->registered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->registered:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->registered:Z

    .line 463
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceivers done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method public enableBle()V
    .locals 3

    .prologue
    .line 586
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "enableBle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, "enableBtIntent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 590
    return-void
.end method

.method public getMobileDataState()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 288
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 289
    .local v3, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 290
    .local v1, "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 291
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 297
    .end local v1    # "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    .end local v3    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v2

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    if-nez p2, :cond_1

    .line 111
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "User denied turning bluetooth on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 113
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "User pressed allow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onBtnTryAgainClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 489
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBtnTryAgainClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->btnTryAgain:Landroid/widget/Button;

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 491
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 492
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setLastUsedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 493
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->connectionServiceController:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->unbindConnectionService()V

    .line 494
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startSearch(Z)V

    .line 495
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 303
    const-string v4, "SplashActivity"

    const-string v5, "On create!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    const v4, 0x7f03001c

    invoke-virtual {p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->setContentView(I)V

    .line 306
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 307
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->init(Landroid/content/Context;)Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    .line 308
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->init(Landroid/content/Context;)V

    .line 309
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->init(Landroid/content/Context;)V

    .line 310
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->init(Landroid/content/Context;)V

    .line 311
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    .line 312
    sput-boolean v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 314
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v4

    iput-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->connectionServiceController:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    .line 316
    const v4, 0x7f0c0052

    invoke-virtual {p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->textView:Landroid/widget/TextView;

    .line 317
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "apercu-bold-webfont.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 318
    .local v2, "tfb":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 320
    const v4, 0x7f0c0055

    invoke-virtual {p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;

    iput-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->imageView:Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;

    .line 321
    const v4, 0x7f0c0056

    invoke-virtual {p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->btnTryAgain:Landroid/widget/Button;

    .line 323
    iput v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->amountRetries:I

    .line 324
    sput-boolean v6, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnectedToBeam:Z

    .line 325
    iput-boolean v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldForceSearching:Z

    .line 327
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 328
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v5, "is Marshmallow"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMobileDataOnDialog()V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 333
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "type":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 352
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string v4, "shouldScanFully"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    const-string v4, "shouldScanFully"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    .line 351
    :goto_1
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldDoFullScan"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_2
    const-string v4, "button"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 343
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->btnTryAgain:Landroid/widget/Button;

    const v5, 0x7f060027

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 344
    const v4, 0x7f060037

    invoke-virtual {p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 345
    :cond_3
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 346
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sput-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    goto :goto_1

    .line 349
    :cond_4
    const/4 v4, 0x0

    sput-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 439
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 440
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->unRegisterReceivers()V

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    .line 446
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v3, "onNewIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "type":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 282
    sput-object p1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    .line 284
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 424
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "On pause!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->unRegisterReceivers()V

    .line 426
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnecting:Z

    .line 427
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->stopChangeScanningTextTimerTask()V

    .line 428
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 429
    .local v0, "bleState":I
    const/16 v1, 0xc

    if-ne v1, v0, :cond_0

    .line 431
    const/4 v1, 0x1

    sput-boolean v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->isScanningStopped:Z

    .line 432
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopScan()V

    .line 433
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->setUpCurrentBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z

    .line 435
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 395
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "On resume!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->registerReceivers()V

    .line 397
    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->marshmallowAlert:Z

    if-eqz v1, :cond_0

    .line 398
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "Return from marshmallow alert dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 401
    :cond_0
    sput-boolean v4, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->isScanningStopped:Z

    .line 402
    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_IDLE:I

    sput v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 403
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    .line 404
    .local v0, "selectedBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-nez v0, :cond_1

    .line 405
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "Selected beam is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldForceSearching:Z

    invoke-direct {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startSearch(Z)V

    goto :goto_0

    .line 408
    :cond_1
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected beam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mac"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 410
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeCurrentConnection()V

    .line 412
    :cond_2
    iget-object v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v1, v2, :cond_3

    .line 413
    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    .line 414
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->switchToBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    goto :goto_0

    .line 416
    :cond_3
    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startConnectionService(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    goto :goto_0
.end method

.method public onScanningCompleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p2, "beamList":Ljava/util/List;, "Ljava/util/List<Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;>;"
    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onScanningCompleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-eqz p1, :cond_1

    .line 601
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->onScanningCompletedWithError(Ljava/lang/String;Z)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bulbdiscover.beambulb before adding ble beams  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, "toSwitchBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 607
    .local v0, "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->isConnectedByWifi(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v4

    .line 608
    .local v4, "wifiBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v2

    .line 609
    .local v2, "selectedBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-nez v4, :cond_2

    .line 610
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    :cond_2
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v7, v4, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    .line 613
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 614
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v7, "current beam is discovered by BLE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    move-object v3, v0

    .line 617
    :cond_3
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v2    # "selectedBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v4    # "wifiBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_4
    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bulbdiscover.beambulb after adding ble beams  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-boolean v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->shouldDoFullScan:Z

    if-eqz v5, :cond_5

    sget v5, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    sget v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    if-ne v5, v6, :cond_5

    .line 624
    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v6, "Full scan.. Wifi is still scanning ..Lets wait "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 627
    :cond_5
    if-eqz v3, :cond_6

    .line 628
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->setUpCurrentBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 632
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->unbindConnectionService()V

    .line 634
    const-wide/16 v6, 0x14

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_2
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v5

    iget-object v6, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v7, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    iget-object v8, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->startConnectionService(Ljava/lang/String;Ljava/lang/String;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;)V

    .line 640
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->settings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-virtual {v5, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 641
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "beamchanged"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 646
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_6
    sget-boolean v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->isConnectedToBeam:Z

    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    .line 647
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->setUpCurrentBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z

    goto/16 :goto_0

    .line 650
    :cond_7
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->setUpDefaultConnection()V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 76
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "OnStart SplashActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onSwitchingCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 656
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSwitchingCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-nez p1, :cond_0

    .line 658
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCurrentBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startConnectionService(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 659
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startTestActivity()V

    .line 663
    :goto_0
    return-void

    .line 662
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public supportsBle(Z)V
    .locals 3
    .param p1, "isSupported"    # Z

    .prologue
    .line 594
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportsBle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method
