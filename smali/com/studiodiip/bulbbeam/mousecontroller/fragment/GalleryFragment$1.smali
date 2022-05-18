.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGlobalLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;I)V

    .line 148
    return-void
.end method
