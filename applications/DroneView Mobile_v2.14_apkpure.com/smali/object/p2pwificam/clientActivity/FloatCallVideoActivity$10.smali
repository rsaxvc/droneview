.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$10;
.super Ljava/lang/Object;
.source "FloatCallVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$10;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1029
    const-string v0, "FloatCallVideoActivity"

    const-string v1, "auto hangup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$10;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->Hangup()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$30(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    .line 1031
    return-void
.end method
