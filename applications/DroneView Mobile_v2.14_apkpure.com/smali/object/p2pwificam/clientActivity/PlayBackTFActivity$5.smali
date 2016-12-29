.class Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;
.super Ljava/lang/Object;
.source "PlayBackTFActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$7(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 236
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 237
    return-void
.end method
