.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$2;
.super Ljava/lang/Thread;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    .line 106
    return-void
.end method
