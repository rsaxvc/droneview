.class public Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "ShowLocalPictureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/view/View$OnClickListener;",
        "Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;"
    }
.end annotation


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

.field private static deletePicInterface:Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;

.field public static screenHeight:I

.field public static screenWidth:I


# instance fields
.field private final DELETE:I

.field private final DELETEALL:I

.field private TAG:Ljava/lang/String;

.field afterLenght:F

.field beforeLenght:F

.field private bottomLayout:Landroid/widget/RelativeLayout;

.field private btnBack:Landroid/widget/ImageButton;

.field currentScale:F

.field private delList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field isScale:Z

.field private isShowing:Z

.field private mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

.field private mGallery:Lobject/p2pipcam/customComponent/MyGallery;

.field private mHandler:Landroid/os/Handler;

.field private mTv_Sum:Landroid/widget/TextView;

.field private mTv_TakeDate:Landroid/widget/TextView;

.field private mTv_TakeTime:Landroid/widget/TextView;

.field private position:I

.field private strCameraName:Ljava/lang/String;

.field private strDID:Ljava/lang/String;

.field private strDate:Ljava/lang/String;

.field private topLayout:Landroid/widget/RelativeLayout;

.field private tvNoPics:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 32
    const-string v0, "ShowLocalPictureActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->TAG:Ljava/lang/String;

    .line 44
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->DELETE:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->DELETEALL:I

    .line 54
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->x1:F

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->x2:F

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->y1:F

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->y2:F

    .line 55
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->isShowing:Z

    .line 56
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->beforeLenght:F

    .line 57
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->afterLenght:F

    .line 58
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->isScale:Z

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->currentScale:F

    .line 60
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$1;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->isShowing:Z

    return-void
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 151
    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/customComponent/MyGallery;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    .line 152
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_TakeDate:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0802fa

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_Sum:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->btnBack:Landroid/widget/ImageButton;

    .line 156
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->tvTitle:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->tvNoPics:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->strCameraName:Ljava/lang/String;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "s":Ljava/lang/String;
    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, ":"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060176

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 136
    const-string v1, "tag"

    const-string v2, "intent!=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->strDID:Ljava/lang/String;

    .line 138
    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->strDate:Ljava/lang/String;

    .line 140
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->strCameraName:Ljava/lang/String;

    .line 141
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->position:I

    .line 143
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 142
    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v1, "tag"

    const-string v2, "intent==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDeletePicInterface(Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;)V
    .locals 0
    .param p0, "dpi"    # Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;

    .prologue
    .line 390
    sput-object p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->deletePicInterface:Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;

    .line 391
    return-void
.end method


# virtual methods
.method public myTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    .line 351
    const-string v0, "tgg"

    const-string v1, "ShowLoc myTouch "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 383
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u5176\u4ed6\u4e8b\u4ef6 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 354
    :pswitch_0
    const-string v0, "tgg"

    const-string v1, "ShowLoc down "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->x1:F

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->y1:F

    goto :goto_0

    .line 359
    :pswitch_1
    const-string v0, "tgg"

    const-string v1, "ShowLoc up "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->x1:F

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->x2:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->y1:F

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->y2:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 361
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u6309\u4e0b "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->isShowing:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u9690\u85cf "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->isShowing:Z

    goto :goto_0

    .line 368
    :cond_0
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u663e\u793a "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->isShowing:Z

    goto :goto_0

    .line 374
    :cond_1
    const-string v0, "tgg"

    const-string v1, "ShowLoc up fling "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :pswitch_2
    const-string v0, "tgg"

    const-string v1, "ShowLoc move "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->x2:F

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->y2:F

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 170
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "dellist"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->delList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->finish()V

    .line 174
    const v1, 0x7f040006

    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f080019
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    .line 339
    new-instance v0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    sget-object v1, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    .line 340
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 341
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 342
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 343
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 344
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 345
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setMyTouch(Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;)V

    .line 346
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->position:I

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setSelection(I)V

    .line 347
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getDataFromOther()V

    .line 80
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->requestWindowFeature(I)Z

    .line 81
    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenWidth:I

    .line 83
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenHeight:I

    .line 84
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 85
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->findView()V

    .line 86
    new-instance v0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    sget-object v1, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    .line 87
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 88
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 89
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 92
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setMyTouch(Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;)V

    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->position:I

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setSelection(I)V

    .line 94
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->strCameraName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_TakeDate:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->strDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->desc:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_Sum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->desc:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->delList:Ljava/util/ArrayList;

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 324
    sget-object v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    sput-object v1, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    .line 328
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->delList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->delList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->delList:Ljava/util/ArrayList;

    .line 332
    :cond_1
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 201
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->position:I

    .line 202
    sget-object v4, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 203
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "path"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "content":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const-string v4, "time"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    .local v3, "strTime":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_TakeDate:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->mTv_Sum:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->desc:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 184
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "dellist"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->delList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
