.class Lobject/p2pwificam/clientActivity/CallVideoActivity$12;
.super Ljava/lang/Thread;
.source "CallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;->returnLastBmp2Home()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->isH264:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$31(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v0

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    .line 182
    .local v9, "rgb":[B
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->videodata:[B
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/CallVideoActivity;)[B

    move-result-object v0

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v2

    .line 183
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v6

    .line 182
    invoke-static {v0, v9, v2, v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->YUV4202RGB565([B[BII)I

    .line 186
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 187
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 188
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v2

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v6

    .line 189
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 188
    invoke-static {v2, v6, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$32(Lobject/p2pwificam/clientActivity/CallVideoActivity;Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$33(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 193
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "rgb":[B
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$33(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$33(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 195
    .local v3, "btmWidth":I
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$33(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 196
    .local v4, "btmHeight":I
    const/high16 v0, 0x428c0000    # 70.0f

    int-to-float v2, v3

    div-float v11, v0, v2

    .line 197
    .local v11, "scaleW":F
    const/high16 v0, 0x42480000    # 50.0f

    int-to-float v2, v4

    div-float v10, v0, v2

    .line 198
    .local v10, "scaleH":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 199
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 200
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$33(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    const/4 v6, 0x1

    move v2, v1

    .line 200
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 202
    .local v7, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v7}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$34(Lobject/p2pwificam/clientActivity/CallVideoActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 204
    .end local v3    # "btmWidth":I
    .end local v4    # "btmHeight":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "scaleH":F
    .end local v11    # "scaleW":F
    :cond_1
    return-void
.end method
