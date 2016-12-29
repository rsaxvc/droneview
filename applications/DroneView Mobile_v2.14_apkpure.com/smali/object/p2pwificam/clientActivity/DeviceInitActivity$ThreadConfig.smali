.class Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;
.super Ljava/lang/Thread;
.source "DeviceInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DeviceInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 354
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->doConfig(Ljava/lang/Thread;)V
    invoke-static {v1, p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$7(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method
