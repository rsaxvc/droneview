.class Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$2;
.super Ljava/lang/Object;
.source "MediaPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->AvcEncoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;

.field private final synthetic val$duration:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$2;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;

    iput p2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$2;->val$duration:I

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 475
    iget v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$2;->val$duration:I

    const v2, 0x989680

    div-int v0, v1, v2

    .line 479
    .local v0, "sec":I
    return-void
.end method
