.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$5;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->showMobileDataOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$1102(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Z)Z

    .line 242
    return-void
.end method
