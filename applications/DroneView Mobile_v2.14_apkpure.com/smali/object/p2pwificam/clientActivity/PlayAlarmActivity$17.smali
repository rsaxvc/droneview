.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$17;
.super Ljava/lang/Object;
.source "PlayAlarmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 1261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1266
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1267
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->startingRecord()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$99(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-void

    .line 1268
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
