.class public Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;,
        Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;,
        Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;,
        Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;,
        Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;,
        Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;
    }
.end annotation


# static fields
.field public static CURRENT_BLUETOOTH_STATE:I = 0x0

.field public static STATE_BEAM_FOUND:I = 0x0

.field public static final STATE_BLUETOOTH_OFF:I = 0xb

.field public static final STATE_BLUETOOTH_ON:I = 0xa

.field public static final STATE_BLUETOOTH_SCANNING:I = 0xc

.field public static STATE_IDLE:I

.field public static STATE_NO_BEAM:I

.field private static final TAG:Ljava/lang/String;

.field public static isScanningStopped:Z

.field private static mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

.field private static mContext:Landroid/content/Context;

.field public static mCurrentBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

.field private static manager:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;


# instance fields
.field private final BEAM_IP_CHARACTERISTIC:Ljava/util/UUID;

.field private final BEAM_LED_CHARACTERISTIC:Ljava/util/UUID;

.field private final BEAM_MAC_CHARACTERISTIC:Ljava/util/UUID;

.field private final BEAM_MOUSE_CHARACTERISTIC:Ljava/util/UUID;

.field private final BEAM_NAME_CHARACTERISTIC:Ljava/util/UUID;

.field private final BEAM_SERVICE_UUID:Ljava/util/UUID;

.field private final BEAM_VERSION_CHARACTERISTIC:Ljava/util/UUID;

.field private final BEAM_VOLUME_CHARACTERISTIC:Ljava/util/UUID;

.field private final CHARACTERISTICS_COUNT:I

.field private final END_MESSAGE:Ljava/lang/String;

.field private final PACKET_SIZE:I

.field private final READ_TIMEOUT_MS:I

.field private final SCANNING_TIME_MS:I

.field private final START_MESSAGE:Ljava/lang/String;

.field private beamIndex:I

.field private bleReadTimeOutTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;

.field private bleScanningTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;

.field private bleTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;

.field private mBeamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
            ">;"
        }
    .end annotation
.end field

.field private mBleDeviceTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothGattCallBack:Landroid/bluetooth/BluetoothGattCallback;

.field mCommandExecutor:Ljava/util/concurrent/Executor;

.field mCommandLock:Ljava/util/concurrent/Semaphore;

.field final mCommandQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mGatt:Landroid/bluetooth/BluetoothGatt;

.field private mGattList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mScanForAllDevices:Z

.field private mSwitchingToNewBeam:Z

.field private mTempBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

.field private mTempGatt:Landroid/bluetooth/BluetoothGatt;

.field private mTempGattList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private mToSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

.field private releaseTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_IDLE:I

    .line 92
    const/4 v0, 0x3

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_NO_BEAM:I

    .line 93
    const/4 v0, 0x4

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_BEAM_FOUND:I

    .line 97
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_IDLE:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x4e20

    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandQueue:Ljava/util/LinkedList;

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandExecutor:Ljava/util/concurrent/Executor;

    .line 61
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandLock:Ljava/util/concurrent/Semaphore;

    .line 64
    const-string v0, "06437bf5-4322-4461-80c6-1d2b45082929"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_SERVICE_UUID:Ljava/util/UUID;

    .line 66
    const-string v0, "06437bf5-4322-4461-80c6-1d2b45080cde"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_MOUSE_CHARACTERISTIC:Ljava/util/UUID;

    .line 68
    const-string v0, "06437bf5-4322-4461-80c6-1d2b46080cde"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_VOLUME_CHARACTERISTIC:Ljava/util/UUID;

    .line 70
    const-string v0, "06437bf5-4322-4461-80c6-1d2b56080cde"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_NAME_CHARACTERISTIC:Ljava/util/UUID;

    .line 72
    const-string v0, "06437bf5-4322-4461-80c6-1d2b66080cde"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_LED_CHARACTERISTIC:Ljava/util/UUID;

    .line 74
    const-string v0, "06437bf5-4322-4461-80c6-1d2b76080cde"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_VERSION_CHARACTERISTIC:Ljava/util/UUID;

    .line 76
    const-string v0, "06437bf5-4322-4461-80c6-1d2b86080cde"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_IP_CHARACTERISTIC:Ljava/util/UUID;

    .line 78
    const-string v0, "06437bf5-4322-4461-80c6-1d2b96080cde"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_MAC_CHARACTERISTIC:Ljava/util/UUID;

    .line 80
    const/4 v0, 0x7

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CHARACTERISTICS_COUNT:I

    .line 81
    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->SCANNING_TIME_MS:I

    .line 82
    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->READ_TIMEOUT_MS:I

    .line 86
    const-string v0, "BEAMSPS"

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->START_MESSAGE:Ljava/lang/String;

    .line 87
    const-string v0, "BEAMEPS"

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->END_MESSAGE:Ljava/lang/String;

    .line 88
    const/16 v0, 0x14

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->PACKET_SIZE:I

    .line 541
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBluetoothGattCallBack:Landroid/bluetooth/BluetoothGattCallback;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleDeviceTempList:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGattList:Ljava/util/ArrayList;

    .line 127
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_IDLE:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 128
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->enableBLE()V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamDisconnected()V

    return-void
