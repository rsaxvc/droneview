.class Lobject/p2pwificam/clientActivity/AddCameraActivity$2;
.super Landroid/os/Handler;
.source "AddCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 186
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v10, :cond_5

    .line 187
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lobject/p2pipcam/adapter/SearchListAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lobject/p2pipcam/adapter/SearchListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 189
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v6}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lobject/p2pipcam/adapter/SearchListAdapter;->getItemContent(I)Ljava/util/Map;

    move-result-object v1

    .line 192
    .local v1, "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 292
    .end local v1    # "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local v1    # "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v6, "camera_name"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    .local v3, "strName":Ljava/lang/String;
    const-string v6, "cameraid"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "strDID":Ljava/lang/String;
    const-string v5, "admin"

    .line 201
    .local v5, "strUser":Ljava/lang/String;
    const-string v4, "admin"

    .line 203
    .local v4, "strPwd":Ljava/lang/String;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$2(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$3(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$4(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v6}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v6, v2}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$6(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V

    .line 210
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_2
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # invokes: Lobject/p2pwificam/clientActivity/AddCameraActivity;->done()V
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$7(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    goto :goto_0

    .line 215
    .end local v1    # "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "strDID":Ljava/lang/String;
    .end local v3    # "strName":Ljava/lang/String;
    .end local v4    # "strPwd":Ljava/lang/String;
    .end local v5    # "strUser":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 216
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    .line 215
    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 218
    const v7, 0x7f06007f

    .line 217
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 220
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06009b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 221
    new-instance v7, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$1;

    invoke-direct {v7, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$1;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)V

    .line 219
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 229
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;

    move-result-object v6

    .line 232
    new-instance v7, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;

    invoke-direct {v7, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)V

    .line 231
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 269
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_4
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    .line 270
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060080

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 271
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 272
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v6, v9}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$9(Lobject/p2pwificam/clientActivity/AddCameraActivity;Z)V

    .line 273
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v6}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 275
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->finish()V

    goto/16 :goto_0

    .line 280
    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 282
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$2(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_name:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$10(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$3(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_name:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$11(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$4(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_pwd:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$12(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$13(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v6}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$13(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
