.class public Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;
.super Landroid/app/Fragment;
.source "TouchpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;,
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;
    }
.end annotation


# static fields
.field private static final ARG_KEY_FEED_ITEM:Ljava/lang/String; = "somekey"

.field public static scrollbarTouched:Z

.field private static tf:Landroid/graphics/Typeface;


# instance fields
.field private btnMultiTouch:Landroid/widget/ImageButton;

.field private defaultScrollBarPos:F

.field diffY:F

.field private h:Landroid/os/Handler;

.field private holdToGrab:Landroid/widget/TextView;

.field private mtListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;

.field private scrollBar:Landroid/view/View;

.field private scrollbarListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

.field private touched:Z

.field private touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

.field private touchpadHeigt:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollbarTouched:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touched:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touched:Z

    return v0
.end method

.method static synthetic access$002(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touched:Z

    return p1
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touchpadHeigt:F

    return v0
.end method

.method static synthetic access$102(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touchpadHeigt:F

    return p1
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->defaultScrollBarPos:F

    return v0
.end method

.method static synthetic access$202(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->defaultScrollBarPos:F

    return p1
.end method

.method static synthetic access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    return-object v0
.end method

.method static synthetic access$400(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->mtListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollbarListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollBar:Landroid/view/View;

    return-object v0
.end method

.method public static getTf(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->tf:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apercu-regular-webfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->tf:Landroid/graphics/Typeface;

    .line 47
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->tf:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static newInstance()Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;
    .locals 4

    .prologue
    .line 65
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-direct {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;-><init>()V

    .line 66
    .local v1, "f":Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "somekey"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->h:Landroid/os/Handler;

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touched:Z

    .line 79
    return-void

    .line 76
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 106
    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    .line 107
    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->btnMultiTouch:Landroid/widget/ImageButton;

    .line 108
    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollBar:Landroid/view/View;

    .line 109
    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->holdToGrab:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->holdToGrab:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->getTf(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->btnMultiTouch:Landroid/widget/ImageButton;

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollBar:Landroid/view/View;

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 243
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string v0, "somekey"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 216
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-object v1, v0

    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    invoke-virtual {v2, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->setTouchpadListener(Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;)V

    move-object v1, v0

    .line 218
    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->setScrollbarListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;)V

    .line 220
    :cond_0
    instance-of v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    if-eqz v1, :cond_1

    .line 221
    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->setMTListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;)V

    .line 226
    :cond_1
    return-void
.end method

.method public setMTListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->mtListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;

    .line 58
    return-void
.end method

.method public setScrollbarListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;)V
    .locals 0
    .param p1, "scrollbarListener"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollbarListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    .line 53
    return-void
.end method
