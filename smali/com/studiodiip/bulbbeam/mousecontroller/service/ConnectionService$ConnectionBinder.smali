.class public Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;
.super Landroid/os/Binder;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;


# direct methods
.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    return-object v0
.end method
