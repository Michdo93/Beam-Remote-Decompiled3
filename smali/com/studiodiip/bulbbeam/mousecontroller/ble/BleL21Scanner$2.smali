.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleL21Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 68
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;->onDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;)V

    .line 69
    return-void
.end method
