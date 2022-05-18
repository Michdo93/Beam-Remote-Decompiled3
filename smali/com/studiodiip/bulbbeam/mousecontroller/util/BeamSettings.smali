.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;
.super Ljava/lang/Object;
.source "BeamSettings.java"


# static fields
.field private static final KEY_LAST_USED_BEAM:Ljava/lang/String; = "last_used"

.field private static beamSettings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

.field public static isConnected:Z

.field public static shareIntent:Landroid/content/Intent;


# instance fields
.field private beamBulb:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

.field private beamPreferences:Landroid/content/SharedPreferences;

.field private currentMinZoomLevel:F

.field private isImageShownInFullScreen:Z

.field private isVideoPlayedInFullScreen:Z

.field private mImageBitMapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mImagePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoBitMapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImagePathList:Ljava/util/ArrayList;

    .line 24
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoPathList:Ljava/util/ArrayList;

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->currentMinZoomLevel:F

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamPreferences:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamSettings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamSettings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamSettings:Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    .line 41
    :cond_0
    return-void
.end method

.method private initImageMemoryCache()V
    .locals 6

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 105
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0xa

    .line 106
    .local v0, "cacheSize":I
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings$1;

    invoke-direct {v2, p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;I)V

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImageBitMapCache:Landroid/util/LruCache;

    .line 114
    return-void
.end method

.method private initVideoMemoryCache()V
    .locals 6

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 118
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0xa

    .line 119
    .local v0, "cacheSize":I
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings$2;

    invoke-direct {v2, p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;I)V

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoBitMapCache:Landroid/util/LruCache;

    .line 127
    return-void
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImageBitMapCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->initImageMemoryCache()V

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImageBitMapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addVideoBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoBitMapCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->initVideoMemoryCache()V

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoBitMapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImageBitMapCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->initImageMemoryCache()V

    .line 153
    :cond_0
    if-nez p1, :cond_1

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImageBitMapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCurrentMinZoomLevel()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->currentMinZoomLevel:F

    return v0
.end method

.method public getImagePathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImagePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastUsedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamPreferences:Landroid/content/SharedPreferences;

    const-string v4, "last_used"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "json":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-object v2

    :cond_0
    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    goto :goto_0
.end method

.method public getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamBulb:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    return-object v0
.end method

.method public getVideoBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoBitMapCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->initVideoMemoryCache()V

    .line 175
    :cond_0
    if-nez p1, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoBitMapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getVideoPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isImageShownInFullScreen()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isImageShownInFullScreen:Z

    return v0
.end method

.method public isVideoPlayedInFullScreen()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isVideoPlayedInFullScreen:Z

    return v0
.end method

.method public setCurrentMinZoomLevel(F)V
    .locals 0
    .param p1, "val"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->currentMinZoomLevel:F

    .line 131
    return-void
.end method

.method public setImagePathList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mImagePathList:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public setImageShownInFullScreen(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isImageShownInFullScreen:Z

    .line 65
    return-void
.end method

.method public setLastUsedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V
    .locals 4
    .param p1, "value"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    .line 49
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 50
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_used"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V
    .locals 0
    .param p1, "value"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->beamBulb:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 89
    return-void
.end method

.method public setVideoPathList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->mVideoPathList:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method public setVideoPlayedInFullScreen(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isVideoPlayedInFullScreen:Z

    .line 73
    return-void
.end method
