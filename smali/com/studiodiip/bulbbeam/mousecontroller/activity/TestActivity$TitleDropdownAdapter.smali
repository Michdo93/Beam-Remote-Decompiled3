.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TitleDropdownAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;


# direct methods
.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 695
    const v0, 0x7f03001e

    invoke-static {p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 696
    return-void
.end method

.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p4, "beamBulbs":Ljava/util/List;, "Ljava/util/List<Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;>;"
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .line 699
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 700
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 704
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 705
    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$TitleDropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 706
    .local v0, "currentBulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .line 708
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    return-object p2
.end method
