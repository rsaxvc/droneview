.class Lobject/p2pipcam/utils/EventUtil$5;
.super Ljava/lang/Object;
.source "EventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/utils/EventUtil;->queryEventList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/EventUtil;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/EventUtil;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/EventUtil$5;->this$0:Lobject/p2pipcam/utils/EventUtil;

    iput p2, p0, Lobject/p2pipcam/utils/EventUtil$5;->val$index:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil$5;->this$0:Lobject/p2pipcam/utils/EventUtil;

    iget v1, p0, Lobject/p2pipcam/utils/EventUtil$5;->val$index:I

    # invokes: Lobject/p2pipcam/utils/EventUtil;->queryEventList(I)V
    invoke-static {v0, v1}, Lobject/p2pipcam/utils/EventUtil;->access$3(Lobject/p2pipcam/utils/EventUtil;I)V

    .line 61
    return-void
.end method
