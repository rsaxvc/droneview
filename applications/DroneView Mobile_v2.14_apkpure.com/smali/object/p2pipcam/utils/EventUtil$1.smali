.class Lobject/p2pipcam/utils/EventUtil$1;
.super Ljava/lang/Object;
.source "EventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/EventUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/EventUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/EventUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/EventUtil$1;->this$0:Lobject/p2pipcam/utils/EventUtil;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil$1;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # invokes: Lobject/p2pipcam/utils/EventUtil;->queryEventInfo()V
    invoke-static {v0}, Lobject/p2pipcam/utils/EventUtil;->access$0(Lobject/p2pipcam/utils/EventUtil;)V

    .line 41
    return-void
.end method
