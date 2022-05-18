.class public Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
.super Ljava/lang/Object;
.source "BeamBulb.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

.field public ip:Ljava/lang/String;

.field public led:I

.field public mac:Ljava/lang/String;

.field public screenState:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public version:I

.field public volume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;

    invoke-direct {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;-><init>()V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->screenState:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 34
    .local v0, "connectionTypeOrdinal":I
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->values()[Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->volume:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "screenState"    # Ljava/lang/String;
    .param p4, "volume"    # I
    .param p5, "led"    # I
    .param p6, "version"    # I
    .param p7, "connectionType"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;
    .param p8, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->screenState:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->volume:I

    .line 46
    iput p5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    .line 47
    iput p6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    .line 48
    iput-object p8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "screenState"    # Ljava/lang/String;
    .param p4, "volume"    # I
    .param p5, "led"    # I
    .param p6, "connectionType"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;
    .param p7, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->screenState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
