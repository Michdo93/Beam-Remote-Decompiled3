.class public Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;
.super Landroid/app/Activity;
.source "appListActivity.java"


# instance fields
.field lv:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->setRequestedOrientation(I)V

    .line 31
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->setContentView(I)V

    .line 32
    const v2, 0x7f0c003f

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->lv:Landroid/widget/ListView;

    .line 33
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 34
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->receivedAppList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->finish()V

    .line 35
    :cond_0
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->receivedAppList:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "splitApps":[Ljava/lang/String;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->lv:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->lv:Landroid/widget/ListView;

    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$1;

    invoke-direct {v3, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    const v2, 0x7f0c0040

    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "backB":Landroid/widget/Button;
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$2;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 75
    .local v0, "id":I
    const v1, 0x7f0c008d

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 78
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
