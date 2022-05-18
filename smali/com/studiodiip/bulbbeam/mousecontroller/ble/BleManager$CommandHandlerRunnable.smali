.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandHandlerRunnable"
.end annotation


# instance fields
.field mCommand:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;

.field mGatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;


# direct methods
.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p2, "command"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;
    .param p3, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 669
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->mCommand:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;

    .line 668
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 670
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->mCommand:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;

    .line 671
    iput-object p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 672
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1500(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    .line 677
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 678
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->mCommand:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->execute(Landroid/bluetooth/BluetoothGatt;)V

    .line 679
    return-void
.end method
