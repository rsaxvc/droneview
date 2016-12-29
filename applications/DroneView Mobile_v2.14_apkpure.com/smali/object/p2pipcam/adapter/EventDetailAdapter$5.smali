.class Lobject/p2pipcam/adapter/EventDetailAdapter$5;
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


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$5;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$5;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 437
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$5;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$5;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    .line 440
    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$5;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    .line 444
    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
