.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$8;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$8;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 1590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 8
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    const/4 v7, 0x0

    .line 1594
    const-string v2, "Event"

    const-string v3, "onEventInfo cmd: %d result:%d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    if-gtz p3, :cond_1

    .line 1598
    const-string v2, "Event"

    const-string v3, "onEventInfo no tf"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1604
    :cond_1
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v2

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/easyview/table/EventTable;->getLastIndexAndFID(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 1606
    .local v1, "last":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1607
    .local v0, "index":I
    if-ge v0, p3, :cond_0

    add-int/lit8 v2, v0, 0x1e

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$8;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$9(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/basecamera/ICamera$IRespondListener;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera;->queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method
