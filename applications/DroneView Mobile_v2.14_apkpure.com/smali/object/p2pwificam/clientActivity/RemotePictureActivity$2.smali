.class Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;
.super Ljava/lang/Object;
.source "RemotePictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/RemotePictureActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$3(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$1(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$2(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$4(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvNoVideo:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$5(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$4(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvNoVideo:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$5(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
