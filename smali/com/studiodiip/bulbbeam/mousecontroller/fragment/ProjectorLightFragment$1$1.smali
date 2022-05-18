.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;
.super Ljava/lang/Object;
.source "ProjectorLightFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1e

    .line 118
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "switchButton":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    .end local v0    # "switchButton":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
