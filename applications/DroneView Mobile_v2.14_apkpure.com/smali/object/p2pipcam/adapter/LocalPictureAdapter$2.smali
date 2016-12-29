.class Lobject/p2pipcam/adapter/LocalPictureAdapter$2;
.super Ljava/lang/Thread;
.source "LocalPictureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/LocalPictureAdapter;->initBmp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/LocalPictureAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->groupList:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$1(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 63
    .local v12, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v12, :cond_0

    .line 78
    iget-object v1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$5(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->groupList:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$1(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 65
    .local v13, "time":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->childMap:Ljava/util/Map;
    invoke-static {v2}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$2(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 66
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "btp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 68
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->width:I
    invoke-static {v2}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$3(Lobject/p2pipcam/adapter/LocalPictureAdapter;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 70
    .local v10, "scaleX":F
    iget-object v2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->width:I
    invoke-static {v2}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$3(Lobject/p2pipcam/adapter/LocalPictureAdapter;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 71
    .local v11, "scaleY":F
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 72
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 74
    .local v7, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->mapBmp:Ljava/util/HashMap;
    invoke-static {v2}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$4(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalPictureAdapter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->access$5(Lobject/p2pipcam/adapter/LocalPictureAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
