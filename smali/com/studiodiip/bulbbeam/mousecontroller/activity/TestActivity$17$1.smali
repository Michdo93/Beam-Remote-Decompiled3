.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

.field final synthetic val$handje:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->val$handje:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v4, 0x3dcccccd    # 0.1f

    const/4 v6, 0x1

    .line 1293
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1294
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1295
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2300(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1296
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    const v3, 0x7f0c006a

    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;

    .line 1297
    .local v0, "btn1":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    const v3, 0x7f0c0073

    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;

    .line 1298
    .local v1, "btn2":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1299
    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->getAlpha()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setAlpha(F)V

    .line 1300
    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->getAlpha()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setAlpha(F)V

    .line 1301
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->val$handje:Landroid/os/Handler;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1304
    .end local v0    # "btn1":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    .end local v1    # "btn2":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    :cond_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1305
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setSwitchToProjectorEnabled(Z)V

    .line 1307
    :cond_1
    return-void
.end method
