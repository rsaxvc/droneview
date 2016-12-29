.class public Lobject/p2pwificam/clientActivity/ShowPictureActivity1;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "ShowPictureActivity1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private _camera:Lcom/easyview/camera/EVBaseCamera;

.field afterLenght:F

.field beforeLenght:F

.field private btnBack:Landroid/widget/ImageButton;

.field currentScale:F

.field isDestroy:Z

.field private isReverseLandscape:Z

.field isScale:Z

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private position:I

.field private strDID:Ljava/lang/String;

.field private strDate:Ljava/lang/String;

.field private titleLayout:Landroid/view/View;

.field private tvNoPics:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 45
    const-string v0, "ShowPictureActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->TAG:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 50
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->titleLayout:Landroid/view/View;

    .line 57
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->beforeLenght:F

    .line 58
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->afterLenght:F

    .line 59
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->isScale:Z

    .line 60
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->isDestroy:Z

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->currentScale:F

    .line 62
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;-><init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mHandler:Landroid/os/Handler;

    .line 80
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->isReverseLandscape:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->isReverseLandscape:Z

    return v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->isReverseLandscape:Z

    return-void
.end method

.method private findView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->tvTitle:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->btnBack:Landroid/widget/ImageButton;

    .line 125
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->tvNoPics:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->titleLayout:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f080310

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 135
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 138
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 139
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 140
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    new-instance v0, Lobject/p2pipcam/adapter/ShowPictureAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/ShowPictureAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 143
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 144
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 145
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->position:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 146
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->tvTitle:Landroid/widget/TextView;

    const-string v1, " %d / %d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->position:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v3}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 107
    const-string v1, "tag"

    const-string v2, "intent!=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->strDID:Ljava/lang/String;

    .line 109
    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->strDate:Ljava/lang/String;

    .line 110
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->position:I

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v1, "tag"

    const-string v2, "intent==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$2;

    invoke-direct {v0, p0, p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$2;-><init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 220
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 221
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 160
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "data":Landroid/content/Intent;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->finish()V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x7f080019
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x80

    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->getDataFromOther()V

    .line 86
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 87
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->requestWindowFeature(I)Z

    .line 89
    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->setContentView(I)V

    .line 91
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->setRequestedOrientation(I)V

    .line 97
    :goto_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easyview/camera/CameraList;->getCamera(I)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 99
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->findView()V

    .line 100
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->startOrientationChangeListener()V

    .line 101
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->removeAllViews()V

    .line 182
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 183
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 185
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 186
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 187
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 188
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 189
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
