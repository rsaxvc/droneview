.class Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;
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

.field private final synthetic val$total:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    iput p2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;->val$total:I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$1(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;->val$total:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 180
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->totalTime:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$2(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;->val$total:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;->val$total:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method
