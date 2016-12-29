.class Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;
.super Ljava/lang/Thread;
.source "ShowLocalPicGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    iget-boolean v5, v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->bthread:Z

    if-nez v5, :cond_1

    .line 93
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 94
    return-void

    .line 73
    :cond_1
    sget-object v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 74
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "path"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    .local v4, "path":Ljava/lang/String;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v5, 0x8

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 87
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v4, v6}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 89
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    iget-boolean v5, v5, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->bthread:Z

    if-eqz v5, :cond_2

    .line 90
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$1(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
