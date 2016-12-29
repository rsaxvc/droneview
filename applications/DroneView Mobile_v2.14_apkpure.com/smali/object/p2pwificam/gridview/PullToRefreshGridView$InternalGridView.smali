.class Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;
.super Landroid/widget/GridView;
.source "PullToRefreshGridView.java"

# interfaces
.implements Lobject/p2pwificam/gridview/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/gridview/PullToRefreshGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalGridView"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/gridview/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/gridview/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    iput-object p1, p0, Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;->this$0:Lobject/p2pwificam/gridview/PullToRefreshGridView;

    .line 16
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/GridView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 21
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;->this$0:Lobject/p2pwificam/gridview/PullToRefreshGridView;

    invoke-virtual {v0, p1}, Lobject/p2pwificam/gridview/PullToRefreshGridView;->setEmptyView(Landroid/view/View;)V

    .line 22
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 27
    return-void
.end method