.end method

.method static synthetic access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_MOUSE_CHARACTERISTIC:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mScanForAllDevices:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->onBeamDiscovered(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->onBeamInfoRead()V

    return-void
.end method

.method static synthetic access$1500(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->startReleaseTimerTask()V

    return-void
.end method

.method static synthetic access$1700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeAllConnections(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    return v0
.end method

.method static synthetic access$2002(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->startBleReadTimer()V

    return-void
.end method

.method static synthetic access$2300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readBeamData(Landroid/bluetooth/BluetoothGattService;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mSwitchingToNewBeam:Z

    return v0
.end method

.method static synthetic access$2600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->switchToNewBeamCompleted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$400(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_NAME_CHARACTERISTIC:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$500(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_VOLUME_CHARACTERISTIC:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_LED_CHARACTERISTIC:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_VERSION_CHARACTERISTIC:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$800(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_IP_CHARACTERISTIC:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$900(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_MAC_CHARACTERISTIC:Ljava/util/UUID;

    return-object v0
.end method

.method private beamDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "beamDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 230
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setLastUsedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method private checkBleDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleDeviceTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 211
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const/4 v1, 0x0

    .line 217
    .end local v0    # "d":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return v1

    .line 215
    :cond_1
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleDeviceTempList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeAllConnections(Z)V
    .locals 3
    .param p1, "shouldDisconnectCurrent"    # Z

    .prologue
    .line 468
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "closeAllConnections"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 470
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "No BLE connections"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    return-void

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 475
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eq v0, v2, :cond_2

    .line 478
    :cond_3
    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeConnection(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    .line 480
    .end local v0    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_4
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGattList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGattList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 482
    .restart local v0    # "gatt":Landroid/bluetooth/BluetoothGatt;
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eq v0, v2, :cond_5

    .line 486
    :cond_6
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 489
    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeConnection(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_1
.end method

.method private closeConnection(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 505
    if-eqz p1, :cond_0

    .line 506
    :try_start_0
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 508
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private connectToDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 223
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBluetoothGattCallBack:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 224
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGattList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method private enableBLE()V
    .locals 3

    .prologue
    .line 134
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "Device doesnt support BLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->supportsBle(Z)V

    .line 150
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "Supports BLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->supportsBle(Z)V

    .line 141
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 142
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    :cond_1
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    invoke-interface {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->enableBle()V

    .line 145
    const/16 v1, 0xb

    sput v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    goto :goto_0

    .line 148
    :cond_2
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/16 v1, 0xa

    sput v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->manager:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sput-object p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    .line 116
    check-cast p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    .end local p0    # "context":Landroid/content/Context;
    sput-object p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    .line 117
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->manager:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-direct {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;-><init>()V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->manager:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .line 120
    :cond_0
    return-void
.end method

.method private onBeamConnected()V
    .locals 3

    .prologue
    .line 313
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "onBeamConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleReadTimer()V

    .line 315
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->onScanningCompleted(Ljava/lang/String;Ljava/util/List;)V

    .line 316
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_BEAM_FOUND:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 317
    return-void
.end method

.method private onBeamDiscovered(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V
    .locals 3
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 240
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeamDiscovered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mSwitchingToNewBeam:Z

    if-eqz v0, :cond_1

    .line 242
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 243
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mToSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCurrentBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 244
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->setMouseCharacteristic(Landroid/bluetooth/BluetoothGatt;)V

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->switchToNewBeamCompleted(Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mScanForAllDevices:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "Read beam data "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    .line 252
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopScan()V

    .line 253
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readBeamData(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_0
.end method

.method private onBeamInfoRead()V
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "onBeamInfoRead "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mScanForAllDevices:Z

    if-nez v0, :cond_1

    .line 294
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->isScanningStopped:Z

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "isScanningStopped "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeAllConnections(Z)V

    .line 310
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->onBeamConnected()V

    .line 300
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleScanningTimer()V

    goto :goto_0

    .line 303
    :cond_1
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    .line 304
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 305
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    .line 306
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readBeamData(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->onBeamConnected()V

    goto :goto_0
.end method

.method private queueCommand(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;Landroid/bluetooth/BluetoothGatt;)V
    .locals 3
    .param p1, "command"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 683
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;Landroid/bluetooth/BluetoothGatt;)V

    .line 686
    .local v0, "runnable":Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 687
    monitor-exit v2

    .line 688
    return-void

    .line 687
    .end local v0    # "runnable":Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$CommandHandlerRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readBeamData(Landroid/bluetooth/BluetoothGattService;)V
    .locals 4
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 258
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "readBeamData "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-direct {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;-><init>()V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 260
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 261
    .local v0, "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_NAME_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Read beam name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_VOLUME_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Read beam volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_LED_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Read beam led"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_VERSION_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Read beam version"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_IP_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 274
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Read beam ip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    goto/16 :goto_0

    .line 276
    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_MAC_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Read beam mac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    goto/16 :goto_0

    .line 281
    .end local v0    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_6
    return-void
.end method

.method private readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 285
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->READ_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    invoke-direct {v0, p1, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;)V

    .line 287
    .local v0, "command":Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;
    invoke-direct {p0, v0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->queueCommand(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;Landroid/bluetooth/BluetoothGatt;)V

    .line 288
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 516
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mSwitchingToNewBeam:Z

    .line 517
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleDeviceTempList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGattList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 519
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 520
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 521
    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 522
    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mTempGatt:Landroid/bluetooth/BluetoothGatt;

    .line 523
    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 524
    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->beamIndex:I

    .line 525
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 526
    return-void
.end method

.method private setMouseCharacteristic(Landroid/bluetooth/BluetoothGatt;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 320
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "setMouseCharacteristic "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 322
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 323
    .local v0, "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->BEAM_MOUSE_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 329
    .end local v0    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    return-void

    .line 328
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0
.end method

.method private sleep(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 532
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startBleReadTimer()V
    .locals 4

    .prologue
    .line 742
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "startBleReadTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleReadTimer()V

    .line 744
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleReadTimeOutTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;

    .line 745
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 746
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleReadTimeOutTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 747
    return-void
.end method

.method private startBleScanningTimer()V
    .locals 4

    .prologue
    .line 703
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "startBleScanningTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleScanningTimer()V

    .line 705
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleScanningTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;

    .line 706
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 707
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleScanningTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 708
    return-void
.end method

.method private startBleTimer()V
    .locals 6

    .prologue
    .line 775
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "startBleTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleTimer()V

    .line 777
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;

    .line 778
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 779
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 780
    return-void
.end method

.method private startReleaseTimerTask()V
    .locals 4

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopReleaseTimerTask()V

    .line 803
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->releaseTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;

    .line 804
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 805
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->releaseTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 806
    return-void
.end method

.method private stopBleReadTimer()V
    .locals 2

    .prologue
    .line 750
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBleReadTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleReadTimeOutTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleReadTimeOutTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;->cancel()Z

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleReadTimeOutTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleReadTimeOutTask;

    .line 754
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBleReadTimer done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    return-void
.end method

.method private stopBleScanningTimer()V
    .locals 2

    .prologue
    .line 711
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBleScanningTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleScanningTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleScanningTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;->cancel()Z

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleScanningTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleScanningTimerTask;

    .line 715
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBleScanningTimer done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    return-void
.end method

.method private stopBleTimer()V
    .locals 2

    .prologue
    .line 783
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBleTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;->cancel()Z

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->bleTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$BleTimerTask;

    .line 787
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBleTimer done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    return-void
.end method

.method private stopReleaseTimerTask()V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->releaseTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->releaseTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;->cancel()Z

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->releaseTimer:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$ReleaseTimerTask;

    .line 815
    :cond_0
    return-void
.end method

.method private switchToNewBeamCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 449
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToNewBeamCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleReadTimer()V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mSwitchingToNewBeam:Z

    .line 452
    if-eqz p1, :cond_0

    .line 453
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_NO_BEAM:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 454
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    invoke-interface {v0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->onSwitchingCompleted(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleTimer()V

    .line 463
    :goto_0
    return-void

    .line 458
    :cond_0
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_BEAM_FOUND:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 460
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->onSwitchingCompleted(Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->startBleTimer()V

    goto :goto_0
.end method


# virtual methods
.method public closeCurrentConnection()V
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCurrentConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeConnection(Landroid/bluetooth/BluetoothGatt;)V

    .line 500
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleTimer()V

    goto :goto_0
.end method

.method protected dequeueCommand()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 695
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCommandLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 697
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopReleaseTimerTask()V

    goto :goto_0
.end method

.method public onDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->checkBleDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->connectToDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 207
    :cond_0
    return-void
.end method

.method public scanLeDevices(Z)V
    .locals 3
    .param p1, "scanForAllDevices"    # Z

    .prologue
    .line 161
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "startScan "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "BLE not turned on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v0, 0xb

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 165
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBleInterface:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;

    const-string v1, "Bluetooth turned off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;->onScanningCompleted(Ljava/lang/String;Ljava/util/List;)V

    .line 182
    :goto_0
    return-void

    .line 168
    :cond_0
    const/16 v0, 0xc

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 169
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeConnection(Landroid/bluetooth/BluetoothGatt;)V

    .line 170
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->reset()V

    .line 171
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleTimer()V

    .line 172
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mScanForAllDevices:Z

    .line 173
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->startBleScanningTimer()V

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->isScanningStopped:Z

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 176
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "startScan >= 21"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->getScanner(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->startScan()V

    goto :goto_0

    .line 180
    :cond_1
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "startScan < 21"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->getScanner(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->startScan()V

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 9
    .param p1, "commandStr"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x14

    .line 374
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v7, :cond_2

    .line 375
    :cond_0
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v7, "Invalid characteristic"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1
    return-void

    .line 380
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 381
    .local v2, "length":I
    if-le v2, v6, :cond_3

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BEAMSPS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BEAMEPS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 385
    :cond_3
    move v5, v2

    .line 386
    .local v5, "toSend":I
    const/4 v4, 0x0

    .line 388
    .local v4, "sent":I
    :goto_0
    if-lez v5, :cond_1

    .line 389
    if-le v5, v6, :cond_4

    move v3, v6

    .line 390
    .local v3, "packetLength":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 392
    .local v1, "data":Ljava/lang/StringBuilder;
    add-int v7, v3, v4

    if-ne v7, v2, :cond_5

    .line 393
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :goto_2
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v8, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->WRITE_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    invoke-direct {v0, v7, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;)V

    .line 400
    .local v0, "bluetoothCommand":Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    .line 401
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->queueCommand(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;Landroid/bluetooth/BluetoothGatt;)V

    .line 402
    sub-int/2addr v5, v3

    .line 403
    add-int/2addr v4, v3

    .line 404
    invoke-direct {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->sleep(I)V

    goto :goto_0

    .end local v0    # "bluetoothCommand":Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;
    .end local v1    # "data":Ljava/lang/StringBuilder;
    .end local v3    # "packetLength":I
    :cond_4
    move v3, v5

    .line 389
    goto :goto_1

    .line 395
    .restart local v1    # "data":Ljava/lang/StringBuilder;
    .restart local v3    # "packetLength":I
    :cond_5
    add-int v7, v4, v3

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public setBluetoothState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 155
    sput p1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 156
    return-void
.end method

.method public setUpCurrentBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z
    .locals 8
    .param p1, "bulb"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 331
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v6, "setUpCurrentBeam "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz p1, :cond_6

    .line 333
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUpCurrentBeam "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    .line 367
    :goto_0
    return v3

    .line 338
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 339
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 340
    .local v0, "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    iget-object v6, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v6, "beam found"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x1

    .line 349
    .local v2, "isBeamFound":Z
    :goto_2
    if-eqz v2, :cond_4

    .line 350
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGattList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    iput-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 351
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    sput-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCurrentBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 352
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->setMouseCharacteristic(Landroid/bluetooth/BluetoothGatt;)V

    .line 353
    sget v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->STATE_BEAM_FOUND:I

    sput v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    .line 354
    invoke-direct {p0, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeAllConnections(Z)V

    .line 355
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->startBleTimer()V

    move v3, v4

    .line 357
    goto :goto_0

    .line 343
    .end local v2    # "isBeamFound":Z
    :cond_2
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    iget-object v6, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v6, " beam found"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x1

    .restart local v2    # "isBeamFound":Z
    goto :goto_2

    .line 347
    .end local v2    # "isBeamFound":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isBeamFound":Z
    goto :goto_2

    .line 338
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v2    # "isBeamFound":Z
    :cond_5
    move v3, v5

    .line 360
    goto :goto_0

    .line 362
    .end local v1    # "index":I
    :cond_6
    iput-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 363
    sput-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mCurrentBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 364
    iput-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mMouseCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 365
    invoke-direct {p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->closeAllConnections(Z)V

    .line 366
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleTimer()V

    move v3, v4

    .line 367
    goto/16 :goto_0
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stop scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 191
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopScan >= 21"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->getScanner(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleL21Scanner;->stopScan()V

    goto :goto_0

    .line 195
    :cond_1
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopScan < 21"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->getScanner(Lcom/studiodiip/bulbbeam/mousecontroller/ble/IBleScanner;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleScanner;->stopScan()V

    goto :goto_0
.end method

.method public switchToBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V
    .locals 7
    .param p1, "beam"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f060012

    .line 411
    if-nez p1, :cond_1

    .line 412
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "the beam to switch is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->switchToNewBeamCompleted(Ljava/lang/String;)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchToBeam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mSwitchingToNewBeam:Z

    .line 419
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mScanForAllDevices:Z

    .line 420
    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mToSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "index":I
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->stopBleTimer()V

    .line 423
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 425
    .local v0, "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Switch beam found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mToSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 434
    :goto_2
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mToSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    if-eqz v2, :cond_5

    .line 435
    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 436
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->connectToDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 437
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->startBleReadTimer()V

    .line 442
    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_2
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mBeamList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 443
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "No beams found for switching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->switchToNewBeamCompleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    .restart local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_3
    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Switch beam found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mToSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    goto :goto_2

    .line 432
    :cond_4
    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->mToSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    goto :goto_2

    .line 423
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
