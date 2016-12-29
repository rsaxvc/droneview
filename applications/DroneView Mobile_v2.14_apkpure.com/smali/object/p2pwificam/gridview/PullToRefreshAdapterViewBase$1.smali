.class Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;->setBackToTopView(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;


# direct methods
.method constructor <init>(Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase$1;->this$0:Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase$1;->this$0:Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;

    iget-object v0, v0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;->refreshableView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase$1;->this$0:Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;

    iget-object v0, v0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;->refreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase$1;->this$0:Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;

    iget-object v0, v0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;->refreshableView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase$1;->this$0:Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;

    iget-object v0, v0, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;->refreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0
.end method
