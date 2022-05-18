.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$1;
.super Ljava/lang/Object;
.source "BleL21Scanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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
    .line 40
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 44
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;->onDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;)V

    .line 45
    return-void
.end method
