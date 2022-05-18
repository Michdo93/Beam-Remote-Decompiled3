.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoThumbnailAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private showVideoThumbnail:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->mVideoPathList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;

    invoke-direct {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->showVideoThumbnail:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;

    .line 24
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->mContext:Landroid/content/Context;

    .line 25
    if-nez p2, :cond_0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->mVideoPathList:Ljava/util/ArrayList;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->mVideoPathList:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->mVideoPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x15e

    const/16 v2, 0x8

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->showVideoThumbnail:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/VideoThumbnailAdapter;->mVideoPathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->loadvideoThumbnail(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 62
    return-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 58
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    goto :goto_0
.end method
