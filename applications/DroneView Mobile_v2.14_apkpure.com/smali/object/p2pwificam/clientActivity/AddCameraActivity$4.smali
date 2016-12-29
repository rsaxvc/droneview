.class Lobject/p2pwificam/clientActivity/AddCameraActivity$4;
.super Ljava/lang/Object;
.source "AddCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity;->searchCamera()V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg2"    # I

    .prologue
    .line 436
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;

    move-result-object v5

    .line 437
    invoke-virtual {v5, p2}, Lobject/p2pipcam/adapter/SearchListAdapter;->getItemContent(I)Ljava/util/Map;

    move-result-object v0

    .line 438
    .local v0, "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const-string v5, "camera_name"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 445
    .local v2, "strName":Ljava/lang/String;
    const-string v5, "cameraid"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    .local v1, "strDID":Ljava/lang/String;
    const-string v4, "admin"

    .line 447
    .local v4, "strUser":Ljava/lang/String;
    const-string v3, "admin"

    .line 448
    .local v3, "strPwd":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$2(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$3(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$4(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v5}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 454
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-static {v5, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$6(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V

    .line 455
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$13(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
