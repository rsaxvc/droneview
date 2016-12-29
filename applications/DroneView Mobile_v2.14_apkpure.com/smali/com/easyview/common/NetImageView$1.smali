.class Lcom/easyview/common/NetImageView$1;
.super Landroid/os/Handler;
.source "NetImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/common/NetImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/common/NetImageView;


# direct methods
.method constructor <init>(Lcom/easyview/common/NetImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/common/NetImageView$1;->this$0:Lcom/easyview/common/NetImageView;

    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    .line 40
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 41
    const/4 v2, 0x0

    .line 42
    array-length v3, v1

    .line 41
    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/easyview/common/NetImageView$1;->this$0:Lcom/easyview/common/NetImageView;

    invoke-virtual {v2, v0}, Lcom/easyview/common/NetImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/easyview/common/NetImageView$1;->this$0:Lcom/easyview/common/NetImageView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/easyview/common/NetImageView;->access$0(Lcom/easyview/common/NetImageView;Z)V

    .line 46
    return-void
.end method
