.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$8;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 205
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$8;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    iget-boolean v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->screenToggleChecked:Z

    if-eq p2, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$8;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    iput-boolean p2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->screenToggleChecked:Z

    .line 208
    if-eqz p2, :cond_2

    .line 210
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v1, "c"

    const-string v2, "s_on"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v1, "c"

    const-string v2, "s_off"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
