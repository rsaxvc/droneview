.class Lobject/p2pipcam/utils/EventQueryUtil$7;
.super Ljava/lang/Object;
.source "EventQueryUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/utils/EventQueryUtil;->queryEventPicture()V
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
    iput-object p1, p0, Lobject/p2pipcam/utils/EventQueryUtil$7;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil$7;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # invokes: Lobject/p2pipcam/utils/EventQueryUtil;->queryEvent()V
    invoke-static {v0}, Lobject/p2pipcam/utils/EventQueryUtil;->access$12(Lobject/p2pipcam/utils/EventQueryUtil;)V

    .line 218
    return-void
.end method
