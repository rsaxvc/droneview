.class Lobject/p2pwificam/clientActivity/PlayTestActivity$9;
.super Ljava/lang/Thread;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;->returnLastBmp2Home()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 454
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v0

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    .line 458
    .local v9, "rgb":[B
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videodata:[B
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$23(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v0

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v2

    .line 459
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    .line 458
    invoke-static {v0, v9, v2, v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->YUV4202RGB565([B[BII)I

    .line 462
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 463
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 464
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v2

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    .line 465
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 464
    invoke-static {v2, v6, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$28(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/graphics/Bitmap;)V

    .line 466
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 469
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "rgb":[B
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 471
    .local v3, "btmWidth":I
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 472
    .local v4, "btmHeight":I
    const/high16 v0, 0x428c0000    # 70.0f

    int-to-float v2, v3

    div-float v11, v0, v2

    .line 473
    .local v11, "scaleW":F
    const/high16 v0, 0x42480000    # 50.0f

    int-to-float v2, v4

    div-float v10, v0, v2

    .line 474
    .local v10, "scaleH":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 475
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 476
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    const/4 v6, 0x1

    move v2, v1

    .line 476
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 478
    .local v7, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lobject/p2pwificam/clientActivity/PlayTestActivity;->saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$95(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 480
    .end local v3    # "btmWidth":I
    .end local v4    # "btmHeight":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "scaleH":F
    .end local v11    # "scaleW":F
    :cond_1
    return-void
.end method
