.class public Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;
.super Landroid/app/Activity;
.source "SelectBulbActivity.java"


# instance fields
.field lv:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "selectBulb"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v6, 0x7f03001b

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->setContentView(I)V

    .line 30
    const-string v6, "SELECT BULB"

    const-string v7, "OnCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const v6, 0x7f0c0053

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->lv:Landroid/widget/ListView;

    .line 34
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "accountName"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "userName"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "userName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "macAddress"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "localMacAddress":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v3, "ips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 43
    .local v2, "beamBulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v7, v2, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v2    # "beamBulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v1, p0, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 50
    .local v1, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->lv:Landroid/widget/ListView;

    new-instance v7, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;

    invoke-direct {v7, p0, v0, v5, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    return-void
.end method
