.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;
.super Ljava/lang/Object;
.source "ConnectionServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    check-cast p2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;->getService()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->access$002(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .line 99
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-static {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->access$102(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Z)Z

    .line 100
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-static {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->access$202(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Z)Z

    .line 101
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->access$102(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Z)Z

    .line 106
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->access$202(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;Z)Z

    .line 107
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
