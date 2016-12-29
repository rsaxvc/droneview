.class public Lobject/p2pwificam/clientActivity/MainActivity;
.super Landroid/app/ActivityGroup;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;
    }
.end annotation


# instance fields
.field private baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private container:Landroid/widget/LinearLayout;

.field private imageView_about:Landroid/widget/ImageView;

.field private imageView_alarm:Landroid/widget/ImageView;

.field private imageView_pic:Landroid/widget/ImageView;

.field private imageView_vidicon:Landroid/widget/ImageView;

.field private imageView_vido:Landroid/widget/ImageView;

.field private layoutAbout:Landroid/widget/LinearLayout;

.field private layoutAlarm:Landroid/widget/LinearLayout;

.field private layoutMore:Landroid/widget/LinearLayout;

.field private layoutPic:Landroid/widget/LinearLayout;

.field private layoutSelect:Landroid/widget/LinearLayout;

.field private layoutVid:Landroid/widget/LinearLayout;

.field private layoutVidicon:Landroid/widget/LinearLayout;

.field private norColor:I

.field private normalColor:I

.field private receiver:Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;

.field private selectColor:I

.field private selectImage:Landroid/widget/ImageView;

.field private selectText:Landroid/widget/TextView;

.field private textView_about:Landroid/widget/TextView;

.field private textView_alarm:Landroid/widget/TextView;

.field private textView_pic:Landroid/widget/TextView;

.field private textView_vidicon:Landroid/widget/TextView;

.field private textView_vido:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 43
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectImage:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectText:Landroid/widget/TextView;

    .line 45
    const v0, -0xff8601

    iput v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectColor:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->normalColor:I

    .line 47
    const v0, 0x111111

    iput v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->norColor:I

    .line 55
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 35
    return-void
.end method

