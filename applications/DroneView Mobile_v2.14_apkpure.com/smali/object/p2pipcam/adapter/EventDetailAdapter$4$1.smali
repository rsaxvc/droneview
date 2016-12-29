.class Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;
.super Ljava/lang/Object;
.source "EventDetailAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/EventDetailAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$4;

.field private final synthetic val$bean:Lobject/p2pipcam/bean/EventDetailBean;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter$4;Lobject/p2pipcam/bean/EventDetailBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;->this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$4;

    iput-object p2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 384
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v2}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lobject/p2pipcam/utils/RecordDownTask;->Add(Ljava/lang/String;I)V

    .line 385
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask;->Start()V

    .line 386
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;->this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$4;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter$4;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter$4;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 387
    return-void
.end method
