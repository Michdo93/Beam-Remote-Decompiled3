.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private reconnect(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v0, "intentone":Landroid/content/Intent;
    const-string v1, "button"

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 420
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->finish()V

    .line 421
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v3

    .line 378
    .local v3, "selectedBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-nez v3, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    iget-object v5, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v9, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v5, v9, :cond_3

    move v5, v6

    :goto_1
    invoke-static {v8, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$402(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)Z

    .line 382
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", usingBluetooth "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v9}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 384
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 385
    .local v1, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 386
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 387
    :cond_2
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Don\'t have Wifi Connection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    move-result-object v5

    sget v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_OFF:I

    invoke-virtual {v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->setWifiState(I)V

    .line 389
    sput-boolean v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 390
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->reconnect(Landroid/content/Context;)V

    goto :goto_0

    .end local v1    # "conMan":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_3
    move v5, v7

    .line 381
    goto :goto_1

    .line 392
    :cond_4
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 393
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 394
    .restart local v1    # "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 395
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eq v5, v6, :cond_6

    .line 396
    :cond_5
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->closeImageSocket()V

    goto/16 :goto_0

    .line 397
    :cond_6
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 398
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToImageSocket()V

    goto/16 :goto_0

    .line 400
    .end local v1    # "conMan":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 403
    .local v4, "state":I
    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    if-nez v4, :cond_0

    .line 404
    :cond_8
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Bluetooth turned off "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->setBluetoothState(I)V

    .line 406
    sput-boolean v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 407
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;->reconnect(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
