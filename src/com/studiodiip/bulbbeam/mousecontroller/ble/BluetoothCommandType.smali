.class public final enum Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;
.super Ljava/lang/Enum;
.source "BluetoothCommandType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

.field public static final enum NOTIFY_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

.field public static final enum READ_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

.field public static final enum WRITE_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    const-string v1, "READ_CHARACTERISTIC"

    invoke-direct {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->READ_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    .line 8
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    const-string v1, "WRITE_CHARACTERISTIC"

    invoke-direct {v0, v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->WRITE_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    .line 9
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    const-string v1, "NOTIFY_CHARACTERISTIC"

    invoke-direct {v0, v1, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->NOTIFY_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->READ_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->WRITE_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->NOTIFY_CHARACTERISTIC:Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->$VALUES:[Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    return-object v0
.end method

.method public static values()[Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->$VALUES:[Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    invoke-virtual {v0}, [Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/studiodiip/bulbbeam/mousecontroller/ble/BluetoothCommandType;

    return-object v0
.end method
