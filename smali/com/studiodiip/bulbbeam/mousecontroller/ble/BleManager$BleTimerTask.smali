.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;
.super Ljava/util/TimerTask;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 795
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleTimerTask "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method
