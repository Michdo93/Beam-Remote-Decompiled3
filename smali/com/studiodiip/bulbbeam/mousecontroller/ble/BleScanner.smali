.class public Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;
.super Ljava/lang/Object;
.source "BleScanner.java"


# static fields
.field private static scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;


# instance fields
.field private mCallback:Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)V
    .locals 1
    .param p1, "callback"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 23
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->mCallback:Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->mCallback:Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    return-object v0
.end method

.method public static getScanner(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;
    .locals 1
    .param p0, "callback"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    .prologue
    .line 16
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    .line 19
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    return-object v0
.end method


# virtual methods
.method public startScan()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 37
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0
.end method
