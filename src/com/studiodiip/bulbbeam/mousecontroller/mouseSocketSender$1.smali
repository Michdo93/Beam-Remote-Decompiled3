.class Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;
.super Ljava/lang/Thread;
.source "mouseSocketSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->connectToSocket()V

    .line 91
    return-void
.end method
