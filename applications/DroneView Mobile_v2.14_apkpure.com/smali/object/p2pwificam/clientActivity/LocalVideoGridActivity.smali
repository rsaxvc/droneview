.class public Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "LocalVideoGridActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private aList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arrayList:Ljava/util/ArrayList;
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

.field private btnBack:Landroid/widget/Button;

.field private btnDel:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/Button;

.field private btnSelectReverse:Landroid/widget/Button;

.field private gridView:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private isEditing:Z

.field private layoutDel:Landroid/widget/LinearLayout;

.field private mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

.field private position:I

.field private seletNum:I

.field private strCameraName:Ljava/lang/String;

.field private strDID:Ljava/lang/String;

.field private strDate:Ljava/lang/String;

.field private tvNoVideo:Landroid/widget/TextView;

.field private tvSelectSum:Landroid/widget/TextView;

.field private tvTakePicTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    .line 57
    new-instance v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$1;-><init>(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->handler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)I
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "s":I
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 476
    .local v1, "s0":I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 477
    .local v2, "s1":I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 478
    .local v3, "s2":I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 479
    .local v4, "s3":I
    shl-int/lit8 v4, v4, 0x18

    .line 480
    shl-int/lit8 v3, v3, 0x10

    .line 481
    shl-int/lit8 v2, v2, 0x8

    .line 482
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 483
    return v0
.end method

.method private checkSelect()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 333
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    const/4 v3, 0x0

    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    .line 336
    :cond_0
    return-void

    .line 327
    :cond_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 328
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "status"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 329
    .local v2, "status":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 248
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnBack:Landroid/widget/Button;

    .line 249
    const v0, 0x7f0802fd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvTakePicTime:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f0802fe

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f080303

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->gridView:Landroid/widget/GridView;

    .line 252
    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    .line 253
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvNoVideo:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvNoVideo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const v0, 0x7f080300

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnSelectAll:Landroid/widget/Button;

    .line 256
    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnSelectReverse:Landroid/widget/Button;

    .line 257
    const v0, 0x7f080302

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnDel:Landroid/widget/Button;

    .line 258
    return-void
.end method

.method private getDataFromOther()V
    .locals 6

    .prologue
    .line 261
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 262
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "did"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->strDID:Ljava/lang/String;

    .line 263
    const-string v4, "date"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->strDate:Ljava/lang/String;

    .line 264
    const-string v4, "camera_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->strCameraName:Ljava/lang/String;

    .line 265
    const-string v4, "list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->aList:Ljava/util/ArrayList;

    .line 266
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->aList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 274
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->aList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 275
    const/4 v4, 0x0

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->aList:Ljava/util/ArrayList;

    .line 276
    return-void

    .line 268
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->aList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, "path":Ljava/lang/String;
    const-string v4, "path"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v4, "status"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initBmp()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "tag"

    const-string v1, "LocalVideoGridActivity  initBmp:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;-><init>(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)V

    .line 206
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->start()V

    .line 207
    return-void
.end method

