.class Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$3;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
