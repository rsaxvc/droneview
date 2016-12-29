.class Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;
.super Ljava/lang/Object;
.source "AddCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg2"    # I

    .prologue
    .line 237
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;

    move-result-object v5

    .line 238
    invoke-virtual {v5, p2}, Lobject/p2pipcam/adapter/SearchListAdapter;->getItemContent(I)Ljava/util/Map;

    move-result-object v0

    .line 239
    .local v0, "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v5, "camera_name"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "strName":Ljava/lang/String;
    const-string v5, "cameraid"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "strDID":Ljava/lang/String;
    const-string v4, "admin"

    .line 248
    .local v4, "strUser":Ljava/lang/String;
    const-string v3, "admin"

    .line 249
    .local v3, "strPwd":Ljava/lang/String;
    const-string v5, "strDIDtag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg2:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "strDID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$2(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$3(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$4(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    invoke-static {v5}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    invoke-static {v5, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$6(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v5

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-static {v1}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
