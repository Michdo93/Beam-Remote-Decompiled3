.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleDropDownVisible(ZZ)V
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
    .line 869
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$9;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$9;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$1400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$9;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$1500(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 875
    :cond_0
    return-void
.end method
