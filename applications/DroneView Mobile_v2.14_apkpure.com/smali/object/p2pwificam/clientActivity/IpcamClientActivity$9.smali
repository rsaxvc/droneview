.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$9;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$9;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 1612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 6
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 1616
    const-string v1, "Event"

    const-string v2, "onEventList cmd: %d result:%d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_0

    .line 1619
    add-int/lit8 v0, p2, 0x1

    .line 1620
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1e

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$9;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$9(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/basecamera/ICamera$IRespondListener;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/easyview/basecamera/ICamera;->queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1625
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
