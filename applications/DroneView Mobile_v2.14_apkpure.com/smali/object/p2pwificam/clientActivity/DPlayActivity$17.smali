.class Lobject/p2pwificam/clientActivity/DPlayActivity$17;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;->show_setup_view()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    return-object v0
.end method

.method private isModify()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1628
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->paramCanSave:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$138(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return v1

    .line 1629
    :cond_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$130(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1630
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$139(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurRotate:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$140(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 1631
    :cond_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$141(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$142(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 1632
    :cond_3
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$143(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 1633
    :cond_4
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$144(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 1634
    :cond_5
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$145(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurSensorRes:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$146(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 1635
    :cond_6
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->edit_wifi_name:Landroid/widget/EditText;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$147(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "wifiName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1638
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$148(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1640
    :cond_7
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$148(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1642
    const-string v3, "DPlay"

    const-string v4, "WifName modify:%s -> %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$148(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1643
    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1649
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v1, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$149(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1650
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->isModify()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1652
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_show_layout:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$103(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$130(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1657
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$22(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1658
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1660
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1720
    :goto_0
    return-void

    .line 1663
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1664
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1665
    const v1, 0x7f06000f

    new-instance v2, Lobject/p2pwificam/clientActivity/DPlayActivity$17$1;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17$1;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1695
    const v1, 0x7f060010

    new-instance v2, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1718
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
