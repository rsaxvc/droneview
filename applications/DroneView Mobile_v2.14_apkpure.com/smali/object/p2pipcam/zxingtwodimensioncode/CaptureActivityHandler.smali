.class public final Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

.field private final decodeThread:Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

.field private state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object p1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    .line 55
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

    .line 56
    new-instance v1, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->getViewfinderView()Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderResultPointCallback;-><init>(Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;-><init>(Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    .line 55
    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->decodeThread:Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

    .line 57
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->decodeThread:Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;->start()V

    .line 58
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->SUCCESS:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 60
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->startPreview()V

    .line 61
    invoke-direct {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 62
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->SUCCESS:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 128
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->PREVIEW:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 129
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->decodeThread:Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

    invoke-virtual {v1}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v0, v1, v2}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 130
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, p0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 131
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->drawViewfinder()V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 66
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    iget-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    sget-object v5, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->PREVIEW:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    if-ne v4, v5, :cond_0

    .line 72
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v4

    const v5, 0x7f080003

    invoke-virtual {v4, p0, v5}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 76
    :pswitch_2
    sget-object v4, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got restart preview message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 80
    :pswitch_3
    sget-object v4, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got decode succeeded message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v4, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->SUCCESS:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    iput-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 82
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 88
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/zxing/Result;

    invoke-virtual {v5, v4, v0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 86
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_1
    const-string v4, "barcode_bitmap"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_1

    .line 92
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_4
    sget-object v4, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->PREVIEW:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    iput-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 93
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->decodeThread:Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

    invoke-virtual {v5}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x7f080004

    invoke-virtual {v4, v5, v6}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 96
    :pswitch_5
    sget-object v4, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got return scan result message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    const/4 v6, -0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v6, v4}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    invoke-virtual {v4}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->finish()V

    goto :goto_0

    .line 101
    :pswitch_6
    sget-object v4, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got product query message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 103
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    invoke-virtual {v4, v2}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x7f080003
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 111
    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->DONE:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    iput-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->state:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 112
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->stopPreview()V

    .line 113
    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->decodeThread:Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

    invoke-virtual {v1}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    :try_start_0
    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->decodeThread:Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;

    invoke-virtual {v1}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->removeMessages(I)V

    .line 123
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->removeMessages(I)V

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method
