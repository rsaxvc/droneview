.class public Lobject/p2pwificam/clientActivity/AlarmLogActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AlarmLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnClear:Landroid/widget/Button;

.field private camName:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private listView:Landroid/widget/ListView;

.field private tvNoLog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 24
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->btnBack:Landroid/widget/ImageButton;

    .line 101
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->btnClear:Landroid/widget/Button;

    .line 102
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->listView:Landroid/widget/ListView;

    .line 103
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->tvNoLog:Landroid/widget/TextView;

    .line 104
    return-void
.end method

.method private getDataFromOther()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->did:Ljava/lang/String;

    .line 57
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->camName:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->initData()V

    .line 59
    return-void
.end method

.method private initData()V
    .locals 8

    .prologue
    .line 62
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/AlarmLogAdapter;->clearAllAlarmLog()V

    .line 63
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->did:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lobject/p2pipcam/utils/DataBaseHelper;->queryAllAlarmLog(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 64
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 65
    .local v2, "count":I
    if-eqz v4, :cond_0

    .line 66
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/AlarmLogAdapter;->notifyDataSetChanged()V

    .line 92
    :cond_0
    return-void

    .line 67
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    const/16 v5, 0x1e

    if-gt v2, v5, :cond_2

    .line 70
    const-string v5, "createtime"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 69
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "createTime":Ljava/lang/String;
    const-string v5, "content"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 72
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "content":Ljava/lang/String;
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createTime:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lobject/p2pipcam/bean/AlarmLogBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/AlarmLogBean;-><init>()V

    .line 76
    .local v0, "alarmLogBean":Lobject/p2pipcam/bean/AlarmLogBean;
    invoke-virtual {v0, v1}, Lobject/p2pipcam/bean/AlarmLogBean;->setContent(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v3}, Lobject/p2pipcam/bean/AlarmLogBean;->setCreatetime(Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->camName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lobject/p2pipcam/bean/AlarmLogBean;->setCamName(Ljava/lang/String;)V

    .line 79
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-virtual {v5, v0}, Lobject/p2pipcam/adapter/AlarmLogAdapter;->addAlarmLog(Lobject/p2pipcam/bean/AlarmLogBean;)V

    goto :goto_0

    .line 82
    .end local v0    # "alarmLogBean":Lobject/p2pipcam/bean/AlarmLogBean;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "createTime":Ljava/lang/String;
    :cond_2
    const-string v5, "createtime"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 81
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .restart local v3    # "createTime":Ljava/lang/String;
    const-string v5, "content"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 84
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1    # "content":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->did:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lobject/p2pipcam/utils/DataBaseHelper;->delAlarmLog(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5220\u9664\u591a\u4f59\u7684\u62a5\u8b66\u65e5\u5fd7\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v2, -0x1e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->btnClear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f040006

    const/high16 v2, 0x7f040000

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 125
    :sswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->finish()V

    .line 126
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 129
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/utils/DataBaseHelper;->delAlarmLog(Ljava/lang/String;)Z

    .line 130
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->finish()V

    .line 131
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f08004c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->requestWindowFeature(I)Z

    .line 38
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->findView()V

    .line 40
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->setListener()V

    .line 41
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 42
    new-instance v0, Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/AlarmLogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    .line 43
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->getDataFromOther()V

    .line 45
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/AlarmLogAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->tvNoLog:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->tvNoLog:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->adapter:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    .line 117
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Landroid/app/NotificationManager;

    .line 118
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 119
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmLogActivity;->getDataFromOther()V

    .line 110
    return-void
.end method
