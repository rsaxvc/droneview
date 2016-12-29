.class public Lobject/p2pwificam/clientActivity/ShowPictureActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "ShowPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


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

.field private action_x:F

.field private action_y:F

.field afterLenght:F

.field beforeLenght:F

.field private btnBack:Landroid/widget/ImageButton;

.field currentScale:F

.field private image:Landroid/widget/ImageView;

.field isDestroy:Z

.field private isReverseLandscape:Z

.field isScale:Z

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

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

    .line 49
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 50
    const-string v0, "ShowPictureActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->TAG:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 55
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->titleLayout:Landroid/view/View;

    .line 63
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->beforeLenght:F

    .line 64
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->afterLenght:F

    .line 65
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->isScale:Z

    .line 66
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->isDestroy:Z

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->currentScale:F

    .line 69
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;-><init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mHandler:Landroid/os/Handler;

    .line 87
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->isReverseLandscape:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/ShowPictureActivity;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->isReverseLandscape:Z

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I

    return v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getBmp(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->isReverseLandscape:Z

    return v0
.end method

.method private findView()V
    .locals 6

    .prologue
    .line 169
    const v1, 0x7f080145

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->tvTitle:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->btnBack:Landroid/widget/ImageButton;

    .line 172
    const v1, 0x7f0802fc

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->image:Landroid/widget/ImageView;

    .line 175
    const v1, 0x7f080147

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->tvNoPics:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f080144

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->titleLayout:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I

    invoke-direct {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getBmp(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, " %d / %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v5}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method private getBmp(I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "postion"    # I

    .prologue
    .line 279
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v5}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 280
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getPicturePath()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "picPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 284
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 289
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 290
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 291
    const-string v5, "Picture"

    const-string v6, "W:%d H:%d Path:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v6, 0x5a0

    if-le v5, v6, :cond_1

    const/4 v5, 0x2

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 294
    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 295
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 296
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 297
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 303
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    return-object v1

    .line 293
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 156
    const-string v1, "tag"

    const-string v2, "intent!=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->strDID:Ljava/lang/String;

    .line 158
    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->strDate:Ljava/lang/String;

    .line 159
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "tag"

    const-string v2, "intent==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;

    invoke-direct {v0, p0, p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;-><init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 274
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 275
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 214
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "data":Landroid/content/Intent;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->finish()V

    goto :goto_0

    .line 212
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
    .line 247
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x80

    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getDataFromOther()V

    .line 93
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 94
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->requestWindowFeature(I)Z

    .line 96
    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->setContentView(I)V

    .line 98
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->setRequestedOrientation(I)V

    .line 104
    :goto_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easyview/camera/CameraList;->getCamera(I)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 106
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->findView()V

    .line 107
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->startOrientationChangeListener()V

    .line 109
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;-><init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 150
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 238
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 239
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 240
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 241
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 242
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 243
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 310
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 329
    const/4 v0, 0x1

    return v0
.end method
