.class Lobject/p2pipcam/adapter/EventDetailAdapter$3;
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
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v6, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v6}, Lobject/p2pipcam/bean/EventDetailBean;->getHaveLocalVideo()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 298
    iget-object v6, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v6}, Lobject/p2pipcam/bean/EventDetailBean;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "bpath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 300
    .local v2, "deal":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 314
    .local v1, "currentapiVersion":I
    if-nez v2, :cond_0

    .line 316
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, "it":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 318
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "video/avi"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v6, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v6}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 361
    .end local v0    # "bpath":Ljava/lang/String;
    .end local v1    # "currentapiVersion":I
    .end local v2    # "deal":Z
    .end local v4    # "it":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v6}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lobject/p2pwificam/clientActivity/PlayBackActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "did"

    iget-object v7, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v7}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v6, "recordIndex"

    iget-object v7, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v7}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v6, "filepath"

    iget-object v7, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v7}, Lobject/p2pipcam/bean/EventDetailBean;->getIndexFileText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v6, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v6}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 359
    iget-object v6, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$3;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v6}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040001

    const v8, 0x7f040005

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method
