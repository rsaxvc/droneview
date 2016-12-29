.class public Lobject/p2pwificam/clientActivity/MainMUActivity;
.super Landroid/app/ActivityGroup;
.source "MainMUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;
    }
.end annotation


# instance fields
.field private addBellListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

.field private baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private button_add:Landroid/widget/ImageButton;

.field private button_menu:Landroid/widget/ImageButton;

.field private container:Landroid/widget/LinearLayout;

.field private menu:Landroid/widget/PopupWindow;

.field private menu_item:I

.field private receiver:Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;

.field private timeOne:I

.field private timeTag:I

.field private timeTwo:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 52
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;

    .line 53
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_menu:Landroid/widget/ImageButton;

    .line 54
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    .line 55
    iput v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    .line 58
    iput v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->timeTag:I

    .line 59
    iput v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->timeOne:I

    .line 60
    iput v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->timeTwo:I

    .line 61
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 302
    new-instance v0, Lobject/p2pwificam/clientActivity/MainMUActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/MainMUActivity$1;-><init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->addBellListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    .line 50
    return-void
.end method

.method private ShowScreen(Ljava/lang/Class;)V
    .locals 8
    .param p1, "clzz"    # Ljava/lang/Class;

    .prologue
    const/4 v7, -0x1

    .line 122
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 123
    .local v2, "localActivityManager":Landroid/app/LocalActivityManager;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v4

    .line 126
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 127
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 128
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->container:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->container:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 130
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 129
    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/MainMUActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/MainMUActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/MainMUActivity;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    return-void
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;

    .line 111
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_menu:Landroid/widget/ImageButton;

    .line 112
    const v0, 0x7f080162

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->container:Landroid/widget/LinearLayout;

    .line 113
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_menu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method private getDataFromOther()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 89
    .local v4, "in":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 90
    const-string v6, "mode"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, "start_mode":I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 93
    const-string v6, "did"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "did":Ljava/lang/String;
    const-string v6, "event_type"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 95
    .local v3, "event_type":I
    const-string v6, "event_index"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, "event_index":I
    const-string v6, "event_time"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "event_time":I
    invoke-static {p0, v0}, Lobject/p2pipcam/utils/Pub;->getCallTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 99
    const-string v6, "NDT"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OpenLockScreen:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " t:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v6, 0x1

    invoke-static {v0, v6, v3}, Lobject/p2pipcam/utils/Pub;->OpenLockScreen(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0, v0, v2}, Lobject/p2pipcam/utils/Pub;->setCallTime(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    .end local v0    # "did":Ljava/lang/String;
    .end local v1    # "event_index":I
    .end local v2    # "event_time":I
    .end local v3    # "event_type":I
    .end local v5    # "start_mode":I
    :cond_0
    return-void
.end method

.method private setListener()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method


# virtual methods
.method public initMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 201
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 202
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0004

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "array":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x7f03003b

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 204
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 205
    .local v3, "view":Landroid/widget/ListView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 207
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    new-instance v4, Lobject/p2pwificam/clientActivity/MainMUActivity$3;

    invoke-direct {v4, p0}, Lobject/p2pwificam/clientActivity/MainMUActivity$3;-><init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    new-instance v4, Landroid/widget/PopupWindow;

    const/16 v5, 0xc8

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    .line 245
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 246
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 248
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 250
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    new-instance v5, Lobject/p2pwificam/clientActivity/MainMUActivity$4;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/MainMUActivity$4;-><init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 258
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    new-instance v5, Lobject/p2pwificam/clientActivity/MainMUActivity$5;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/MainMUActivity$5;-><init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 269
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f020007

    const/4 v3, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 275
    :sswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->setIgnoreCheekPress()V

    .line 278
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;

    const v2, 0x7f080165

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/MainMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 282
    :sswitch_1
    iget v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    if-nez v1, :cond_1

    .line 284
    new-instance v0, Lobject/p2pipcam/utils/SearchBellUtil;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/SearchBellUtil;-><init>(Landroid/app/Activity;)V

    .line 286
    .local v0, "util":Lobject/p2pipcam/utils/SearchBellUtil;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->addBellListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/utils/SearchBellUtil;->StartSearch(Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;)Ljava/lang/String;

    goto :goto_0

    .line 287
    .end local v0    # "util":Lobject/p2pipcam/utils/SearchBellUtil;
    :cond_1
    iget v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 289
    sget-object v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    if-eqz v1, :cond_2

    sget-object v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->EditFinish()V

    .line 290
    :cond_2
    iput v3, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    .line 291
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 295
    :cond_3
    const-class v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V

    .line 296
    iput v3, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    .line 297
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x7f0800fe -> :sswitch_0
        0x7f080166 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/MainMUActivity;->requestWindowFeature(I)Z

    .line 68
    const v1, 0x7f030035

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->findView()V

    .line 71
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 73
    const-class v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I

    .line 75
    new-instance v1, Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;-><init>(Lobject/p2pwificam/clientActivity/MainMUActivity;Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->receiver:Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "back"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->receiver:Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->get_auto_run()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 81
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/MainMUActivity;->moveTaskToBack(Z)Z

    .line 83
    :cond_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->initMenu()V

    .line 84
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->getDataFromOther()V

    .line 85
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->register(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 144
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->receiver:Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-static {}, Lcom/easyview/ppcs/PPCSCamera;->Free()V

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity;->baseHelper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/DataBaseHelper;->close()V

    .line 150
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->stopService(Landroid/content/Intent;)Z

    .line 151
    const/4 v1, 0x0

    sput v1, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 152
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->unregister(Landroid/app/Activity;)V

    .line 153
    invoke-static {}, Lobject/p2pipcam/utils/NDTSUtils;->Close()V

    .line 154
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 191
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->showSureDialog(Landroid/content/Context;)V

    .line 197
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 192
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showSureDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 159
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 160
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030027

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f020010

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 168
    const v3, 0x7f06000c

    .line 169
    new-instance v4, Lobject/p2pwificam/clientActivity/MainMUActivity$2;

    invoke-direct {v4, p0, v2}, Lobject/p2pwificam/clientActivity/MainMUActivity$2;-><init>(Lobject/p2pwificam/clientActivity/MainMUActivity;Landroid/view/View;)V

    .line 168
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    const v3, 0x7f06000d

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 186
    return-void
.end method
