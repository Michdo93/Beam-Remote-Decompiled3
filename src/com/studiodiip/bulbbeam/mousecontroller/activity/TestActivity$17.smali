.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tempDisablePowerButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x3f19999a    # 0.6f

    const/4 v6, 0x1

    .line 1282
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1283
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1284
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2300(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1285
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    const v5, 0x7f0c006a

    invoke-virtual {v4, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;

    .line 1286
    .local v0, "btn1":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    const v5, 0x7f0c0073

    invoke-virtual {v4, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;

    .line 1287
    .local v1, "btn2":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    invoke-virtual {v0, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setAlpha(F)V

    .line 1288
    invoke-virtual {v1, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setAlpha(F)V

    .line 1289
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1290
    .local v2, "handje":Landroid/os/Handler;
    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;

    invoke-direct {v3, p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;Landroid/os/Handler;)V

    .line 1309
    .local v3, "r":Ljava/lang/Runnable;
    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1311
    .end local v0    # "btn1":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    .end local v1    # "btn2":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    .end local v2    # "handje":Landroid/os/Handler;
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1312
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$2400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setSwitchToProjectorEnabled(Z)V

    .line 1314
    :cond_1
    return-void
.end method
