.class Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;
.super Ljava/lang/Object;
.source "MediaViewerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 372
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->is_seek:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$0(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$1(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pipcam/nativecaller/Avi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$1(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pipcam/nativecaller/Avi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lobject/p2pipcam/nativecaller/Avi;->SeekNext(I)V

    .line 376
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 380
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$2(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;Z)V

    .line 381
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 385
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$2(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;Z)V

    .line 386
    return-void
.end method
