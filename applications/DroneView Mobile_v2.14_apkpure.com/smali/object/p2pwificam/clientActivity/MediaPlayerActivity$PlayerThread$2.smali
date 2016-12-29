.class Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->AvcEncoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

.field private final synthetic val$duration:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    iput p2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;->val$duration:I

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 261
    iget v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;->val$duration:I

    const v2, 0x989680

    div-int v0, v1, v2

    .line 262
    .local v0, "sec":I
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$1(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;->val$duration:I

    div-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 263
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->curTime:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$8(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method
