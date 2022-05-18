.class public final enum Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;
.super Ljava/lang/Enum;
.source "BeamConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

.field public static final enum CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

.field public static final enum CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    const-string v1, "CONNECTION_TYPE_WIFI"

    invoke-direct {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    .line 8
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    const-string v1, "CONNECTION_TYPE_BLUETOOTH"

    invoke-direct {v0, v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->$VALUES:[Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->$VALUES:[Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    invoke-virtual {v0}, [Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    return-object v0
.end method
