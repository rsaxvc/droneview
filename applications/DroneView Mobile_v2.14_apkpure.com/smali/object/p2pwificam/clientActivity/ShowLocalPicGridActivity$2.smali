.class Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;
.super Landroid/os/AsyncTask;
.source "ShowLocalPicGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    .line 240
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 251
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->DelPics()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;Ljava/util/ArrayList;)V

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "arg0"    # Ljava/lang/Void;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->cancel()V

    .line 258
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    invoke-static {v4, v6}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;I)V

    .line 259
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->delPics:Ljava/util/ArrayList;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$7(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 260
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvNoPics:Landroid/widget/TextView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$8(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$9(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;Z)V

    .line 262
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$10(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    :cond_0
    :goto_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 279
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 280
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x1

    .line 265
    .local v0, "flag":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->delPics:Ljava/util/ArrayList;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$7(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-nez v0, :cond_3

    .line 272
    :cond_2
    if-eqz v0, :cond_0

    .line 273
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$9(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;Z)V

    .line 274
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->layoutDel:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$10(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->delPics:Ljava/util/ArrayList;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$7(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 267
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "status"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 268
    .local v3, "status":I
    if-ne v3, v6, :cond_4

    .line 269
    const/4 v0, 0x0

    .line 265
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 244
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$3(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;I)V

    .line 245
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->tvSelectSum:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$4(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 247
    return-void
.end method