.method private ShowScreen(Ljava/lang/Class;)V
    .locals 8
    .param p1, "clzz"    # Ljava/lang/Class;

    .prologue
    const/4 v7, -0x1

    .line 233
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 234
    .local v2, "localActivityManager":Landroid/app/LocalActivityManager;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v4

    .line 237
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 238
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MainActivity;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 239
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MainActivity;->container:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MainActivity;->container:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 241
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 240
    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 110
    const v1, 0x7f080150

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVidicon:Landroid/widget/LinearLayout;

    .line 111
    const v1, 0x7f080153

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAlarm:Landroid/widget/LinearLayout;

    .line 112
    const v1, 0x7f080156

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutPic:Landroid/widget/LinearLayout;

    .line 113
    const v1, 0x7f08015c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVid:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f080159

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutMore:Landroid/widget/LinearLayout;

    .line 115
    const v1, 0x7f08015f

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAbout:Landroid/widget/LinearLayout;

    .line 116
    const v1, 0x7f080162

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->container:Landroid/widget/LinearLayout;

    .line 117
    const v1, 0x7f080160

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_about:Landroid/widget/ImageView;

    .line 118
    const v1, 0x7f080154

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_alarm:Landroid/widget/ImageView;

    .line 119
    const v1, 0x7f080157

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_pic:Landroid/widget/ImageView;

    .line 120
    const v1, 0x7f08015d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_vido:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f080151

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_vidicon:Landroid/widget/ImageView;

    .line 122
    const v1, 0x7f080161

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_about:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f080155

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_alarm:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f080158

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_pic:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f08015e

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_vido:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f080152

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_vidicon:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVidicon:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    .line 137
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 141
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_vidicon:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getDataFromOther()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 83
    .local v3, "in":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 84
    const-string v5, "mode"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 85
    .local v4, "start_mode":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 87
    const-string v5, "did"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "did":Ljava/lang/String;
    const-string v5, "event_type"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 89
    .local v2, "event_type":I
    const-string v5, "event_index"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 90
    const-string v5, "event_time"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "event_time":I
    invoke-static {p0, v0}, Lobject/p2pipcam/utils/Pub;->getCallTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 93
    const-string v5, "NDT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OpenLockScreen:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " t:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v5, 0x1

    invoke-static {v0, v5, v2}, Lobject/p2pipcam/utils/Pub;->OpenLockScreen(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, v0, v1}, Lobject/p2pipcam/utils/Pub;->setCallTime(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    .end local v0    # "did":Ljava/lang/String;
    .end local v1    # "event_time":I
    .end local v2    # "event_type":I
    .end local v4    # "start_mode":I
    :cond_0
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVidicon:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutPic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutMore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAbout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v1, "MainActivity"

    const-string v2, "OnCreate "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/MainActivity;->requestWindowFeature(I)Z

    .line 64
    const v1, 0x7f030033

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->findView()V

    .line 67
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 68
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->setListener()V

    .line 69
    const-class v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->ShowScreen(Ljava/lang/Class;)V

    .line 70
    new-instance v1, Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;-><init>(Lobject/p2pwificam/clientActivity/MainActivity;Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->receiver:Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "back"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->receiver:Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->get_auto_run()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 76
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/MainActivity;->moveTaskToBack(Z)Z

    .line 78
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->getDataFromOther()V

    .line 79
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->register(Landroid/app/Activity;)V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 255
    const-string v0, "NDT"

    const-string v1, "MainActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->receiver:Lobject/p2pwificam/clientActivity/MainActivity$MyBroadCast;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    invoke-static {}, Lcom/easyview/ppcs/PPCSCamera;->Free()V

    .line 260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/DataBaseHelper;->close()V

    .line 264
    const/4 v0, 0x0

    sput v0, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 265
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->unregister(Landroid/app/Activity;)V

    .line 266
    invoke-static {}, Lobject/p2pipcam/utils/NDTSUtils;->Close()V

    .line 267
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 303
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 304
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isNeedAppBackgroud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/MainActivity;->showSureDialog(Landroid/content/Context;)V

    .line 319
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 308
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 309
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isNeedAppBackgroud()Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->finish()V

    .line 317
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 314
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 165
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 225
    :cond_1
    return v2

    .line 167
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 169
    :sswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVidicon:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    .line 170
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_vidicon:Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectImage:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_vidicon:Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectText:Landroid/widget/TextView;

    .line 172
    const-class v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->ShowScreen(Ljava/lang/Class;)V

    goto :goto_0

    .line 175
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAlarm:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    .line 176
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_alarm:Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectImage:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_alarm:Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectText:Landroid/widget/TextView;

    .line 178
    const-class v0, Lobject/p2pwificam/clientActivity/AlarmActivity;

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->ShowScreen(Ljava/lang/Class;)V

    goto :goto_0

    .line 181
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutPic:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    .line 182
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_pic:Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectImage:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_pic:Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectText:Landroid/widget/TextView;

    .line 184
    const-class v0, Lobject/p2pwificam/clientActivity/PictureActivity;

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->ShowScreen(Ljava/lang/Class;)V

    goto :goto_0

    .line 187
    :sswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVid:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    .line 188
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_vido:Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectImage:Landroid/widget/ImageView;

    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_vido:Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectText:Landroid/widget/TextView;

    .line 190
    const-class v0, Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->ShowScreen(Ljava/lang/Class;)V

    goto :goto_0

    .line 194
    :sswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutMore:Landroid/widget/LinearLayout;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVid:Landroid/widget/LinearLayout;

    iget v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutVidicon:Landroid/widget/LinearLayout;

    iget v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAlarm:Landroid/widget/LinearLayout;

    iget v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 198
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutPic:Landroid/widget/LinearLayout;

    iget v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 199
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAbout:Landroid/widget/LinearLayout;

    iget v1, p0, Lobject/p2pwificam/clientActivity/MainActivity;->norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 202
    :sswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutAbout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->layoutSelect:Landroid/widget/LinearLayout;

    .line 203
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->imageView_about:Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectImage:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->textView_about:Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainActivity;->selectText:Landroid/widget/TextView;

    .line 205
    const-class v0, Lobject/p2pwificam/clientActivity/AboutActivity;

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/MainActivity;->ShowScreen(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x7f080150 -> :sswitch_0
        0x7f080153 -> :sswitch_1
        0x7f080156 -> :sswitch_2
        0x7f080159 -> :sswitch_4
        0x7f08015c -> :sswitch_3
        0x7f08015f -> :sswitch_5
    .end sparse-switch
.end method

.method public showSureDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 272
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 273
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030027

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f020010

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 281
    const v3, 0x7f06000c

    .line 282
    new-instance v4, Lobject/p2pwificam/clientActivity/MainActivity$1;

    invoke-direct {v4, p0, v2}, Lobject/p2pwificam/clientActivity/MainActivity$1;-><init>(Lobject/p2pwificam/clientActivity/MainActivity;Landroid/view/View;)V

    .line 281
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    const v3, 0x7f06000d

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 299
    return-void
.end method
