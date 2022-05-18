.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;
.super Ljava/lang/Object;
.source "VideoGalleryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 182
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-static {v0, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$302(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;I)I

    .line 187
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On item selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 190
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setVideoPlayedInFullScreen(Z)V

    .line 191
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-static {v0, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;I)V

    .line 192
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/VideoGalleryFragment;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    return-void
.end method
