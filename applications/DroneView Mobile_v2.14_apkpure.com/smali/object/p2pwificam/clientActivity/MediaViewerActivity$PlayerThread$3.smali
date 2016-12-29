.class Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;
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

.field private final synthetic val$duration:J

.field private final synthetic val$sec:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;JI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    iput-wide p2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->val$duration:J

    iput p4, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->val$sec:I

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->sb_progress:Landroid/widget/SeekBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$1(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-wide v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->val$duration:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 209
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->this$1:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->totalTime:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$2(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->val$sec:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;->val$sec:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method
