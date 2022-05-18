.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;
.super Ljava/util/TimerTask;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleaseTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 821
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReleaseTimerTask "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lock released "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 824
    return-void
.end method
