.class Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;
.super Ljava/lang/Thread;
.source "LocalVideoListActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->initBmp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 67
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->groupList:Ljava/util/List;
    invoke-static {v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$1(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 68
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 75
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$5(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    return-void

    .line 69
    :cond_0
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->groupList:Ljava/util/List;
    invoke-static {v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$1(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    .local v4, "time":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->childMap:Ljava/util/Map;
    invoke-static {v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$2(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 71
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    # invokes: Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v6, v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$3(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->mapBmp:Ljava/util/HashMap;
    invoke-static {v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$4(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    # getter for: Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$5(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
