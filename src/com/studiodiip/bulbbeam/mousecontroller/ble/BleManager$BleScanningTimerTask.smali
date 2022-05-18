.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;
.super Ljava/util/TimerTask;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleScanningTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 722
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleScanningTimerTask "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->isScanningStopped:Z

    if-eqz v0, :cond_0

    .line 724
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isScanningStopped "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Z)V

    .line 738
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopScan()V

    .line 729
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1800(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 730
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_NO_BEAM:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 731
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1900()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    move-result-object v0

    const-string v1, "No Beams found. Please try again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->onScanningCompleted(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2002(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;I)I

    .line 735
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1800(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2102(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 736
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2200(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    .line 737
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2100(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$2300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_0
.end method
