.class Lobject/p2pwificam/clientActivity/DPlayActivity$4;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->firstRequest()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$14(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 920
    return-void
.end method
