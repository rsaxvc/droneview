.class public Lobject/p2pipcam/adapter/LocalPictureAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalPictureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private childMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

.field private inflator:Landroid/view/LayoutInflater;

.field private isOver:Z

.field private mapBmp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "wh"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "childMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->mode:I

    .line 30
    iput-object v1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    .line 31
    iput-object v1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->mapBmp:Ljava/util/HashMap;

    .line 32
    iput-boolean v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->isOver:Z

    .line 33
    new-instance v0, Lobject/p2pipcam/adapter/LocalPictureAdapter$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/LocalPictureAdapter$1;-><init>(Lobject/p2pipcam/adapter/LocalPictureAdapter;)V

    iput-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->handler:Landroid/os/Handler;

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    iput-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 51
    iput-object p2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->groupList:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->childMap:Ljava/util/Map;

    .line 53
    iput p4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->width:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->mapBmp:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->initBmp()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/LocalPictureAdapter;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->isOver:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->groupList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->childMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pipcam/adapter/LocalPictureAdapter;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->width:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->mapBmp:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)I
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "s":I
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 174
    .local v1, "s0":I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 175
    .local v2, "s1":I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 176
    .local v3, "s2":I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 177
    .local v4, "s3":I
    shl-int/lit8 v4, v4, 0x18

    .line 178
    shl-int/lit8 v3, v3, 0x10

    .line 179
    shl-int/lit8 v2, v2, 0x8

    .line 180
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 181
    return v0
.end method

.method public static intToByte(I)[B
    .locals 5
    .param p0, "number"    # I

    .prologue
    .line 161
    move v2, p0

    .line 162
    .local v2, "temp":I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 163
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 167
    return-object v0

    .line 164
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 165
    shr-int/lit8 v2, v2, 0x8

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBmp(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->mapBmp:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 101
    if-nez p2, :cond_2

    .line 102
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 103
    const v5, 0x7f030032

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    new-instance v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    invoke-direct {v4, p0, v6}, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/LocalPictureAdapter;Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;)V

    iput-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    .line 105
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    const v4, 0x7f080078

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 106
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    const v4, 0x7f08014d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->sum:Landroid/widget/TextView;

    .line 107
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    const v4, 0x7f08014c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 108
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    .line 109
    const v4, 0x7f080034

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 108
    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    .line 110
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->width:I

    iget v5, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->width:I

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->groupList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 118
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->sum:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->mapBmp:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 121
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 122
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    :cond_0
    iget-boolean v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->isOver:Z

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    :cond_1
    return-object p2

    .line 112
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "time":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    iput-object v4, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->holder:Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;

    goto :goto_0
.end method

.method public initBmp()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;-><init>(Lobject/p2pipcam/adapter/LocalPictureAdapter;)V

    .line 80
    invoke-virtual {v0}, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->start()V

    .line 81
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 133
    iput p1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->mode:I

    .line 135
    return-void
.end method

.method public setOver(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->isOver:Z

    .line 139
    return-void
.end method

.method public updateChild(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "childMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->childMap:Ljava/util/Map;

    .line 158
    return-void
.end method

.method public updateGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter;->groupList:Ljava/util/List;

    .line 154
    return-void
.end method
