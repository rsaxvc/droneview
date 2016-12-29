.class public Lobject/p2pwificam/clientActivity/PictureActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "PictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private bntPhone:Landroid/widget/Button;

.field private bntRemote:Landroid/widget/Button;

.field private broadcast:Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;

.field private handler:Landroid/os/Handler;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private isFirst:Z

.field private listView:Landroid/widget/ListView;

.field private mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

.field private tag:I

.field private tax:I

.field private timeOne:I

.field private timeTag:I

.field private timeTwo:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->isFirst:Z

    .line 49
    iput v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->timeTag:I

    .line 50
    iput v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->timeOne:I

    .line 51
    iput v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->timeTwo:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    .line 54
    iput v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tag:I

    .line 55
    iput v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tax:I

    .line 57
    new-instance v0, Lobject/p2pwificam/clientActivity/PictureActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PictureActivity$1;-><init>(Lobject/p2pwificam/clientActivity/PictureActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->handler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PictureActivity;)Lobject/p2pipcam/adapter/PictureActivityAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/PictureActivity;)Lobject/p2pipcam/utils/DataBaseHelper;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/PictureActivity;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->isFirst:Z

    return-void
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/PictureActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->isFirst:Z

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/PictureActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private findView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 159
    const v3, 0x7f08009d

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntPhone:Landroid/widget/Button;

    .line 160
    const v3, 0x7f08009e

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntRemote:Landroid/widget/Button;

    .line 161
    const v3, 0x7f08017a

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->listView:Landroid/widget/ListView;

    .line 162
    const v3, 0x7f08009b

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, "tv":Landroid/widget/TextView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 164
    const v4, 0x7f03001c

    const/4 v5, 0x0

    .line 163
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    .line 165
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 167
    const v3, 0x7f08009c

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 168
    .local v0, "btn1":Landroid/widget/Button;
    const v3, 0x7f08009f

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 169
    .local v1, "btn2":Landroid/widget/Button;
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntPhone:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntRemote:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    return-void
.end method

.method private initBmpAndSum()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lobject/p2pwificam/clientActivity/PictureActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PictureActivity$2;-><init>(Lobject/p2pwificam/clientActivity/PictureActivity;)V

    .line 150
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PictureActivity$2;->start()V

    .line 151
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntPhone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntRemote:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/PictureActivityAdapter;->notifyDataSetChanged()V

    .line 208
    return-void

    .line 181
    :pswitch_0
    iput v2, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tax:I

    .line 182
    iget v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tag:I

    if-ne v0, v3, :cond_0

    .line 183
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_0
    iput v2, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tag:I

    .line 188
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntPhone:Landroid/widget/Button;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntRemote:Landroid/widget/Button;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lobject/p2pipcam/adapter/PictureActivityAdapter;->setMode(I)V

    goto :goto_0

    .line 193
    :pswitch_1
    iput v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tag:I

    .line 194
    iget v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tax:I

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iput v3, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->tax:I

    .line 200
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntRemote:Landroid/widget/Button;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->bntPhone:Landroid/widget/Button;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/PictureActivityAdapter;->setMode(I)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x7f08009d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v1, "tag"

    const-string v2, "PictureActivity  onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PictureActivity;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PictureActivity;->findView()V

    .line 79
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PictureActivity;->setListener()V

    .line 80
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 83
    new-instance v1, Lobject/p2pipcam/adapter/PictureActivityAdapter;

    sget-object v2, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lobject/p2pipcam/adapter/PictureActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    .line 84
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    new-instance v1, Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;-><init>(Lobject/p2pwificam/clientActivity/PictureActivity;Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->broadcast:Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "camera_status_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->broadcast:Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/PictureActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 296
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->broadcast:Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PictureActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .line 227
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 228
    new-instance v2, Landroid/content/Intent;

    .line 229
    const-class v11, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    .line 228
    invoke-direct {v2, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PictureActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    const v11, 0x7f040001

    const v12, 0x7f040005

    invoke-virtual {p0, v11, v12}, Lobject/p2pwificam/clientActivity/PictureActivity;->overridePendingTransition(II)V

    .line 271
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 234
    :cond_0
    sget-object v11, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    add-int/lit8 v12, p3, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 235
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "pwd":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, "user":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v9

    .line 240
    .local v9, "status":I
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    invoke-virtual {v11}, Lobject/p2pipcam/adapter/PictureActivityAdapter;->getMode()I

    move-result v5

    .line 241
    .local v5, "mode":I
    add-int/lit8 v7, p3, -0x1

    .line 242
    .local v7, "positionID":I
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-class v11, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;

    invoke-direct {v4, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v4, "intentpic":Landroid/content/Intent;
    const-string v11, "camera_name"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v11, "cameraid"

    invoke-virtual {v4, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PictureActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    const v11, 0x7f040001

    const v12, 0x7f040005

    invoke-virtual {p0, v11, v12}, Lobject/p2pwificam/clientActivity/PictureActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 251
    .end local v4    # "intentpic":Landroid/content/Intent;
    :pswitch_1
    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    .line 252
    new-instance v3, Landroid/content/Intent;

    const-class v11, Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    invoke-direct {v3, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v3, "intentVid":Landroid/content/Intent;
    const-string v11, "camera_name"

    invoke-virtual {v3, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v11, "cameraid"

    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v11, "camera_pwd"

    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v11, "camera_user"

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v11, "positionID"

    invoke-virtual {v3, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PictureActivity;->startActivity(Landroid/content/Intent;)V

    .line 259
    const v11, 0x7f040001

    .line 260
    const v12, 0x7f040005

    .line 259
    invoke-virtual {p0, v11, v12}, Lobject/p2pwificam/clientActivity/PictureActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 263
    .end local v3    # "intentVid":Landroid/content/Intent;
    :cond_1
    const v11, 0x7f06018c

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/PictureActivity;->showToast(I)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 274
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 277
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/PictureActivity;->showSureDialog(Landroid/content/Context;)V

    .line 290
    :cond_0
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 279
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PictureActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onResume()V

    .line 98
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PictureActivity;->initBmpAndSum()V

    .line 99
    return-void
.end method
