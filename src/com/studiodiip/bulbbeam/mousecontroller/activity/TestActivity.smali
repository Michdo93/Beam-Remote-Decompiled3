.class public Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TestActivity.java"

# interfaces
.implements Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;
.implements Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;
.implements Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;
.implements Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;
.implements Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;
.implements Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;
.implements Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;
.implements Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;,
        Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_SHARE:Ljava/lang/String; = "ACTION_SHARE"

.field private static final TAG:Ljava/lang/String;

.field private static final UNBIND_TIME_INTERVAL_SECONDS:I = 0xa

.field private static isTestingApp:Z

.field private static unbindTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;


# instance fields
.field private beamBulbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
            ">;"
        }
    .end annotation
.end field

.field private bottomBar:Landroid/view/View;

.field private bottomBarExtended:Landroid/view/View;

.field private bottomBarTop:Landroid/view/View;

.field private brightnessSlider:Landroid/widget/SeekBar;

.field private btnLight:Landroid/view/View;

.field private btnMoreLess:Landroid/widget/TextView;

.field private btnOnOff:Landroid/view/View;

.field connectionReceiver:Landroid/content/BroadcastReceiver;

.field private connectionTypeImageView:Landroid/widget/ImageView;

.field private contentFrame:Landroid/widget/FrameLayout;

.field private currentScreenBrightness:I

.field currentTouchIsMulti:Z

.field currentTouchIsPinch:Z

.field private currentVolume:I

.field private defaultUI:Landroid/view/View;

.field downTime:J

.field private fragment:Landroid/app/Fragment;

.field private fragmentTag:Ljava/lang/String;

.field private isBottomBarExtended:Z

.field private isBrightnessProgessFirstCalled:Z

.field private isKeyStoneProgressFirstCalled:Z

.field private isProjectorLightActive:Z

.field private isShareIntentAvailable:Z

.field private isTitleDropDownVisible:Z

.field private isTitleEditable:Z

.field private isVolumeProgressFirstCalled:Z

.field private keystoneSlider:Landroid/widget/SeekBar;

.field private lastTimestamp:F

.field lasttime:J

.field private mBeamChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

.field private oldBeamName:Ljava/lang/String;

.field oldX:F

.field oldY:F

.field private projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

.field private projectorLightUI:Landroid/view/View;

.field private selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

.field private selectedTabId:I

.field private tabGallery:Landroid/widget/TextView;

.field private tabKeyboard:Landroid/widget/TextView;

.field private tabKeypad:Landroid/widget/TextView;

.field private tabTouchpad:Landroid/widget/TextView;

.field private titleDisclosure:Landroid/widget/ImageView;

.field private titleDropDownWrapper:Landroid/view/View;

.field private titleDropdownAdapter:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;

.field private titleDropdownListView:Landroid/widget/ListView;

.field private titleEditText:Landroid/widget/EditText;

.field private titleKeyListener:Landroid/text/method/KeyListener;

.field private toSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

.field private touchpadFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

.field private usingBluetooth:Z

.field private volumeSlider:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTestingApp:Z

    .line 76
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 80
    const v0, 0x7f0c005f

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedTabId:I

    .line 81
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    .line 82
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    .line 83
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBottomBarExtended:Z

    .line 84
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isProjectorLightActive:Z

    .line 85
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isShareIntentAvailable:Z

    .line 86
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->usingBluetooth:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    .line 111
    iput v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentVolume:I

    .line 112
    const/16 v0, 0x100

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentScreenBrightness:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldBeamName:Ljava/lang/String;

    .line 121
    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isVolumeProgressFirstCalled:Z

    .line 122
    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isKeyStoneProgressFirstCalled:Z

    .line 123
    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBrightnessProgessFirstCalled:Z

    .line 126
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->lastTimestamp:F

    .line 128
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->mBeamChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1341
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldX:F

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldY:F

    .line 1343
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->downTime:J

    .line 1344
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentTouchIsMulti:Z

    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentTouchIsPinch:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->updateBeams()V

    return-void
.end method

.method static synthetic access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBrightnessProgessFirstCalled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBrightnessProgessFirstCalled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentScreenBrightness:I

    return v0
.end method

