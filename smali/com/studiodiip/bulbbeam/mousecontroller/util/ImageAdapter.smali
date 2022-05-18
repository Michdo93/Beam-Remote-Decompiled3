.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
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
    .line 21
    .local p2, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mImagePathList:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mContext:Landroid/content/Context;

    .line 23
    if-nez p2, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mImagePathList:Ljava/util/ArrayList;

    .line 28
    :goto_0
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .line 29
    return-void

    .line 26
    :cond_0
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mImagePathList:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x15e

    const/16 v1, 0x8

    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 53
    .local v2, "imageView":Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 63
    return-object v2

    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    move-object v2, p2

    .line 57
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2    # "imageView":Landroid/widget/ImageView;
    goto :goto_0
.end method
