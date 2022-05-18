.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;
.super Ljava/util/TimerTask;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnbindTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 805
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Its ten seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    if-nez v0, :cond_0

    .line 814
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v0, v1, :cond_1

    .line 810
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeCurrentConnection()V

    .line 812
    :cond_1
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->unbindConnectionService()V

    .line 813
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;->cancel()Z

    goto :goto_0
.end method
