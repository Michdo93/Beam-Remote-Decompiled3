.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$1;
.super Ljava/lang/Object;
.source "VideoGalleryFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGlobalLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 134
    return-void
.end method
