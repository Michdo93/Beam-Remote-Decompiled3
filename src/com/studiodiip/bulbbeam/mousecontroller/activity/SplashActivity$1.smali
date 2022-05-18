.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMessage(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$showBtn:Z

.field final synthetic val$startAnimation:Z


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->val$message:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->val$startAnimation:Z

    iput-boolean p4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->val$showBtn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->val$startAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->startAnimation()V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->val$showBtn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->stopAnimation()V

    goto :goto_0

    .line 100
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
