.class public Lobject/p2pwificam/gridview/PullToRefreshGridView;
.super Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/gridview/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lobject/p2pwificam/gridview/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    new-instance v0, Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;-><init>(Lobject/p2pwificam/gridview/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    .local v0, "gv":Landroid/widget/GridView;
    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 53
    return-object v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/PullToRefreshGridView$InternalGridView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method
