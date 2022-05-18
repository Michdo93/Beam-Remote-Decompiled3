.class public Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;
.super Ljava/lang/Object;
.source "BluetoothCommand.java"


# static fields
.field private static final BEAM_NOTIFICATION_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "BleManager"


# instance fields
.field private mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mType:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->BEAM_NOTIFICATION_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "type"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 23
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mType:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    .line 24
    return-void
.end method


# virtual methods
.method public execute(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mType:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->READ_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    if-ne v1, v2, :cond_1

    .line 30
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mType:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->WRITE_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    if-ne v1, v2, :cond_2

    .line 33
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mType:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->NOTIFY_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    if-ne v1, v2, :cond_0

    .line 36
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 37
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommand;->BEAM_NOTIFICATION_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 38
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 39
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method
