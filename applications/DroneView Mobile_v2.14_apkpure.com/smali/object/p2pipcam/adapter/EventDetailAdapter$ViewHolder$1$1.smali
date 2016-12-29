.class Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;
.super Ljava/lang/Object;
.source "EventDetailAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;->OnProgress(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;

.field private final synthetic val$item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->this$2:Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;

    iput-object p2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->val$item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->val$item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v1, v1, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->val$item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    if-lt v1, v2, :cond_0

    .line 550
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->val$item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget-object v0, v1, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->sender:Ljava/lang/Object;

    check-cast v0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;

    .line 551
    .local v0, "holder":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    iget-object v1, v0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_info:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->val$item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v1, v1, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    if-lez v1, :cond_0

    .line 554
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->this$2:Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;->this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    invoke-static {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;)Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setHaveLocalVideo(I)V

    .line 560
    .end local v0    # "holder":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1$1;->this$2:Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;->this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    invoke-static {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;)Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;

    move-result-object v1

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->access$1(Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 572
    return-void
.end method
