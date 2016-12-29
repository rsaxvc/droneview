.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;
.super Landroid/os/Handler;
.source "DroneGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 482
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 485
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 486
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 522
    :goto_0
    return-void

    .line 488
    :sswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v1, v5}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$6(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 489
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->progressView:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$27(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->notifyDataSetChanged()V

    .line 491
    const-string v1, "Event"

    const-string v2, "adapter count: %d "

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 494
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->noView:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$28(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEditClick:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$29(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$21(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEditClick:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$29(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$22(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEditClick:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$29(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$23(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEditClick:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$29(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->downInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$30(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    const-string v1, " %d "

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_listEventDetail:Ljava/util/List;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$11(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->downInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$30(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 508
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 511
    :sswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEditClick:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$29(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v1, v5}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$25(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 513
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->getMissEventPicture()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$14(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    goto/16 :goto_0

    .line 518
    :sswitch_3
    const-string v1, " %d / %d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->event_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$12(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->total_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$31(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .restart local v0    # "str":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->downInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$30(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 486
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch
.end method
