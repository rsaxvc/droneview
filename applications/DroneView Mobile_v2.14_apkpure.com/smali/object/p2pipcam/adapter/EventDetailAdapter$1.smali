.class Lobject/p2pipcam/adapter/EventDetailAdapter$1;
.super Ljava/lang/Object;
.source "EventDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/EventDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

.field private final synthetic val$bean:Lobject/p2pipcam/bean/EventDetailBean;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    iput p3, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$position:I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/EventDetailBean;->isCanSel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    .line 223
    :goto_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 233
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    goto :goto_0

    .line 226
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "did"

    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v2}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "list"

    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # invokes: Lobject/p2pipcam/adapter/EventDetailAdapter;->getPictureList()Ljava/util/ArrayList;
    invoke-static {v2}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$1(Lobject/p2pipcam/adapter/EventDetailAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 229
    const-string v1, "date"

    const-string v2, "2015-05-15"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "position"

    iget v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "camera_name"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$1;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
