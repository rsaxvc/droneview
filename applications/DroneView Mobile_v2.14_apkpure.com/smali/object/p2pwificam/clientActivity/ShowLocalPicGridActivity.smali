.class public Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "ShowLocalPicGridActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;"
    }
.end annotation


# static fields
.field public static arrayList:Ljava/util/ArrayList;
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

.field public bthread:Z

.field private btnBack:Landroid/widget/ImageButton;

.field private btnDel:Landroid/widget/Button;

.field private btnEdit:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/Button;

.field private btnSelectReverse:Landroid/widget/Button;

.field private delPics:Ljava/util/ArrayList;
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

.field private dialog:Landroid/app/ProgressDialog;

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

.field private tag:I

.field private thread:Ljava/lang/Thread;

.field private tvNoPics:Landroid/widget/TextView;

.field private tvSelectSum:Landroid/widget/TextView;

.field private tvTakePicTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    .line 58
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->bthread:Z

    .line 59
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->thread:Ljava/lang/Thread;

    .line 60
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->delPics:Ljava/util/ArrayList;

    .line 61
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->dialog:Landroid/app/ProgressDialog;

    .line 62
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tag:I

    .line 63
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$1;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->delPics:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tag:I

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->delPics:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvNoPics:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    return-void
.end method

.method private checkSelect()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 376
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    const/4 v3, 0x0

    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    .line 379
    :cond_0
    return-void

    .line 369
    :cond_1
    sget-object v3, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 370
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "status"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 371
    .local v2, "status":I
    const-string v3, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkSelect status:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnBack:Landroid/widget/ImageButton;

    .line 138
    const v0, 0x7f0802fd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvTakePicTime:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0802fe

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f080303

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->gridView:Landroid/widget/GridView;

    .line 141
    const v0, 0x7f080300

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnSelectAll:Landroid/widget/Button;

    .line 142
    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnSelectReverse:Landroid/widget/Button;

    .line 143
    const v0, 0x7f080302

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnDel:Landroid/widget/Button;

    .line 144
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvNoPics:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0802ff

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnEdit:Landroid/widget/Button;

    .line 147
    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    .line 148
    return-void
.end method

.method private getDataFromOther()V
    .locals 6

    .prologue
    .line 303
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 304
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "did"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strDID:Ljava/lang/String;

    .line 305
    const-string v4, "date"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strDate:Ljava/lang/String;

    .line 306
    const-string v4, "camera_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strCameraName:Ljava/lang/String;

    .line 307
    const-string v4, "list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->aList:Ljava/util/ArrayList;

    .line 308
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->aList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 318
    return-void

    .line 310
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->aList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 312
    .local v3, "path":Ljava/lang/String;
    const-string v4, "path"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v4, "status"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v4, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnSelectReverse:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnDel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public delPic(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isAll"    # Z

    .prologue
    .line 421
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ShowLocalPicGrid  path:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-nez p2, :cond_2

    .line 423
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 424
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 439
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 425
    .restart local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 426
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "path"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    .local v3, "pa":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 430
    sget-object v4, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 424
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "pa":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->clearAll()V

    .line 437
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 175
    :sswitch_0
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    if-eqz v5, :cond_1

    .line 176
    iput v8, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 177
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    .line 179
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 181
    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 186
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 184
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->finish()V

    .line 189
    const v5, 0x7f040006

    .line 190
    const/high16 v6, 0x7f040000

    .line 189
    invoke-virtual {p0, v5, v6}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 195
    :sswitch_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 196
    .restart local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 206
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v6, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 198
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 199
    .local v3, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "status"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 200
    .local v4, "status":I
    if-eq v4, v9, :cond_3

    .line 201
    const-string v5, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v5, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "status":I
    :sswitch_2
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    .restart local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput v8, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 213
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 232
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v6, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 214
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 215
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 216
    .restart local v3    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "status"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 217
    .restart local v4    # "status":I
    packed-switch v4, :pswitch_data_0

    .line 213
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 219
    :pswitch_0
    iget v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 220
    const-string v5, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v5, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 224
    :pswitch_1
    const-string v5, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v5, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 237
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "status":I
    :sswitch_3
    const-string v5, "tag"

    const-string v6, "delete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput v8, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 239
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    new-instance v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)V

    new-array v6, v8, [Ljava/lang/Void;

    .line 281
    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 286
    :sswitch_4
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    if-eqz v5, :cond_5

    .line 287
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    goto/16 :goto_0

    .line 291
    :cond_5
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    .line 294
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f0802ff -> :sswitch_4
        0x7f080300 -> :sswitch_1
        0x7f080301 -> :sswitch_2
        0x7f080302 -> :sswitch_3
    .end sparse-switch

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->requestWindowFeature(I)Z

    .line 101
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->getDataFromOther()V

    .line 102
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->setContentView(I)V

    .line 103
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->findView()V

    .line 104
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->setListener()V

    .line 105
    new-instance v0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strDID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v0, v2}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->setMode(I)V

    .line 107
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 110
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->thread:Ljava/lang/Thread;

    .line 111
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->setDeletePicInterface(Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$DeletePicInterface;)V

    .line 113
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->dialog:Landroid/app/ProgressDialog;

    .line 114
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->bthread:Z

    .line 388
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 389
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v5, "tag"

    const-string v6, "onItemClick"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "this.position:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    if-nez v5, :cond_1

    .line 326
    iget v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    if-eq v5, p3, :cond_0

    .line 327
    const/4 v5, -0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    .line 328
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "did"

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v5, "list"

    sget-object v6, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 331
    const-string v5, "date"

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v5, "position"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v5, "camera_name"

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strCameraName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 364
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v5, -0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    goto :goto_0

    .line 339
    :cond_1
    iget v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    if-eq v5, p3, :cond_3

    .line 340
    const/4 v5, -0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    .line 341
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 342
    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 343
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 344
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 345
    .local v3, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "status"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 346
    .local v4, "status":I
    if-nez v4, :cond_2

    .line 347
    const-string v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 355
    :goto_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v6, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 357
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->checkSelect()V

    goto :goto_0

    .line 351
    :cond_2
    iget v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 352
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 359
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "status":I
    :cond_3
    const/4 v5, -0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 394
    iput p3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->position:I

    .line 395
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    .line 397
    const-string v4, "tag"

    const-string v5, "onItemLongClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 399
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    sget-object v4, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 400
    .local v2, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 401
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "status"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 402
    .local v3, "status":I
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "status:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-nez v3, :cond_0

    .line 404
    iget v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 405
    const-string v4, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v4, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :goto_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    iget v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 415
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->checkSelect()V

    .line 416
    return v7

    .line 408
    :cond_0
    iget v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 409
    const-string v4, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v4, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 152
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 153
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    if-eqz v3, :cond_1

    .line 154
    iput v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->seletNum:I

    .line 155
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->isEditing:Z

    .line 157
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    .line 159
    invoke-virtual {v3}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getArrayPics()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 164
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-virtual {v3}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 165
    const/4 v3, 0x1

    .line 168
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    :goto_1
    return v3

    .line 161
    .restart local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 162
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "arrayPics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 121
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart  arrayList.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvTakePicTime:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->strDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->finish()V

    .line 126
    :cond_0
    return-void
.end method
