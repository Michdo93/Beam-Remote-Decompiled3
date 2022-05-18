.class public Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;
.super Ljava/lang/Object;
.source "BleL21Scanner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

.field private mLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private scanSettings:Landroid/bluetooth/le/ScanSettings;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)V
    .locals 1
    .param p1, "callback"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 64
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$2;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 36
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mCallback:Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mCallback:Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    return-object v0
.end method

.method public static getScanner(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;
    .locals 1
    .param p0, "callback"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;

    .prologue
    .line 29
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    .line 32
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->scanner:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    return-object v0
.end method


# virtual methods
.method public startScan()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 50
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 51
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->filters:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->filters:Ljava/util/List;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 55
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0
.end method
