.class public Lobject/p2pwificam/clientActivity/AlarmActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private broadcast:Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;

.field private listView:Landroid/widget/ListView;

.field private timeOne:I

.field private timeTag:I

.field private timeTwo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 33
    iput v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->timeTag:I

    .line 34
    iput v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->timeOne:I

    .line 35
    iput v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->timeTwo:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/AlarmActivity;)Lobject/p2pipcam/adapter/AlarmActivityAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listView:Landroid/widget/ListView;

    .line 63
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/AlarmActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmActivity;->findView()V

    .line 44
    new-instance v1, Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    sget-object v2, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lobject/p2pipcam/adapter/AlarmActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    .line 45
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    new-instance v1, Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;-><init>(Lobject/p2pwificam/clientActivity/AlarmActivity;Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->broadcast:Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "camera_status_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "del_add_modify_camera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "camera_event_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->broadcast:Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/AlarmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->broadcast:Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 68
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    invoke-virtual {v4, p3}, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->getItemCam(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v0

    .line 69
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lobject/p2pwificam/clientActivity/AlarmLogActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v4, Lobject/p2pwificam/clientActivity/EventDetailActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v4, v1}, Lobject/p2pipcam/utils/DataBaseHelper;->clearAlarmCount(Ljava/lang/String;)Z

    .line 77
    const-string v4, "cameraid"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v4, "camera_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/AlarmActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    const v4, 0x7f040001

    const v5, 0x7f040005

    invoke-virtual {p0, v4, v5}, Lobject/p2pwificam/clientActivity/AlarmActivity;->overridePendingTransition(II)V

    .line 81
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 147
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 148
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isNeedAppBackgroud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/AlarmActivity;->showSureDialog(Landroid/content/Context;)V

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 152
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 153
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isNeedAppBackgroud()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmActivity;->finish()V

    .line 161
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 158
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->notifyDataSetChanged()V

    .line 58
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onRestart()V

    .line 59
    return-void
.end method
