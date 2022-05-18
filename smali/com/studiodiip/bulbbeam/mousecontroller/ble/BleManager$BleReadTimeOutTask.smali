.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;
.super Ljava/util/TimerTask;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleReadTimeOutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 762
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleReadTimeOutTask "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_NO_BEAM:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 764
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Z)V

    .line 765
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2500(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2600()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Ljava/lang/String;)V

    .line 770
    :goto_0
    return-void

    .line 769
    :cond_0
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1900()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    move-result-object v0

    const-string v1, "No Beams found. Please try again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->onScanningCompleted(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
