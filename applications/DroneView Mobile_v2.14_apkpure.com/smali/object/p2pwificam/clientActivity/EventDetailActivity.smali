.class public Lobject/p2pwificam/clientActivity/EventDetailActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private _mapBean:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

.field private bottom_layout:Landroid/view/View;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnDelCamera:Landroid/widget/Button;

.field private btnMenu:Landroid/widget/ImageButton;

.field private btnSelectAll:Landroid/widget/Button;

.field private btnSelectReverse:Landroid/widget/Button;

.field private camName:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private listView:Landroid/widget/ListView;

.field private menu:Landroid/widget/PopupWindow;

.field private tvNoLog:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 58
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 60
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 63
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    .line 66
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->bottom_layout:Landroid/view/View;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_mapBean:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_mapBean:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lcom/easyview/basecamera/BaseCamera;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lobject/p2pipcam/adapter/EventDetailAdapter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->bottom_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnBack:Landroid/widget/ImageButton;

    .line 195
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnMenu:Landroid/widget/ImageButton;

    .line 196
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->listView:Landroid/widget/ListView;

    .line 197
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvNoLog:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnSelectAll:Landroid/widget/Button;

    .line 199
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnSelectReverse:Landroid/widget/Button;

    .line 200
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnDelCamera:Landroid/widget/Button;

    .line 201
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->bottom_layout:Landroid/view/View;

    .line 202
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 203
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->did:Ljava/lang/String;

    .line 97
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->camName:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->did:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 99
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->initData()V

    .line 101
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 104
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v8}, Lobject/p2pipcam/adapter/EventDetailAdapter;->clear()V

    .line 105
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v8}, Lobject/p2pipcam/utils/DataBaseHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {v8}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v6

    .line 106
    .local v6, "table":Lcom/easyview/table/EventTable;
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->get_event_reserve_days(Landroid/content/Context;)I

    move-result v2

    .line 107
    .local v2, "days":I
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 108
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    .line 109
    .local v7, "time":I
    mul-int/lit8 v8, v2, 0x18

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    sub-int/2addr v7, v8

    .line 110
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->did:Ljava/lang/String;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v9}, Lcom/easyview/basecamera/BaseCamera;->GetEventFileID()I

    move-result v9

    invoke-virtual {v6, v8, v9, v7}, Lcom/easyview/table/EventTable;->allEvent(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 111
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 113
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 117
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0601f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "content":Ljava/lang/String;
    invoke-static {p0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 120
    .end local v1    # "content":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->did:Ljava/lang/String;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v9}, Lcom/easyview/basecamera/BaseCamera;->GetEventFileID()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/easyview/table/EventTable;->allEvent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 121
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 126
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v8, v4}, Lobject/p2pipcam/adapter/EventDetailAdapter;->setList(Ljava/util/List;)V

    .line 127
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v8}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 128
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v8

    invoke-virtual {v8}, Lobject/p2pipcam/utils/RecordDownTask;->Resume()V

    .line 129
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    check-cast v3, Lcom/easyview/camera/EVBaseCamera;

    .line 130
    .local v3, "evCamera":Lcom/easyview/camera/EVBaseCamera;
    new-instance v8, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;-><init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V

    invoke-static {p0, v3, v12, v8}, Lobject/p2pipcam/utils/EventQueryUtil;->add(Landroid/content/Context;Lcom/easyview/camera/EVBaseCamera;ZLcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 183
    return-void

    .line 113
    .end local v3    # "evCamera":Lcom/easyview/camera/EVBaseCamera;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 115
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->remove()V

    goto :goto_0

    .line 121
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 123
    .restart local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->_mapBean:Ljava/util/Map;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getEventIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnSelectReverse:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnDelCamera:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method


# virtual methods
.method public initMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 220
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 221
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "array":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x7f03003b

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 223
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v3, "view":Landroid/widget/ListView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 225
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    new-instance v4, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    invoke-direct {v4, p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;-><init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 280
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v3, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    .line 281
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 282
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 283
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0x111112

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 285
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    new-instance v5, Lobject/p2pwificam/clientActivity/EventDetailActivity$3;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$3;-><init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 293
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    new-instance v5, Lobject/p2pwificam/clientActivity/EventDetailActivity$4;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$4;-><init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 304
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 309
    :sswitch_0
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask;->Pause()V

    .line 310
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->finish()V

    .line 311
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 314
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->btnMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 318
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->selectAll()V

    goto :goto_0

    .line 321
    :sswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->reverseSelect()V

    goto :goto_0

    .line 324
    :sswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->delSelected()V

    .line 325
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/EventDetailAdapter;->setCanSel(Z)V

    .line 326
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->bottom_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f0800f8 -> :sswitch_2
        0x7f0800f9 -> :sswitch_3
        0x7f0800fa -> :sswitch_4
        0x7f0800fe -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->requestWindowFeature(I)Z

    .line 76
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->findView()V

    .line 78
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->setListener()V

    .line 79
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 80
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/DataBaseHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/RecordTable;

    .line 81
    new-instance v0, Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/EventDetailAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getDataFromOther()V

    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvNoLog:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->initMenu()V

    .line 92
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "%s (%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f060063

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v3}, Lobject/p2pipcam/adapter/EventDetailAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvNoLog:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;

    .line 216
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    check-cast v0, Landroid/app/NotificationManager;

    .line 217
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 218
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 208
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getDataFromOther()V

    .line 209
    return-void
.end method
