.class Lobject/p2pipcam/adapter/EventDetailAdapter$4;
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
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/EventDetailAdapter$4;)Lobject/p2pipcam/adapter/EventDetailAdapter;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 376
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 377
    .local v1, "view":Landroid/widget/ImageView;
    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v2}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v2}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0601bf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v2, 0x7f06000c

    .line 382
    new-instance v3, Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;

    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-direct {v3, p0, v4}, Lobject/p2pipcam/adapter/EventDetailAdapter$4$1;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter$4;Lobject/p2pipcam/bean/EventDetailBean;)V

    .line 381
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    const v2, 0x7f06000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 397
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lobject/p2pipcam/utils/RecordDownTask;->Add(Ljava/lang/String;I)V

    .line 394
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/utils/RecordDownTask;->Start()V

    .line 395
    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$4;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v2}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
