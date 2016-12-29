.class public Lobject/p2pwificam/clientActivity/SettingActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final ALERM:I

.field private final DATETIME:I

.field private final MAIL:I

.field private final OPEN_LOCK:I

.field private final SDCard:I

.field private final ShareVideo:I

.field private final USER:I

.field private final WIFI:I

.field private btnBack:Landroid/widget/ImageButton;

.field private cameraName:Ljava/lang/String;

.field private listClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private myBackBrod:Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

.field private strDID:Ljava/lang/String;

.field private tvCameraName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 46
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->mListView:Landroid/widget/ListView;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->WIFI:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->USER:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->ALERM:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->DATETIME:I

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->MAIL:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->OPEN_LOCK:I

    .line 56
    const/4 v0, 0x6

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->SDCard:I

    .line 57
    const/4 v0, 0x7

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->ShareVideo:I

    .line 62
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->myBackBrod:Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

    .line 43
    return-void
.end method

.method private BWshareMemo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 290
    .local v0, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 291
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 292
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 293
    .local v3, "window":Landroid/view/Window;
    const v4, 0x7f030069

    invoke-virtual {v3, v4}, Landroid/view/Window;->setContentView(I)V

    .line 294
    const v4, 0x7f0802f4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, "text":Landroid/view/View;
    new-instance v4, Lobject/p2pwificam/clientActivity/SettingActivity$2;

    invoke-direct {v4, p0, p2, p1}, Lobject/p2pwificam/clientActivity/SettingActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingActivity;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v4, 0x7f0802f5

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 308
    new-instance v4, Lobject/p2pwificam/clientActivity/SettingActivity$3;

    invoke-direct {v4, p0, p2, p1}, Lobject/p2pwificam/clientActivity/SettingActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingActivity;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f08020c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->mListView:Landroid/widget/ListView;

    .line 157
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->btnBack:Landroid/widget/ImageButton;

    .line 158
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private getDataFromOther()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->strDID:Ljava/lang/String;

    .line 107
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->cameraName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    .line 113
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f06009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    const-class v2, Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f06009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    const-class v2, Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f0600a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    const-class v2, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f0600a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    const-class v2, Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f0600ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    const-class v2, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f0600a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    const-class v2, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f06016c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    const-class v2, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    const v2, 0x7f0600a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 333
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingActivity;->finish()V

    .line 334
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingActivity;->overridePendingTransition(II)V

    .line 335
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingActivity;->getDataFromOther()V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingActivity;->requestWindowFeature(I)Z

    .line 82
    const v1, 0x7f030052

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingActivity;->initData()V

    .line 84
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingActivity;->findView()V

    .line 86
    new-instance v0, Lobject/p2pipcam/adapter/SettingListAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/SettingListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 87
    .local v0, "adapter":Lobject/p2pipcam/adapter/SettingListAdapter;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 340
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listItems:Ljava/util/List;

    .line 342
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->myBackBrod:Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->myBackBrod:Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->listClass:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "camera_name"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->cameraName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    const v1, 0x7f040001

    const v2, 0x7f040005

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/SettingActivity;->overridePendingTransition(II)V

    .line 242
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->strDID:Ljava/lang/String;

    invoke-virtual {p0, p0, v1}, Lobject/p2pwificam/clientActivity/SettingActivity;->shareMemo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 96
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->myBackBrod:Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;-><init>(Lobject/p2pwificam/clientActivity/SettingActivity;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->myBackBrod:Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "myback"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity;->myBackBrod:Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public shareMemo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    const v1, 0x7f0600a6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 249
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 250
    new-instance v2, Lobject/p2pwificam/clientActivity/SettingActivity$1;

    invoke-direct {v2, p0, p2, p1}, Lobject/p2pwificam/clientActivity/SettingActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingActivity;Ljava/lang/String;Landroid/content/Context;)V

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 286
    return-void
.end method
