.class Lobject/p2pipcam/customComponent/MyGallery$1;
.super Landroid/os/Handler;
.source "MyGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/customComponent/MyGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/customComponent/MyGallery;


# direct methods
.method constructor <init>(Lobject/p2pipcam/customComponent/MyGallery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyGallery$1;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    .line 170
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 175
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$1;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->isFirst:Z
    invoke-static {v1}, Lobject/p2pipcam/customComponent/MyGallery;->access$0(Lobject/p2pipcam/customComponent/MyGallery;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "tgg"

    const-string v2, "\u5355\u51fb\u4e8b\u4ef6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 179
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$1;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;
    invoke-static {v1}, Lobject/p2pipcam/customComponent/MyGallery;->access$1(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$1;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;
    invoke-static {v1}, Lobject/p2pipcam/customComponent/MyGallery;->access$1(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    move-result-object v1

    invoke-interface {v1, v0}, Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;->myTouch(Landroid/view/MotionEvent;)V

    .line 185
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v1, "tgg"

    const-string v2, "\u53d6\u6d88\u4e8b\u4ef6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
