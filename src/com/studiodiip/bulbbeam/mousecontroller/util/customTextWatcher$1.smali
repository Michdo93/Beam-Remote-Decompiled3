.class Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher$1;
.super Ljava/lang/Object;
.source "customTextWatcher.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
