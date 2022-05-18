.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$ChangeScanningTextTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 365
    return-void
.end method
