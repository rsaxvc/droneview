.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;
.super Ljava/lang/Object;
.source "DroneGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 373
    :pswitch_0
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPictureFinish:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$19(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 375
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 376
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$21(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 377
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$22(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$23(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v7

    invoke-virtual {v7, v13}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->setCanSel(Z)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$21(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$22(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$23(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->setCanSel(Z)V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->getSelected()[I

    move-result-object v4

    .line 394
    .local v4, "data":[I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0601eb

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 396
    const v7, 0x7f06000f

    new-instance v8, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;

    invoke-direct {v8, p0, v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;[I)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    const v7, 0x7f060010

    new-instance v8, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$2;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$2;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    array-length v7, v4

    if-lez v7, :cond_0

    .line 420
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 424
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "data":[I
    :pswitch_3
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->getSelectedBeans()Ljava/util/List;

    move-result-object v1

    .line 425
    .local v1, "beans":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 426
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$21(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$22(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$23(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 429
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->setCanSel(Z)V

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "count":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 449
    if-lez v3, :cond_0

    .line 451
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v7

    new-instance v8, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$3;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$3;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)V

    invoke-virtual {v7, v8}, Lobject/p2pipcam/utils/RecordDownTask;->SetFinishListener(Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;)V

    .line 458
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPicture:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$16(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 460
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$26(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v13, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 432
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 434
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v5

    .line 435
    .local v5, "index":I
    if-ltz v5, :cond_3

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getHaveLocalVideo()I

    move-result v8

    if-nez v8, :cond_3

    .line 437
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v8, v13}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$25(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 438
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v8

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lobject/p2pipcam/utils/RecordDownTask;->Add(Ljava/lang/String;I)V

    .line 439
    add-int/lit8 v3, v3, 0x1

    .line 440
    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getPicturePath()Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "strPath":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 445
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 463
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    .end local v5    # "index":I
    .end local v6    # "strPath":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v7

    invoke-virtual {v7}, Lobject/p2pipcam/utils/RecordDownTask;->Start()V

    goto/16 :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x7f0800e5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
