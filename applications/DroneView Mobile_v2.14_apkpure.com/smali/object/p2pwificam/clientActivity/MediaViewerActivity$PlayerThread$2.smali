.class Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$2;
.super Ljava/lang/Object;
.source "MediaViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$2;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$2;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->_filePath:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$0(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$2;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    move-result-object v1

    const-string v2, "AVI File Error!"

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->showToast(Ljava/lang/String;)V

    .line 172
    return-void
.end method
