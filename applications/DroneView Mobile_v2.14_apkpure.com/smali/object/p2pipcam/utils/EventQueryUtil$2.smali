.class Lobject/p2pipcam/utils/EventQueryUtil$2;
.super Ljava/lang/Object;
.source "EventQueryUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lobject/p2pipcam/utils/EventQueryUtil$2;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil$2;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil$2;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # getter for: Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I
    invoke-static {v1}, Lobject/p2pipcam/utils/EventQueryUtil;->access$1(Lobject/p2pipcam/utils/EventQueryUtil;)I

    move-result v1

    # invokes: Lobject/p2pipcam/utils/EventQueryUtil;->queryEventList(I)V
    invoke-static {v0, v1}, Lobject/p2pipcam/utils/EventQueryUtil;->access$2(Lobject/p2pipcam/utils/EventQueryUtil;I)V

    .line 125
    return-void
.end method
