.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;
.super Ljava/lang/Object;
.source "TouchpadFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 97
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->val$v:Landroid/view/View;

    const v2, 0x7f0c0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "scrollBar":Landroid/view/View;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$102(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;F)F

    .line 100
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$202(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;F)F

    .line 101
    const-string v1, "scrollbar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultScrollBarPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0    # "scrollBar":Landroid/view/View;
    :cond_0
    return-void
.end method
