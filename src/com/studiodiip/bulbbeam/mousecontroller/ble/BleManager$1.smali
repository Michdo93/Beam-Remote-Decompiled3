.class Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 619
    if-eqz p3, :cond_1

    .line 620
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beam name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->dequeueCommand()V

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 628
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beam volume level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->volume:I

    .line 630
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->dequeueCommand()V

    goto/16 :goto_0

    .line 631
    :cond_3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beam led level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    .line 634
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->dequeueCommand()V

    goto/16 :goto_0

    .line 635
    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 636
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beam version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    .line 638
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->dequeueCommand()V

    goto/16 :goto_0

    .line 639
    :cond_5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$800(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 640
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beam ip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->dequeueCommand()V

    goto/16 :goto_0

    .line 643
    :cond_6
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$900(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beam mac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    iput-object v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    .line 647
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->dequeueCommand()V

    .line 648
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1400(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    goto/16 :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 657
    if-nez p3, :cond_0

    .line 658
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->dequeueCommand()V

    .line 661
    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 544
    const-string v0, "onConnectionStateChange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    packed-switch p3, :pswitch_data_0

    .line 560
    :pswitch_0
    const-string v0, "gattCallback"

    const-string v1, "STATE_OTHER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 547
    :pswitch_1
    const-string v0, "gattCallback"

    const-string v1, "STATE_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    .line 551
    :pswitch_2
    const-string v0, "gattCallback"

    const-string v1, "STATE_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)V

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v6

    .line 567
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServicesDiscovered "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 569
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid device"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const/4 v5, 0x0

    .line 573
    .local v5, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    .line 575
    .local v4, "s":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v8

    iget-object v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v9}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 578
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Beam service UUID matches"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    move-object v5, v4

    .line 582
    .end local v4    # "s":Landroid/bluetooth/BluetoothGattService;
    :cond_3
    if-nez v5, :cond_4

    .line 583
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Beam service UUID does not match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_4
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    .line 587
    .local v0, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Characteristics discovered "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 590
    .local v2, "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 592
    .local v3, "gattCharacteristicUUID":Ljava/util/UUID;
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 594
    :cond_6
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    :cond_7
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 598
    :cond_8
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 600
    :cond_9
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$800(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 602
    :cond_a
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$900(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    :cond_b
    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v8}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 608
    .end local v2    # "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v3    # "gattCharacteristicUUID":Ljava/util/UUID;
    :cond_c
    const/4 v7, 0x7

    if-ne v1, v7, :cond_0

    .line 609
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Do a full scan "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v9}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    invoke-static {v7, v5, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V

    goto/16 :goto_0
.end method
