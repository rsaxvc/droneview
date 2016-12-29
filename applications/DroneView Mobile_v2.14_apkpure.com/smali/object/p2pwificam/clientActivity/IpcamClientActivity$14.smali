.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;
.super Ljava/lang/Thread;
.source "IpcamClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPlayLastBmp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

.field private final synthetic val$did:Ljava/lang/String;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;->val$did:Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 467
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 468
    const-string v5, "ipcam/pic"

    .line 467
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    .local v1, "div":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;->val$did:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 470
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "filepath":Ljava/lang/String;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 472
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;->val$did:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdateCameraImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->PPPPMsgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$17(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    :cond_0
    return-void
.end method
