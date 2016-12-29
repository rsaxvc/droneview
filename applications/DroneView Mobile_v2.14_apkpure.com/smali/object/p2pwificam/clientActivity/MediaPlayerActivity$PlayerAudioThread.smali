.class Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerAudioThread;
.super Ljava/lang/Thread;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerAudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerAudioThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method
