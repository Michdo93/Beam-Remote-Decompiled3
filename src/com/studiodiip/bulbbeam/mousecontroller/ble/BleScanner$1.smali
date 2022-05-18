.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner$1;
.super Ljava/lang/Object;
.source "BleScanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

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
    .line 31
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;->onDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;)V

    .line 32
    return-void
.end method
