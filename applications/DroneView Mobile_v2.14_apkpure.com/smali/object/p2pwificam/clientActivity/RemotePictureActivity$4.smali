.class Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;
.super Ljava/lang/Object;
.source "RemotePictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/RemotePictureActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$6(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$4(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$7(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 223
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$4(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$7(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 224
    return-void
.end method
