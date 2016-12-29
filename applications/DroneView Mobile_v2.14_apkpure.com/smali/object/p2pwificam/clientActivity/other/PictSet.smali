.class public Lobject/p2pwificam/clientActivity/other/PictSet;
.super Ljava/lang/Object;
.source "PictSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBitmapAutoSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    .local v3, "fs":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 23
    .local v0, "bs":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .local v4, "fs":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .local v1, "bs":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 26
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x5

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 27
    const/4 v7, 0x0

    invoke-static {v1, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 32
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 33
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v0, v1

    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 38
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    :goto_1
    return-object v6

    .line 34
    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 29
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 33
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 34
    :catch_2
    move-exception v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 30
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 32
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 33
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 37
    :goto_4
    throw v6

    .line 34
    :catch_3
    move-exception v2

    .line 35
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 30
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_3

    .line 28
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static setBitmapOption(Ljava/lang/String;II)Landroid/graphics/BitmapFactory$Options;
    .locals 7
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 43
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 44
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 46
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 48
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 49
    .local v2, "outWidth":I
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 50
    .local v1, "outHeight":I
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 51
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 53
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 56
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 57
    div-int v4, v2, p1

    div-int v5, v1, p2

    add-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 58
    .local v3, "sampleSize":I
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    .end local v3    # "sampleSize":I
    :cond_0
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    return-object v0
.end method
