.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$3;
.super Landroid/os/Handler;
.source "PlayAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 836
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 843
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getCameraParams()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$7(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    .line 847
    return-void
.end method
