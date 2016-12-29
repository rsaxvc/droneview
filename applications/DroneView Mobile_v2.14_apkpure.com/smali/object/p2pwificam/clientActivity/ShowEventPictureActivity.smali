.class public Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "ShowEventPictureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$DeletePicInterface;
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

.field private static deletePicInterface:Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$DeletePicInterface;

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

.field private btnShare:Landroid/widget/ImageButton;

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

    .line 32
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 34
    const-string v0, "Event"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->TAG:Ljava/lang/String;

    .line 46
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->DELETE:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->DELETEALL:I

    .line 57
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->x1:F

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->x2:F

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->y1:F

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->y2:F

    .line 58
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->isShowing:Z

    .line 59
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->beforeLenght:F

    .line 60
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->afterLenght:F

    .line 61
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->isScale:Z

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->currentScale:F

    .line 63
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$1;-><init>(Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->isShowing:Z

    return-void
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 154
    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/customComponent/MyGallery;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    .line 155
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_TakeDate:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0802fa

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_Sum:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->btnBack:Landroid/widget/ImageButton;

    .line 159
    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->btnShare:Landroid/widget/ImageButton;

    .line 160
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->tvTitle:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->topLayout:Landroid/widget/RelativeLayout;

    .line 162
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    .line 163
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->tvNoPics:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->btnShare:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->strCameraName:Ljava/lang/String;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 221
    :goto_0
    return-object v2

    .line 219
    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "s":Ljava/lang/String;
    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, ":"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getResources()Landroid/content/res/Resources;

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

    goto :goto_0
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 139
    const-string v1, "tag"

    const-string v2, "intent!=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->strDID:Ljava/lang/String;

    .line 141
    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->strDate:Ljava/lang/String;

    .line 143
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->strCameraName:Ljava/lang/String;

    .line 144
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->position:I

    .line 146
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 145
    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v1, "tag"

    const-string v2, "intent==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDeletePicInterface(Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$DeletePicInterface;)V
    .locals 0
    .param p0, "dpi"    # Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$DeletePicInterface;

    .prologue
    .line 315
    sput-object p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->deletePicInterface:Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$DeletePicInterface;

    .line 316
    return-void
.end method


# virtual methods
.method public myTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    .line 276
    const-string v0, "tgg"

    const-string v1, "ShowLoc myTouch "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 308
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u5176\u4ed6\u4e8b\u4ef6 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return-void

    .line 279
    :pswitch_0
    const-string v0, "tgg"

    const-string v1, "ShowLoc down "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->x1:F

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->y1:F

    goto :goto_0

    .line 284
    :pswitch_1
    const-string v0, "tgg"

    const-string v1, "ShowLoc up "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->x1:F

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->x2:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->y1:F

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->y2:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 286
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u6309\u4e0b "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->isShowing:Z

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u9690\u85cf1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->isShowing:Z

    goto :goto_0

    .line 293
    :cond_0
    const-string v0, "tgg"

    const-string v1, "ShowLoc \u663e\u793a1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->isShowing:Z

    goto :goto_0

    .line 299
    :cond_1
    const-string v0, "tgg"

    const-string v1, "ShowLoc up fling "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :pswitch_2
    const-string v0, "tgg"

    const-string v1, "ShowLoc move "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->x2:F

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->y2:F

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 175
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, "data":Landroid/content/Intent;
    const-string v6, "dellist"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->delList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 177
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->finish()V

    .line 179
    const v6, 0x7f040006

    const/high16 v7, 0x7f040000

    invoke-virtual {p0, v6, v7}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 182
    .end local v0    # "data":Landroid/content/Intent;
    :sswitch_1
    sget-object v6, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    iget v7, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->position:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 183
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "path"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    .local v4, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "file":Ljava/io/File;
    const-string v6, "video"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 186
    .local v5, "video_path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "it":Landroid/content/Intent;
    const-string v6, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    const-string v6, "*/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const v6, 0x7f0600a6

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f0802f7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    .line 264
    new-instance v0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    sget-object v1, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    .line 265
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 266
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 267
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 268
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 269
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 270
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setMyTouch(Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;)V

    .line 271
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->position:I

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setSelection(I)V

    .line 272
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getDataFromOther()V

    .line 83
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->screenWidth:I

    .line 86
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->screenHeight:I

    .line 87
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 88
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->findView()V

    .line 89
    new-instance v0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    sget-object v1, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    .line 90
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 91
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/customComponent/MyGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 92
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 95
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery;->setMyTouch(Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;)V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mGallery:Lobject/p2pipcam/customComponent/MyGallery;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->position:I

    invoke-virtual {v0, v1}, Lobject/p2pipcam/customComponent/MyGallery;->setSelection(I)V

    .line 97
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->strCameraName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_TakeDate:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->strDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->desc:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_Sum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->desc:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->delList:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 249
    sget-object v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    sput-object v1, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    .line 253
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->delList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->delList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->delList:Ljava/util/ArrayList;

    .line 257
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
    .line 227
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->position:I

    .line 228
    sget-object v4, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 229
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "path"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "content":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const-string v4, "time"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, "strTime":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_TakeDate:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_TakeTime:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->mTv_Sum:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->desc:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->arrayList:Ljava/util/ArrayList;

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

    .line 239
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 209
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "dellist"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->delList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 212
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 214
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
    .line 244
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
