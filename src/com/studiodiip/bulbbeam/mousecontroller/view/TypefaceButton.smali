.class public Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
.super Landroid/widget/Button;
.source "TypefaceButton.java"


# static fields
.field private static tf:Landroid/graphics/Typeface;

.field private static tfb:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public static getTf(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->tf:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apercu-regular-webfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->tf:Landroid/graphics/Typeface;

    .line 17
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->tf:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getTfb(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->tfb:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apercu-bold-webfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->tfb:Landroid/graphics/Typeface;

    .line 25
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->tfb:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "bold":Z
    if-eqz p2, :cond_0

    .line 56
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "textStyle"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "xmlProvidedStyle":Ljava/lang/String;
    const-string v2, "0x1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 63
    .end local v1    # "xmlProvidedStyle":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    invoke-static {p1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->getTfb(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->getTf(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method
