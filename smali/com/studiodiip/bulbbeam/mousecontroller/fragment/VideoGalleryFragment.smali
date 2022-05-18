.class public Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;
.super Landroid/app/Fragment;
.source "VideoGalleryFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$GestureListener;
    }
.end annotation


# static fields
.field private static final ARG_KEY_FEED_ITEM:Ljava/lang/String; = "somekey"

.field private static final STATE_CURRENT_POS:Ljava/lang/String; = "currentPos"

.field private static final STATE_VIDEO_LIST:Ljava/lang/String; = "videoList"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentPos:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gridView:Landroid/widget/GridView;

.field private isVideoPlaying:Z

.field private mContext:Landroid/content/Context;

.field mMediaRecorder:Landroid/media/MediaRecorder;

.field private mVideoAdapter:Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;

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

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private vidHolder:Landroid/view/SurfaceHolder;

.field private videoView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->prepareMediaPlayer(I)V

    return-void
.end method

.method private captureScreen()V
    .locals 10

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "i":I
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/myImages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 354
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v6, "test.jpg"

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v3, "imgfile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v5

    .line 358
    .local v5, "sh":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 359
    .local v4, "os":Ljava/io/OutputStream;
    const-string v6, "/system/bin/screencap -p /sdcard/myImages/t.jpg"

    const-string v7, "ASCII"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 360
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 361
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 362
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    add-int/lit8 v2, v2, 0x1

    .line 367
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "sh":Ljava/lang/Process;
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 222
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 234
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 235
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 236
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v1, "/sdcard/test.mp4"

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 238
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 239
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->vidHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 240
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    goto :goto_0
.end method

.method private loadVideos(Landroid/content/Context;)V
    .locals 14
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 70
    .local v10, "isSDPresent":Ljava/lang/Boolean;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "No sd card mounted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v12, "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 76
    .local v2, "columns":[Ljava/lang/String;
    const-string v11, "datetaken DESC"

    .line 78
    .local v11, "orderBy":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "datetaken DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 83
    .local v6, "count":I
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total videos "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_1

    .line 87
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 88
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 90
    .local v8, "dataColumnIndex":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "videoPath":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 94
    .end local v8    # "dataColumnIndex":I
    .end local v13    # "videoPath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setVideoPathList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-direct {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;-><init>()V

    .line 62
    .local v1, "f":Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;
    const-string v2, "somekey"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method private prepareMediaPlayer(I)V
    .locals 3
    .param p1, "videoID"    # I

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->vidHolder:Landroid/view/SurfaceHolder;

    .line 260
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->vidHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 261
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->vidHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 262
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 263
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 264
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 269
    :goto_1
    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private prepareMediaRecorder()V
    .locals 3

    .prologue
    .line 243
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 246
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startVideo()V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "startVideo "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->isVideoPlaying:Z

    .line 205
    :cond_0
    return-void
.end method

.method private stopVideo()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "stopVideo "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->isVideoPlaying:Z

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "isVideoPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->isVideoPlaying:Z

    .line 216
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 217
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public closeFullScreenView()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "closeFullScreenView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gridView:Landroid/widget/GridView;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->stopVideo()V

    .line 152
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v0, "currentPos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    .line 123
    const-string v0, "videoList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    .line 124
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 125
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "No full screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$1;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "save"    # Landroid/os/Bundle;

    .prologue
    .line 113
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 161
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const v1, 0x7f030024

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mContext:Landroid/content/Context;

    .line 164
    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gridView:Landroid/widget/GridView;

    .line 165
    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    .line 166
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->vidHolder:Landroid/view/SurfaceHolder;

    .line 167
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->vidHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 170
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$GestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$GestureListener;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gestureDetector:Landroid/view/GestureDetector;

    .line 171
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getVideoPathList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    .line 172
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->loadVideos(Landroid/content/Context;)V

    .line 174
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getVideoPathList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    .line 176
    :cond_0
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoAdapter:Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;

    .line 177
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoAdapter:Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->videoView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gridView:Landroid/widget/GridView;

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    return-object v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 388
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->startVideo()V

    .line 391
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "currentPos"

    iget v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v0, "videoList"

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 104
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 109
    return-void
.end method

.method public onSwipeLeft()V
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSwipeLeft"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mVideoPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 306
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "Last Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    .line 311
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->stopVideo()V

    .line 312
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->prepareMediaPlayer(I)V

    goto :goto_0
.end method

.method public onSwipeRight()V
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSwipeRight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    if-nez v0, :cond_0

    .line 295
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "First Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    .line 299
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->stopVideo()V

    .line 300
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->currentPos:I

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->prepareMediaPlayer(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 273
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onTouch "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return v2

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->isVideoPlaying:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->isVideoPlaying:Z

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 282
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->isVideoPlaying:Z

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 378
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "surfaceChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 372
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 383
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "surfaceDestroyed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method
