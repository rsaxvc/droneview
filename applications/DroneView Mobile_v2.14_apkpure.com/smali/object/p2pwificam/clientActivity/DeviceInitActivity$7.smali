.class Lobject/p2pwificam/clientActivity/DeviceInitActivity$7;
.super Ljava/lang/Object;
.source "DeviceInitActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICameraSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DeviceInitActivity;->doConfig(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSearch(Lcom/easyview/basecamera/CameraSearchInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/easyview/basecamera/CameraSearchInfo;

    .prologue
    .line 260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    iget-object v1, p1, Lcom/easyview/basecamera/CameraSearchInfo;->ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$9(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    const-string v1, "IPCamera"

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$10(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V

    .line 262
    return-void
.end method
