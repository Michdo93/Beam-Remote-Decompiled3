.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;
.super Ljava/util/TimerTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeScanningTextTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run(), Wifi - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Ble "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    if-ne v0, v1, :cond_1

    .line 360
    :cond_0
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time to change scanning text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask$1;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    .line 370
    return-void
.end method