.method static synthetic access$1102(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentScreenBrightness:I

    return p1
.end method

.method static synthetic access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropDownWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleEditable(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->layoutContentFrame()V

    return-void
.end method

.method static synthetic access$1900(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBarExtended:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->defaultUI:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnOnOff:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnLight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->usingBluetooth:Z

    return v0
.end method

.method static synthetic access$402(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->usingBluetooth:Z

    return p1
.end method

.method static synthetic access$500(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setSelectedBeamByPosition(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleDropDownVisible(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isVolumeProgressFirstCalled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isVolumeProgressFirstCalled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentVolume:I

    return v0
.end method

.method static synthetic access$802(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentVolume:I

    return p1
.end method

.method static synthetic access$900(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isKeyStoneProgressFirstCalled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isKeyStoneProgressFirstCalled:Z

    return p1
.end method

.method private findMoreBeams()V
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "splashIntent":Landroid/content/Intent;
    const-string v1, "shouldScanFully"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    const/4 v1, 0x0

    sput-boolean v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 199
    return-void
.end method

.method private handleProgressBars()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 466
    const v6, 0x7f0c0075

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->volumeSlider:Landroid/widget/SeekBar;

    .line 467
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->volumeSlider:Landroid/widget/SeekBar;

    new-instance v7, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;

    invoke-direct {v7, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 496
    const v6, 0x7f0c0077

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->keystoneSlider:Landroid/widget/SeekBar;

    .line 497
    const/4 v5, 0x1

    .line 498
    .local v5, "step":I
    const/16 v2, 0x28

    .line 499
    .local v2, "max":I
    const/16 v3, -0x28

    .line 500
    .local v3, "min":I
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->keystoneSlider:Landroid/widget/SeekBar;

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 501
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->keystoneSlider:Landroid/widget/SeekBar;

    new-instance v7, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$6;

    invoke-direct {v7, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$6;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 523
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->keystoneSlider:Landroid/widget/SeekBar;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 524
    const v6, 0x7f0c0076

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;

    .line 525
    .local v1, "keyStoneTitle":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    invoke-virtual {v1, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setVisibility(I)V

    .line 527
    const v6, 0x7f0c0079

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->brightnessSlider:Landroid/widget/SeekBar;

    .line 528
    const/16 v4, 0xf6

    .line 529
    .local v4, "screenBrightness":I
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->brightnessSlider:Landroid/widget/SeekBar;

    const/16 v7, 0xf6

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 530
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->brightnessSlider:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentScreenBrightness:I

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 531
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->brightnessSlider:Landroid/widget/SeekBar;

    new-instance v7, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;

    invoke-direct {v7, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 576
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->brightnessSlider:Landroid/widget/SeekBar;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 577
    const v6, 0x7f0c0078

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;

    .line 578
    .local v0, "brightnessSlider":Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;
    invoke-virtual {v0, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceButton;->setVisibility(I)V

    .line 579
    return-void
.end method

.method private handleShareIntent()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method private initializeDataFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 651
    const-string v0, "selectedTabId"

    iget v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedTabId:I

    .line 652
    const-string v0, "isTitleDropDownVisible"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    .line 653
    const-string v0, "isTitleEditable"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    .line 654
    const-string v0, "isBottomBarExtended"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBottomBarExtended:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBottomBarExtended:Z

    .line 655
    const-string v0, "isProjectorLightActive"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isProjectorLightActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isProjectorLightActive:Z

    .line 656
    const-string v0, "BeamSettings.isConnected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 657
    const-string v0, "currentVolume"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentVolume:I

    .line 658
    const-string v0, "selectedBeam"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 659
    const-string v0, "toSwitchBeam"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->toSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 660
    const-string v0, "usingBluetooth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->usingBluetooth:Z

    .line 661
    const-string v0, "fragmentTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    .line 662
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 663
    return-void
.end method

.method private layoutContentFrame()V
    .locals 3

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->defaultUI:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->contentFrame:Landroid/widget/FrameLayout;

    .line 1320
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 1321
    .local v0, "defaultHeight":I
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1322
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1323
    return-void
.end method

.method private registerReceivers()V
    .locals 5

    .prologue
    .line 759
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "beams-discovered"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 761
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 762
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->connectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 765
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->mBeamChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "beamchanged"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 767
    return-void
.end method

.method private setBottomBarExtended(ZZ)V
    .locals 6
    .param p1, "extended"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1166
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBottomBarExtended:Z

    .line 1168
    if-eqz p1, :cond_1

    .line 1169
    if-eqz p2, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBar:Landroid/view/View;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBarExtended:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1171
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBar:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1172
    .local v0, "translateAnim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$11;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$11;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1178
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1189
    .end local v0    # "translateAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnMoreLess:Landroid/widget/TextView;

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1211
    :goto_1
    return-void

    .line 1180
    :cond_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBarExtended:Landroid/view/View;

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$12;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$12;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1191
    :cond_1
    if-eqz p2, :cond_2

    .line 1192
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBar:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBarExtended:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1193
    .restart local v0    # "translateAnim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$13;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$13;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1199
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1209
    .end local v0    # "translateAnim":Landroid/animation/ObjectAnimator;
    :goto_2
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnMoreLess:Landroid/widget/TextView;

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1201
    :cond_2
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBarExtended:Landroid/view/View;

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$14;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$14;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private setContentFragmentByTabId(IIZ)V
    .locals 10
    .param p1, "tabId"    # I
    .param p2, "prevSelectedTabId"    # I
    .param p3, "animated"    # Z

    .prologue
    const v9, 0x7f0c0060

    .line 991
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setContentFragmentByTabId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/high16 v2, 0x7f050000

    .line 993
    .local v2, "inAnim":I
    const v4, 0x7f050001

    .line 994
    .local v4, "outAnim":I
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragment is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fragmentTag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isImageShownInFullScreen()Z

    move-result v3

    .line 996
    .local v3, "isImageShownInFullScreen":Z
    const/4 v1, 0x0

    .line 997
    .local v1, "hideGallery":Z
    if-eqz v3, :cond_0

    .line 998
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setImageShownInFullScreen(Z)V

    .line 1000
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1003
    const-string v6, "keypad"

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    .line 1004
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1005
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    if-nez v6, :cond_1

    .line 1006
    const-string v6, ""

    const-string v7, "keypad is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->newInstance()Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1064
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 1065
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_2

    .line 1066
    invoke-virtual {v5, v2, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1068
    :cond_2
    const v6, 0x7f0c0062

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    const/4 v7, 0x0

    .line 1069
    invoke-virtual {v6, v7}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 1070
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 1073
    if-ne p1, v9, :cond_8

    .line 1074
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1075
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    check-cast v6, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;

    invoke-virtual {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->onFragmentSelected()V

    .line 1083
    .end local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_3
    :goto_1
    return-void

    .line 1012
    :pswitch_0
    const-string v6, "touchpad"

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    .line 1013
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1014
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    if-nez v6, :cond_4

    .line 1015
    const-string v6, ""

    const-string v7, "touch is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->newInstance()Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1018
    :cond_4
    const v6, 0x7f0c005e

    if-ne p2, v6, :cond_1

    .line 1019
    const v2, 0x7f050002

    .line 1020
    const v4, 0x7f050003

    goto :goto_0

    .line 1025
    :pswitch_1
    const-string v6, "keyboard"

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    .line 1026
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1027
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    if-nez v6, :cond_5

    .line 1028
    const-string v6, ""

    const-string v7, "keyboard is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->newInstance()Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1031
    :cond_5
    const v2, 0x7f050002

    .line 1032
    const v4, 0x7f050003

    .line 1034
    goto/16 :goto_0

    .line 1036
    :pswitch_2
    const-string v6, "gallery"

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    .line 1037
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1038
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    if-nez v6, :cond_6

    .line 1039
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->newInstance(Landroid/content/Context;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1042
    :cond_6
    if-eqz v3, :cond_7

    .line 1043
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    .line 1044
    .local v0, "f":Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->closeFullScreenView()V

    goto :goto_1

    .line 1047
    .end local v0    # "f":Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
    :cond_7
    const v2, 0x7f050002

    .line 1048
    const v4, 0x7f050003

    goto/16 :goto_0

    .line 1076
    .restart local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_8
    if-ne p2, v9, :cond_3

    .line 1077
    const-string v6, "keyboard"

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    .line 1079
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    if-eqz v6, :cond_3

    .line 1080
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    check-cast v6, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;

    invoke-virtual {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->onFragmentDismissed()V

    goto/16 :goto_1

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c005f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setProjectorLightActive(ZZ)V
    .locals 5
    .param p1, "active"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 1214
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isProjectorLightActive:Z

    .line 1216
    if-eqz p1, :cond_1

    .line 1217
    if-eqz p2, :cond_0

    .line 1218
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1219
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const v3, 0x7f050002

    invoke-static {p0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 1220
    .local v1, "inAnim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightUI:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1221
    const v3, 0x7f050003

    invoke-static {p0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 1222
    .local v2, "outAnim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->defaultUI:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1223
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1224
    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$15;

    invoke-direct {v3, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$15;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1232
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1266
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v1    # "inAnim":Landroid/animation/AnimatorSet;
    .end local v2    # "outAnim":Landroid/animation/AnimatorSet;
    :goto_0
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tempDisablePowerButtons()V

    .line 1267
    return-void

    .line 1234
    :cond_0
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->defaultUI:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1238
    :cond_1
    if-eqz p2, :cond_2

    .line 1239
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v4, "anianiania"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1241
    .restart local v0    # "animSet":Landroid/animation/AnimatorSet;
    const/high16 v3, 0x7f050000

    invoke-static {p0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 1242
    .restart local v1    # "inAnim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->defaultUI:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1244
    const v3, 0x7f050001

    invoke-static {p0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 1245
    .restart local v2    # "outAnim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightUI:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1247
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1248
    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$16;

    invoke-direct {v3, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$16;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1259
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1261
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v1    # "inAnim":Landroid/animation/AnimatorSet;
    .end local v2    # "outAnim":Landroid/animation/AnimatorSet;
    :cond_2
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->defaultUI:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;Z)V
    .locals 13
    .param p1, "beamBulb"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .param p2, "showSplash"    # Z

    .prologue
    const v12, 0x7f0c0069

    const v11, 0x7f0c0068

    const v10, 0x7f0c0067

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 202
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v4, "SetSelectedBeam "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 204
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-nez p1, :cond_0

    .line 205
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v4, "Beam == null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v2, "splashIntent":Landroid/content/Intent;
    sput-boolean v9, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 208
    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->finish()V

    .line 258
    .end local v2    # "splashIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 214
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 215
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setLastUsedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 216
    if-eqz p2, :cond_1

    .line 217
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->unbindConnectionService()V

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "intentone":Landroid/content/Intent;
    const v3, 0x14008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    sput-boolean v9, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 222
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->finish()V

    goto :goto_0

    .line 226
    .end local v0    # "intentone":Landroid/content/Intent;
    :cond_1
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Beam found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v3, 0x1

    sput-boolean v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 228
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->volume:I

    iput v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentVolume:I

    .line 229
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->volumeSlider:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentVolume:I

    int-to-double v4, v4

    const-wide v6, 0x401aab020c49ba5eL    # 6.667

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 230
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->keystoneSlider:Landroid/widget/SeekBar;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 231
    iget-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    if-nez v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v4, v4, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v3, v4, :cond_3

    .line 235
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->connectionTypeImageView:Landroid/widget/ImageView;

    const v4, 0x7f020036

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    :goto_1
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v5, v5, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 241
    invoke-virtual {p0, v11}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-virtual {p0, v12}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {p0, v10}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v3, 0x7f0c0070

    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const v3, 0x7f0c0071

    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const v3, 0x7f0c006f

    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :goto_2
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->updateBeams()V

    goto/16 :goto_0

    .line 237
    :cond_3
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->connectionTypeImageView:Landroid/widget/ImageView;

    const v4, 0x7f0200c2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {p0, v11}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {p0, v12}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual {p0, v10}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 253
    const v3, 0x7f0c0070

    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 254
    const v3, 0x7f0c0071

    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const v3, 0x7f0c006f

    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private setSelectedBeamByPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 159
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v3, "setSelectedBeamByPosition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->updateBeams()V

    .line 161
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    .local v0, "numBeams":I
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedBeamByPosition beam list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    add-int/lit8 v2, v0, -0x2

    if-ne p1, v2, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findMoreBeams()V

    .line 168
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->finish()V

    .line 177
    :goto_0
    return-void

    .line 170
    :cond_0
    add-int/lit8 v2, v0, -0x2

    if-le p1, v2, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->showPrivacyPolicy()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 176
    .local v1, "selectedBeam":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;Z)V

    goto :goto_0
.end method

.method private setSelectedTabId(IZ)V
    .locals 6
    .param p1, "tabId"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v5, -0x1

    .line 950
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedTabId:I

    .line 951
    .local v2, "prevSelectedTabId":I
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedTabId:I

    .line 952
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    .line 953
    .local v0, "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-nez v0, :cond_0

    .line 988
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 957
    .local v1, "inactiveColor":I
    packed-switch p1, :pswitch_data_0

    .line 987
    :goto_1
    invoke-direct {p0, p1, v2, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setContentFragmentByTabId(IIZ)V

    goto :goto_0

    .line 959
    :pswitch_0
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeypad:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 960
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabTouchpad:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 961
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeyboard:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 962
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabGallery:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 966
    :pswitch_1
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeypad:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 967
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabTouchpad:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 968
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeyboard:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 969
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabGallery:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 973
    :pswitch_2
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeypad:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 974
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabTouchpad:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 975
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeyboard:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 976
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabGallery:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 980
    :pswitch_3
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeypad:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 981
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabTouchpad:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 982
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeyboard:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 983
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabGallery:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 957
    :pswitch_data_0
    .packed-switch 0x7f0c005e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTitleDropDownVisible(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 853
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    .line 854
    if-eqz p1, :cond_1

    .line 855
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropDownWrapper:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 856
    if-eqz p2, :cond_0

    .line 857
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropDownWrapper:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 858
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 859
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 860
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 861
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropDownWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 862
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDisclosure:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 885
    :goto_0
    return-void

    .line 866
    :cond_1
    if-eqz p2, :cond_2

    .line 867
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    .line 868
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$9;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$9;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    .line 869
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 877
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropDownWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 878
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 882
    :goto_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDisclosure:Landroid/widget/ImageView;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 883
    invoke-direct {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleEditable(Z)V

    goto :goto_0

    .line 880
    :cond_2
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropDownWrapper:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTitleEditable(Z)V
    .locals 5
    .param p1, "editable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 888
    if-eqz p1, :cond_1

    .line 889
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v2, "setting editable true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldBeamName:Ljava/lang/String;

    .line 891
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 892
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 893
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 894
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 895
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 896
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$10;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$10;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 909
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 910
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 924
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    .line 925
    return-void

    .line 913
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v2, "setting editable false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 915
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 916
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDisclosure:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 917
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 918
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 919
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldBeamName:Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldBeamName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldBeamName:Ljava/lang/String;

    .line 921
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "name"

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldBeamName:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showPrivacyPolicy()V
    .locals 4

    .prologue
    .line 181
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://beamlabsinc.com/privacy/"

    .line 182
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Please install a web browser to view the privacy policy"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 625
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$8;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method private startUnbindTimerTask()V
    .locals 4

    .prologue
    .line 783
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v2, "startUnbindTimerTask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->stopUnbindTimerTask()V

    .line 785
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;)V

    sput-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->unbindTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;

    .line 786
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 787
    .local v0, "timer":Ljava/util/Timer;
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->unbindTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 788
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v2, "startUnbindTimerTask done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void
.end method

.method private stopUnbindTimerTask()V
    .locals 2

    .prologue
    .line 793
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopUnbindTimerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->unbindTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;

    if-eqz v0, :cond_0

    .line 795
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->unbindTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;->cancel()Z

    .line 796
    const/4 v0, 0x0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->unbindTimerTask:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$UnbindTimerTask;

    .line 797
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopUnbindTimerTask done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    return-void
.end method

.method private tempDisablePowerButtons()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 1270
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnOnOff:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1271
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1272
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1273
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnOnOff:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1274
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnLight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setSwitchToProjectorEnabled(Z)V

    .line 1279
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$17;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1316
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->connectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 771
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->mWifiBeamsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 772
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->mBeamChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 773
    return-void
.end method

.method private updateBeams()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 262
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 267
    .local v8, "beamBulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-eqz v8, :cond_1

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, v8, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v8, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    .end local v8    # "beamBulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_3
    iget-object v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    move v5, v4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->beamBulbs:Ljava/util/List;

    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    move v5, v4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownAdapter:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method handleSendImage(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 606
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v5, "handleSendImage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 608
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 609
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 610
    .local v3, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 613
    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%s %s (%s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    .line 614
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 613
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 618
    .local v1, "imageUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 620
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received image:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_2
    return-void
.end method

.method handleSendText(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 582
    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v6, "handleSendText"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "sharedText":Ljava/lang/String;
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "sharedSubject":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 588
    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 589
    .local v0, "idxOfURL":I
    if-ne v0, v7, :cond_0

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 590
    :cond_0
    if-le v0, v7, :cond_2

    .line 591
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "substring":Ljava/lang/String;
    const-string v5, "\\r?\\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "splitStr":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 595
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 597
    :cond_1
    array-length v5, v3

    if-lez v5, :cond_2

    .line 598
    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v5

    const-string v6, "ACTION_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .end local v0    # "idxOfURL":I
    .end local v3    # "splitStr":[Ljava/lang/String;
    .end local v4    # "substring":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onActionClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x40533333    # 3.3f

    const/4 v1, 0x1

    .line 1088
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1163
    :goto_0
    :pswitch_0
    return-void

    .line 1090
    :pswitch_1
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "b"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :pswitch_2
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "b"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1098
    :pswitch_3
    const-string v0, "ROTATETEST"

    const-string v1, "Sending Rot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "rot"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :pswitch_4
    const-string v0, "ROTATETEST"

    const-string v1, "Sending Rot Bot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "rot"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :pswitch_5
    const-string v0, "MOUSECON"

    const-string v1, "Screen button pressed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "screen"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tempDisablePowerButtons()V

    goto :goto_0

    .line 1114
    :pswitch_6
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "apps"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    :pswitch_7
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "settings"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    :pswitch_8
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "sets"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1126
    :pswitch_9
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "sets"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    :pswitch_a
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTestingApp:Z

    if-eqz v0, :cond_0

    .line 1131
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "testapp"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    :cond_0
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "recents"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    :pswitch_b
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "recents"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1142
    :pswitch_c
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "actions"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1146
    :pswitch_d
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBottomBarExtended:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setBottomBarExtended(ZZ)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1150
    :pswitch_e
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set light percentage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setLightPercentage(F)V

    .line 1152
    invoke-direct {p0, v1, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setProjectorLightActive(ZZ)V

    .line 1153
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "led"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    .line 1154
    invoke-virtual {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getLightPercentage()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    .line 1153
    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setLightPercentage(F)V

    goto/16 :goto_0

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0065
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_d
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1560
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBackPressed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isProjectorLightActive:Z

    if-eqz v0, :cond_0

    .line 1562
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setProjectorLightActive(ZZ)V

    .line 1569
    :goto_0
    return-void

    .line 1564
    :cond_0
    sput-boolean v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    .line 1565
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->unbindConnectionService()V

    .line 1566
    const/4 v0, 0x0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    .line 1567
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->finish()V

    goto :goto_0
.end method

.method public onBitMapCalculated(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitMap"    # Ljava/lang/String;

    .prologue
    .line 1543
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBitMapCalculated "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    if-nez p1, :cond_0

    .line 1548
    :goto_0
    return-void

    .line 1547
    :cond_0
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "img"

    invoke-virtual {v0, v1, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBtnHideProjectorLightClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1337
    :goto_0
    return-void

    .line 1328
    :pswitch_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBtnHideProjectorLightClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getLightPercentage()F

    move-result v1

    const v2, 0x40533333    # 3.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    .line 1331
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New led level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setProjectorLightActive(ZZ)V

    .line 1333
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "screen"

    const-string v2, "0"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1326
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0085
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 321
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 322
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setContentView(I)V

    .line 324
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v2

    if-nez v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->init(Landroid/content/Context;)V

    .line 327
    :cond_0
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v2

    if-nez v2, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->init(Landroid/content/Context;)V

    .line 331
    :cond_1
    if-eqz p1, :cond_4

    .line 332
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->initializeDataFromBundle(Landroid/os/Bundle;)V

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent getAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->usingBluetooth:Z

    .line 343
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v3, "bluetooth is set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_1
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v2, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v2, v3, :cond_2

    .line 349
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 351
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->sendCommand(Ljava/lang/String;)V

    .line 354
    :cond_2
    const v2, 0x7f0c0058

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    .line 355
    const v2, 0x7f0c005a

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDisclosure:Landroid/widget/ImageView;

    .line 356
    const v2, 0x7f0c007b

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    .line 357
    const v2, 0x7f0c007a

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropDownWrapper:Landroid/view/View;

    .line 358
    const v2, 0x7f0c005e

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeypad:Landroid/widget/TextView;

    .line 359
    const v2, 0x7f0c005f

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabTouchpad:Landroid/widget/TextView;

    .line 360
    const v2, 0x7f0c0060

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabKeyboard:Landroid/widget/TextView;

    .line 361
    const v2, 0x7f0c0061

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->tabGallery:Landroid/widget/TextView;

    .line 362
    const v2, 0x7f0c006a

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnOnOff:Landroid/view/View;

    .line 363
    const v2, 0x7f0c0073

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnLight:Landroid/view/View;

    .line 364
    const v2, 0x7f0c006b

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->btnMoreLess:Landroid/widget/TextView;

    .line 365
    const v2, 0x7f0c0063

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBar:Landroid/view/View;

    .line 366
    const v2, 0x7f0c0064

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBarTop:Landroid/view/View;

    .line 367
    const v2, 0x7f0c006c

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->bottomBarExtended:Landroid/view/View;

    .line 368
    const v2, 0x7f0c0062

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->contentFrame:Landroid/widget/FrameLayout;

    .line 369
    const v2, 0x7f0c005c

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->defaultUI:Landroid/view/View;

    .line 370
    const v2, 0x7f0c005b

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightUI:Landroid/view/View;

    .line 371
    const v2, 0x7f0c0059

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->connectionTypeImageView:Landroid/widget/ImageView;

    .line 373
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->connectionReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->handleProgressBars()V

    .line 426
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownAdapter:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;

    .line 427
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownAdapter:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 428
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleDropdownListView:Landroid/widget/ListView;

    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$4;

    invoke-direct {v3, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$4;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 437
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->updateBeams()V

    .line 441
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->titleKeyListener:Landroid/text/method/KeyListener;

    .line 443
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedTabId:I

    invoke-direct {p0, v2, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setSelectedTabId(IZ)V

    .line 444
    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    invoke-direct {p0, v2, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleDropDownVisible(ZZ)V

    .line 445
    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    invoke-direct {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleEditable(Z)V

    .line 446
    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBottomBarExtended:Z

    invoke-direct {p0, v2, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setBottomBarExtended(ZZ)V

    .line 447
    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isProjectorLightActive:Z

    invoke-direct {p0, v2, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setProjectorLightActive(ZZ)V

    .line 460
    sget-boolean v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTestingApp:Z

    if-eqz v2, :cond_3

    .line 461
    const v2, 0x7f0c0069

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "Test app"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_3
    return-void

    .line 335
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    goto/16 :goto_0

    .line 345
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v3, "bluetooth not set "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 778
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 779
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "DESTROY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void
.end method

.method public onImageTranslated(FFFFF)V
    .locals 4
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F
    .param p3, "scale"    # F
    .param p4, "px"    # F
    .param p5, "py"    # F

    .prologue
    .line 1552
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "trans"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "onImageTranslated "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-void
.end method

.method public onKeyPress(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "keys"    # Ljava/lang/CharSequence;

    .prologue
    .line 1454
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1455
    const-string v1, "BACKSPACE"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1456
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "BACKSPACE"

    const-string v3, "kand"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    const-string v1, "ENTER"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1458
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "ENTER"

    const-string v3, "kand"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "led;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1460
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "led"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1461
    :cond_3
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1462
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "left"

    const-string v3, "nav"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1463
    :cond_4
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1464
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "right"

    const-string v3, "nav"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1465
    :cond_5
    const-string v1, "up"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1466
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "up"

    const-string v3, "nav"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_6
    const-string v1, "down"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1468
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "down"

    const-string v3, "nav"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1469
    :cond_7
    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1470
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "ok"

    const-string v3, "nav"

    invoke-virtual {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1472
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "s":Ljava/lang/String;
    const-string v1, "#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1476
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "51"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "51"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1480
    :cond_9
    const-string v1, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1481
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "59"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "59"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1483
    :cond_a
    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1484
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "56"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "56"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1488
    :cond_b
    const-string v1, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1489
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "57"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "57"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1493
    :cond_c
    const-string v1, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1494
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "48"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "48"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1498
    :cond_d
    const-string v1, "\\"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1499
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "92"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "92"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1501
    :cond_e
    const-string v1, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1502
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "222"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "222"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1506
    :cond_f
    const-string v1, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1507
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "222"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "222"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1509
    :cond_10
    const-string v1, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1510
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "44"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "44"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1514
    :cond_11
    const-string v1, ">"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1515
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "62"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "62"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1519
    :cond_12
    const-string v1, "|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1520
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "92"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "92"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1524
    :cond_13
    const-string v1, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1525
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "55"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "55"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1529
    :cond_14
    const-string v1, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1530
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "47"

    const-string v4, "down"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "47"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "16"

    const-string v4, "up"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1535
    :cond_15
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "kand"

    invoke-virtual {v1, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onMTTouched(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 680
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "mdr"

    const-string v2, "0;0"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 682
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "mur"

    const-string v2, "0;0"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 667
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "type":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 672
    sput-object p1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    .line 674
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 819
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 820
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->unregisterReceivers()V

    .line 823
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    if-eqz v0, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->startUnbindTimerTask()V

    .line 826
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 716
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 717
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->registerReceivers()V

    .line 719
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->stopUnbindTimerTask()V

    .line 720
    return-void
.end method

.method public onResumeFragments()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 724
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 725
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResumeFragments "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iput-boolean v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isVolumeProgressFirstCalled:Z

    .line 727
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 728
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 729
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v3, "mService binder is null.. bind again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 731
    invoke-direct {p0, v6, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;Z)V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->TAG:Ljava/lang/String;

    const-string v3, "already connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;Z)V

    .line 738
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->projectorLightFragment:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    .line 740
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 743
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 744
    iput-boolean v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isShareIntentAvailable:Z

    goto :goto_0

    .line 747
    :cond_2
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    .line 748
    .local v0, "shareIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "type":Ljava/lang/String;
    const-string v2, "text/plain"

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 750
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->handleSendText(Landroid/content/Intent;)V

    .line 755
    :cond_3
    :goto_1
    sput-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->shareIntent:Landroid/content/Intent;

    goto :goto_0

    .line 752
    :cond_4
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->handleSendImage(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 635
    const-string v0, "selectedTabId"

    iget v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string v0, "isTitleDropDownVisible"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 637
    const-string v0, "isTitleEditable"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    const-string v0, "isBottomBarExtended"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isBottomBarExtended:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    const-string v0, "isProjectorLightActive"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isProjectorLightActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 640
    const-string v0, "BeamSettings.isConnected"

    sget-boolean v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->isConnected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    const-string v0, "currentVolume"

    iget v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentVolume:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const-string v0, "selectedBeam"

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 643
    const-string v0, "toSwitchBeam"

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->toSwitchBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 644
    const-string v0, "usingBluetooth"

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->usingBluetooth:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    const-string v0, "fragmentTag"

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragmentTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment"

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 647
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 648
    return-void
.end method

.method public onScroll(I)V
    .locals 6
    .param p1, "scroll"    # I

    .prologue
    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 689
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "mw"

    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_0
    return-void
.end method

.method public onTabClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 932
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0061

    if-ne v0, v1, :cond_1

    .line 933
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 934
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->showToast(Ljava/lang/String;)V

    .line 935
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "ACTION_VIEW"

    const-string v2, "Beam update"

    const-string v3, "http://beamlabsinc.com/beam-updater"

    .line 937
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 935
    invoke-virtual {v0, v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->selectedBeam:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v0, v1, :cond_1

    .line 941
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isConnectedToImageSocket()Z

    move-result v0

    if-nez v0, :cond_1

    .line 942
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setSelectedTabId(IZ)V

    goto :goto_0
.end method

.method public onTitleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 832
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->updateBeams()V

    .line 833
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleDropDownVisible:Z

    if-eqz v0, :cond_2

    .line 834
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->isTitleEditable:Z

    if-eqz v0, :cond_0

    .line 846
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c005a

    if-ne v0, v1, :cond_1

    .line 839
    invoke-direct {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleEditable(Z)V

    goto :goto_0

    .line 841
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleDropDownVisible(ZZ)V

    goto :goto_0

    .line 844
    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleDropDownVisible(ZZ)V

    goto :goto_0
.end method

.method public onTitleDropdownWrapperClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 849
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->setTitleDropDownVisible(ZZ)V

    .line 850
    return-void
.end method

.method public onTouchpadTouched(Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;Landroid/view/MotionEvent;)V
    .locals 24
    .param p1, "touchpad"    # Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1349
    .local v10, "nowtime":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1350
    .local v8, "newX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1352
    .local v9, "newY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldX:F

    move/from16 v18, v0

    sub-float v12, v18, v8

    .line 1353
    .local v12, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldY:F

    move/from16 v18, v0

    sub-float v15, v18, v9

    .line 1355
    .local v15, "y":F
    float-to-int v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v14, v0

    .line 1356
    .local v14, "x_int":I
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v17, v0

    .line 1358
    .local v17, "y_int":I
    const v18, 0x44558000    # 854.0f

    invoke-virtual/range {p1 .. p1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 1359
    .local v13, "xAxisMultiplier":F
    const/high16 v18, 0x43f00000    # 480.0f

    invoke-virtual/range {p1 .. p1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 1360
    .local v16, "yAxisMultiplier":F
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    if-nez v18, :cond_1

    .line 1449
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1366
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 1367
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1368
    .local v4, "coords":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1382
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1383
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_0

    .line 1384
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1385
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v18

    mul-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v6, v0

    .line 1386
    .local v6, "mtx":I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v18

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v7, v0

    .line 1387
    .local v7, "mty":I
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mmtm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1370
    .end local v5    # "i":I
    .end local v6    # "mtx":I
    .end local v7    # "mty":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1371
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1372
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    const-string v19, "mmtd0"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1374
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    const-string v19, "mmtd1"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1392
    :pswitch_4
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1393
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    const-string v19, "mmtu0"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1395
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    const-string v19, "mmtu1"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v21

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1402
    .end local v4    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_0

    .line 1404
    :pswitch_6
    const-string v18, "TOUCH DOWN"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    move-object/from16 v0, p0

    iput v8, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldX:F

    .line 1406
    move-object/from16 v0, p0

    iput v9, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldY:F

    .line 1407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->lasttime:J

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->downTime:J

    goto/16 :goto_0

    .line 1414
    :pswitch_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->lasttime:J

    move-wide/from16 v18, v0

    sub-long v18, v10, v18

    const-wide/16 v20, 0x1e

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 1416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentTouchIsPinch:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1417
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    const-string v19, "mmr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->lasttime:J

    .line 1421
    move-object/from16 v0, p0

    iput v8, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldX:F

    .line 1422
    move-object/from16 v0, p0

    iput v9, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->oldY:F

    goto/16 :goto_0

    .line 1427
    :pswitch_8
    const-string v18, "TOUCH UP"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Time "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dt "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->downTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " min "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->downTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->downTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x96

    cmp-long v18, v18, v20

    if-gez v18, :cond_5

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentTouchIsPinch:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1432
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    const-string v19, "mtr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :cond_4
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentTouchIsMulti:Z

    .line 1439
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentTouchIsPinch:Z

    goto/16 :goto_0

    .line 1436
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->currentTouchIsPinch:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1437
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v18

    float-to-int v0, v12

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    float-to-int v0, v15

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1445
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1402
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
