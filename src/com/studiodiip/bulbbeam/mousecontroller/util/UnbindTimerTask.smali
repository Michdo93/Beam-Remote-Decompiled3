.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask;
.super Ljava/util/TimerTask;
.source "UnbindTimerTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask$1;

    invoke-direct {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask$1;-><init>()V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask;->TAG:Ljava/lang/String;

    const-string v1, "Its ten seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->unbindConnectionService()V

    .line 25
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/UnbindTimerTask;->cancel()Z

    .line 26
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 43
    return-void
.end method