.method public static intToByte(I)[B
    .locals 5
    .param p0, "number"    # I

    .prologue
    .line 464
    move v2, p0

    .line 465
    .local v2, "temp":I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 466
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 470
    return-object v0

    .line 467
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 468
    shr-int/lit8 v2, v2, 0x8

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnSelectReverse:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->btnDel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 434
    :goto_0
    return-void

    .line 342
    :sswitch_0
    iget-boolean v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    if-eqz v7, :cond_1

    .line 343
    iput v10, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 344
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iput-boolean v10, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    .line 346
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 348
    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 349
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 353
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 351
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "status"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 355
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "i":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->finish()V

    .line 356
    const v7, 0x7f040006

    .line 357
    const/high16 v8, 0x7f040000

    .line 356
    invoke-virtual {p0, v7, v8}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 361
    :sswitch_1
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 363
    .restart local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 372
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 373
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 365
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 366
    .local v5, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "status"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 367
    .local v6, "status":I
    if-eq v6, v11, :cond_3

    .line 368
    const-string v7, "status"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v7, "status"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "i":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "status":I
    :sswitch_2
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    .restart local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_4

    .line 399
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 380
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 381
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 382
    .restart local v5    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "status"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 383
    .restart local v6    # "status":I
    packed-switch v6, :pswitch_data_0

    .line 379
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 385
    :pswitch_0
    iget v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 386
    const-string v7, "status"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v7, "status"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 390
    :pswitch_1
    iget v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 391
    const-string v7, "status"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v7, "status"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 404
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "i":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "status":I
    :sswitch_3
    const-string v7, "tag"

    const-string v8, "delete"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput v10, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 406
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->DelPics()Ljava/util/ArrayList;

    move-result-object v1

    .line 408
    .local v1, "delPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v7, "tag"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "delPics.size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 410
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvNoVideo:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iput-boolean v10, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    .line 412
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    :cond_5
    :goto_5
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 414
    :cond_6
    const/4 v2, 0x1

    .line 415
    .local v2, "flag":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    if-nez v2, :cond_8

    .line 422
    :cond_7
    if-eqz v2, :cond_5

    .line 423
    iput-boolean v10, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    .line 424
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 416
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 417
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "status"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 418
    .restart local v6    # "status":I
    if-ne v6, v11, :cond_9

    .line 419
    const/4 v2, 0x0

    .line 415
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f080300 -> :sswitch_1
        0x7f080301 -> :sswitch_2
        0x7f080302 -> :sswitch_3
    .end sparse-switch

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->requestWindowFeature(I)Z

    .line 72
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->getDataFromOther()V

    .line 73
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->findView()V

    .line 76
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->setListener()V

    .line 77
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvTakePicTime:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->strDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->strDID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 79
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->setMode(I)V

    .line 80
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 84
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->initBmp()V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 489
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    .line 491
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 282
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    if-nez v6, :cond_1

    .line 283
    iget v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    if-eq v6, p3, :cond_0

    .line 284
    iput v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    .line 285
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 286
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "path"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 287
    .local v4, "path":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "filepath"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v6, "arrayList"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 290
    const-string v6, "position"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v6, "camera_name"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->strCameraName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->startActivity(Landroid/content/Intent;)V

    .line 293
    const v6, 0x7f040001

    .line 294
    const v7, 0x7f040005

    .line 293
    invoke-virtual {p0, v6, v7}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->overridePendingTransition(II)V

    .line 323
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 296
    :cond_0
    iput v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    goto :goto_0

    .line 299
    :cond_1
    iget v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    if-eq v6, p3, :cond_3

    .line 300
    iput v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    .line 301
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 302
    invoke-virtual {v6}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 303
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 304
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 305
    .local v3, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "status"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 306
    .local v5, "status":I
    if-nez v5, :cond_2

    .line 307
    iget v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 308
    const-string v6, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v6, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :goto_1
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v6}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 317
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->checkSelect()V

    goto :goto_0

    .line 311
    :cond_2
    iget v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 312
    const-string v6, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v6, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 319
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "status":I
    :cond_3
    iput v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 439
    iput p3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->position:I

    .line 440
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    .line 442
    const-string v4, "tag"

    const-string v5, "onItemLongClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 444
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 445
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 446
    .local v2, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "status"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 447
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 448
    iget v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 449
    const-string v4, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v4, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :goto_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v5, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 459
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->checkSelect()V

    .line 460
    return v6

    .line 452
    :cond_0
    iget v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 453
    const-string v4, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v4, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 220
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 221
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    if-eqz v3, :cond_1

    .line 222
    iput v5, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->seletNum:I

    .line 223
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->isEditing:Z

    .line 225
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 227
    invoke-virtual {v3}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 232
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v3}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 233
    const/4 v3, 0x1

    .line 236
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    :goto_1
    return v3

    .line 229
    .restart local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 230
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 67
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->finish()V

    .line 216
    :cond_0
    return-void
.end method
