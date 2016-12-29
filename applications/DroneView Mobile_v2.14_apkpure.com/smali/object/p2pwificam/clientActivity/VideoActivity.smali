.class public Lobject/p2pwificam/clientActivity/VideoActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private bntPhone:Landroid/widget/Button;

.field private bntRemote:Landroid/widget/Button;

.field private broadcast:Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;

.field private dialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field private listView:Landroid/widget/ListView;

.field private mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

.field private maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/MovieInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private playList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/MovieInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tag:I

.field private tax:I

.field private timeOne:I

.field private timeTag:I

.field private timeTwo:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 46
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    .line 50
    iput v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->timeTag:I

    .line 51
    iput v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->timeOne:I

    .line 52
    iput v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->timeTwo:I

    .line 53
    iput v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tag:I

    .line 54
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;

    .line 55
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->dialog:Landroid/app/ProgressDialog;

    .line 56
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->maps:Ljava/util/Map;

    .line 57
    iput v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tax:I

    .line 58
    new-instance v0, Lobject/p2pwificam/clientActivity/VideoActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/VideoActivity$1;-><init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->handler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/VideoActivity;)Lobject/p2pipcam/adapter/VideoActivityAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/VideoActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/VideoActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/VideoActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/VideoActivity;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->maps:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/VideoActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/VideoActivity;->getVideoFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->maps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/VideoActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/VideoActivity;->getSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToInt([B)I
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "s":I
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 292
    .local v1, "s0":I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 293
    .local v2, "s1":I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 294
    .local v3, "s2":I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 295
    .local v4, "s3":I
    shl-int/lit8 v4, v4, 0x18

    .line 296
    shl-int/lit8 v3, v3, 0x10

    .line 297
    shl-int/lit8 v2, v2, 0x8

    .line 298
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 299
    return v0
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 169
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntPhone:Landroid/widget/Button;

    .line 170
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntRemote:Landroid/widget/Button;

    .line 171
    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->listView:Landroid/widget/ListView;

    .line 172
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 173
    const v1, 0x7f03001d

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method private getSize(J)Ljava/lang/String;
    .locals 7
    .param p1, "size"    # J

    .prologue
    const-wide/32 v5, 0x40000000

    const-wide/16 v3, 0x400

    const-wide/32 v1, 0x100000

    .line 334
    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    .line 336
    :cond_0
    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    cmp-long v0, p1, v5

    if-gtz v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 304
    new-instance v0, Lobject/p2pwificam/clientActivity/VideoActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/VideoActivity$3;-><init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 331
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntPhone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntRemote:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->notifyDataSetChanged()V

    .line 212
    return-void

    .line 187
    :pswitch_0
    iput v2, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tax:I

    .line 188
    iget v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tag:I

    if-ne v0, v3, :cond_0

    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    iput v2, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tag:I

    .line 193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntPhone:Landroid/widget/Button;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntRemote:Landroid/widget/Button;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->setMode(I)V

    goto :goto_0

    .line 198
    :pswitch_1
    iput v3, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tag:I

    .line 199
    iget v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tax:I

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iput v3, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tax:I

    .line 204
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntRemote:Landroid/widget/Button;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->bntPhone:Landroid/widget/Button;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->setMode(I)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x7f08009d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v1, "TAG"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/VideoActivity;->findView()V

    .line 83
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/VideoActivity;->setListener()V

    .line 84
    new-instance v1, Lobject/p2pipcam/adapter/VideoActivityAdapter;

    sget-object v2, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lobject/p2pipcam/adapter/VideoActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    .line 85
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    new-instance v1, Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;-><init>(Lobject/p2pwificam/clientActivity/VideoActivity;Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->broadcast:Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "camera_status_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->broadcast:Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    const/4 v1, 0x1

    sput v1, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 368
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->broadcast:Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
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
    .line 232
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 233
    .local v1, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    const/4 v2, 0x0

    .line 234
    .local v2, "did":Ljava/lang/String;
    const/4 v7, 0x0

    .line 235
    .local v7, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 236
    .local v9, "pwd":Ljava/lang/String;
    const/4 v11, 0x0

    .line 237
    .local v11, "user":Ljava/lang/String;
    const/4 v10, 0x0

    .line 238
    .local v10, "status":I
    const/4 v6, 0x0

    .line 239
    .local v6, "mode":I
    const/4 v8, 0x0

    .line 240
    .local v8, "positionID":I
    iget v12, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tag:I

    if-nez v12, :cond_2

    .line 241
    if-nez p3, :cond_1

    .line 242
    new-instance v3, Landroid/content/Intent;

    .line 243
    const-class v12, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    .line 242
    invoke-direct {v3, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v3, "intent":Landroid/content/Intent;
    const-string v12, "zhaoxing"

    iget-object v13, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    const-string v12, "zhaogeng"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    const v12, 0x7f040001

    .line 248
    const v13, 0x7f040005

    .line 247
    invoke-virtual {p0, v12, v13}, Lobject/p2pwificam/clientActivity/VideoActivity;->overridePendingTransition(II)V

    .line 286
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 252
    const-class v12, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    .line 251
    invoke-direct {v3, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v13, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->maps:Ljava/util/Map;

    sget-object v12, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    .line 254
    add-int/lit8 v14, p3, -0x1

    .line 253
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 254
    invoke-virtual {v12}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v12

    .line 253
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 255
    .local v5, "lists":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/MovieInfo;>;"
    const-string v12, "zhaoxing"

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 256
    const-string v12, "zhaogeng"

    move/from16 v0, p3

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    const v12, 0x7f040001

    .line 259
    const v13, 0x7f040005

    .line 258
    invoke-virtual {p0, v12, v13}, Lobject/p2pwificam/clientActivity/VideoActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 261
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "lists":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/MovieInfo;>;"
    :cond_2
    iget v12, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->tag:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 262
    sget-object v12, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    add-int/lit8 v13, p3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    check-cast v1, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 263
    .restart local v1    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    add-int/lit8 v8, p3, -0x1

    .line 264
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v7

    .line 266
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v9

    .line 267
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v11

    .line 268
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v10

    .line 269
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    invoke-virtual {v12}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->getMode()I

    move-result v6

    .line 270
    const/4 v12, 0x2

    if-ne v6, v12, :cond_0

    .line 271
    const/4 v12, 0x2

    if-ne v10, v12, :cond_3

    .line 272
    new-instance v4, Landroid/content/Intent;

    const-class v12, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    invoke-direct {v4, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v4, "intentVid":Landroid/content/Intent;
    const-string v12, "camera_name"

    invoke-virtual {v4, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v12, "cameraid"

    invoke-virtual {v4, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v12, "camera_pwd"

    invoke-virtual {v4, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v12, "camera_user"

    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v12, "positionID"

    invoke-virtual {v4, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    const v12, 0x7f040001

    .line 280
    const v13, 0x7f040005

    .line 279
    invoke-virtual {p0, v12, v13}, Lobject/p2pwificam/clientActivity/VideoActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 282
    .end local v4    # "intentVid":Landroid/content/Intent;
    :cond_3
    const v12, 0x7f06018b

    invoke-virtual {p0, v12}, Lobject/p2pwificam/clientActivity/VideoActivity;->showToast(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 346
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 349
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/VideoActivity;->showSureDialog(Landroid/content/Context;)V

    .line 362
    :cond_0
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 351
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 98
    const-string v0, "TAG"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SystemValue.checkSDStatu=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget v0, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    new-instance v0, Lobject/p2pwificam/clientActivity/VideoActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/VideoActivity$2;-><init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 156
    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/VideoActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    :cond_0
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onResume()V

    .line 160
    return-void
.end method
