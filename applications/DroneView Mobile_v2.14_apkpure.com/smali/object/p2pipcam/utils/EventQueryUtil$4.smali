.class Lobject/p2pipcam/utils/EventQueryUtil$4;
.super Ljava/lang/Object;
.source "EventQueryUtil.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/EventQueryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/EventQueryUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/EventQueryUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/EventQueryUtil$4;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    .line 264
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
    .line 268
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

    .line 269
    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_0

    .line 271
    add-int/lit8 v0, p2, 0x1

    .line 272
    .local v0, "index":I
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil$4;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # invokes: Lobject/p2pipcam/utils/EventQueryUtil;->queryEventList(I)V
    invoke-static {v1, v0}, Lobject/p2pipcam/utils/EventQueryUtil;->access$2(Lobject/p2pipcam/utils/EventQueryUtil;I)V

    .line 279
    .end local v0    # "index":I
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil$4;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/EventQueryUtil;->startQueryEvent()V

    goto :goto_0
.end method
