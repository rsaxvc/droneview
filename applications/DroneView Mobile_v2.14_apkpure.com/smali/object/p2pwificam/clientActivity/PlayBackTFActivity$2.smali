.class Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;
.super Ljava/lang/Object;
.source "PlayBackTFActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayBackTFActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$1(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$2(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvNoVideo:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvNoVideo:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
