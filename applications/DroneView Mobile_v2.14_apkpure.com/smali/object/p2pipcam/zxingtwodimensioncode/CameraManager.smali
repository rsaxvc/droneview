.class public final Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x168

.field private static final MAX_FRAME_WIDTH:I = 0x1e0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;


# instance fields
.field private final autoFocusCallback:Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v2, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->TAG:Ljava/lang/String;

    .line 52
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    .local v1, "sdkInt":I
    :goto_0
    sput v1, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->SDK_INT:I

    .line 58
    return-void

    .line 53
    .end local v1    # "sdkInt":I
    :catch_0
    move-exception v0

    .line 55
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v1, 0x2710

    .restart local v1    # "sdkInt":I
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->context:Landroid/content/Context;

    .line 104
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    .line 116
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->useOneShotPreviewCallback:Z

    .line 120
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    .line 121
    iget-boolean v2, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;-><init>(Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;Z)V

    .line 120
    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewCallback:Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;

    .line 122
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;

    invoke-direct {v0}, Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->autoFocusCallback:Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;

    .line 123
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->cameraManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->cameraManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    invoke-direct {v0, p0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->cameraManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 326
    invoke-virtual {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v10

    .line 327
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;->getPreviewFormat()I

    move-result v8

    .line 328
    .local v8, "previewFormat":I
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "previewFormatString":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 345
    const-string v0, "yuv420p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;

    .line 347
    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 346
    invoke-direct/range {v0 .. v7}, Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    .line 349
    :goto_0
    return-object v0

    .line 338
    :pswitch_0
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 339
    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 338
    invoke-direct/range {v0 .. v7}, Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/FlashlightManager;->disableFlashlight()V

    .line 166
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    .line 169
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/16 v6, 0xf0

    .line 242
    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    invoke-virtual {v5}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 243
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 244
    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 245
    const/4 v5, 0x0

    .line 265
    :goto_0
    return-object v5

    .line 247
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 248
    .local v4, "width":I
    if-ge v4, v6, :cond_4

    .line 249
    const/16 v4, 0xf0

    .line 253
    :cond_1
    :goto_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v0, v5, 0x4

    .line 254
    .local v0, "height":I
    if-ge v0, v6, :cond_5

    .line 255
    const/16 v0, 0xf0

    .line 259
    :cond_2
    :goto_2
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 260
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 261
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    .line 262
    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    iput-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 263
    sget-object v5, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Calculated framing rect: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_3
    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 250
    .restart local v4    # "width":I
    :cond_4
    const/16 v5, 0x1e0

    if-le v4, v5, :cond_1

    .line 251
    const/16 v4, 0x1e0

    goto :goto_1

    .line 256
    .restart local v0    # "height":I
    :cond_5
    const/16 v5, 0x168

    if-le v0, v5, :cond_2

    .line 257
    const/16 v0, 0x168

    goto :goto_2
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 273
    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 274
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 275
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    invoke-virtual {v3}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 276
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    invoke-virtual {v3}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 284
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 285
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 286
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 287
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 288
    iput-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 290
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    :cond_0
    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v3
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 136
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    .line 137
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 142
    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->initialized:Z

    .line 144
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->configManager:Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 156
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/FlashlightManager;->enableFlashlight()V

    .line 158
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->autoFocusCallback:Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 229
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->autoFocusCallback:Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 231
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewCallback:Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 209
    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewCallback:Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewCallback:Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewing:Z

    .line 179
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 186
    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 190
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewCallback:Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lobject/p2pipcam/zxingtwodimensioncode/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 191
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->autoFocusCallback:Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lobject/p2pipcam/zxingtwodimensioncode/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 192
    iput-boolean v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->previewing:Z

    .line 194
    :cond_1
    return-void
.end method
