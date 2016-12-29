.class public Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShowLocPicGalleryAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

.field private list:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->list:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    move-object v3, p1

    .line 69
    .local v3, "picPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 72
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 77
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 79
    const-string v4, "Picture"

    const-string v5, "W:%d H:%d Path:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0x5a0

    if-le v4, v5, :cond_1

    const/4 v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 82
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 83
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 85
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    return-object v0

    .line 81
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v4, 0x1

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, -0x1

    .line 47
    iget-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 48
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "path"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    .local v3, "path":Ljava/lang/String;
    const-string v4, "Event"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Show Picture Path:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_0
    invoke-direct {p0, v3}, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;-><init>(Landroid/content/Context;II)V

    .line 52
    iput-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .line 54
    iget-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    new-instance v5, Landroid/widget/Gallery$LayoutParams;

    .line 55
    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 54
    invoke-virtual {v4, v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v4, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    return-object v4

    .line 57
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->context:Landroid/content/Context;

    const/16 v6, 0x64

    const/16 v7, 0x32

    invoke-direct {v4, v5, v6, v7}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .line 60
    iget-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    new-instance v5, Landroid/widget/Gallery$LayoutParams;

    .line 61
    invoke-direct {v5, v8, v8}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {v4, v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v4, p0, Lobject/p2pipcam/adapter/ShowLocPicGalleryAdapter;->img:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v4, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
