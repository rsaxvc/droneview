.class public Lobject/p2pipcam/adapter/ShowPictureAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShowPictureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private _listEventDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "DataSet":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/ShowPictureAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lobject/p2pipcam/adapter/ShowPictureAdapter;->_listEventDetail:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lobject/p2pipcam/adapter/ShowPictureAdapter;->_listEventDetail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lobject/p2pipcam/adapter/ShowPictureAdapter;->onBindViewHolder(Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 48
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowPictureAdapter;->_listEventDetail:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 49
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getPicturePath()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "picPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 58
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 60
    const-string v5, "Picture"

    const-string v6, "W:%d H:%d"

    const/4 v7, 0x2

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

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v6, 0x5a0

    if-le v5, v6, :cond_1

    const/4 v5, 0x2

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 64
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 65
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 66
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    if-nez v1, :cond_2

    .line 80
    :goto_2
    return-void

    .line 62
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 73
    :cond_2
    iget-object v5, p1, Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lobject/p2pipcam/adapter/ShowPictureAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 84
    iget-object v2, p0, Lobject/p2pipcam/adapter/ShowPictureAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030071

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    .local v1, "vh":Lobject/p2pipcam/adapter/ShowPictureAdapter$ViewHolder;
    return-object v1
.end method
