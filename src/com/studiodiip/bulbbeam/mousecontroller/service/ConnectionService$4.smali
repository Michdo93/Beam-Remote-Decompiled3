.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;
.super Ljava/lang/Thread;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->val$type:Ljava/lang/String;

    const-string v1, "led"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$2000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;)V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->val$type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$2000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;)V

    goto :goto_0
.end method
