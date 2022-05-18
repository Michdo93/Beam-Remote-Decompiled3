.class final Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;
.super Ljava/lang/Object;
.source "BeamBulb.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;-><init>(Landroid/os/Parcel;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;->createFromParcel(Landroid/os/Parcel;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 76
    new-array v0, p1, [Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb$1;->newArray(I)[Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    return-object v0
.end method
