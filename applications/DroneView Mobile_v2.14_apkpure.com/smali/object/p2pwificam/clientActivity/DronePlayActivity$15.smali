.class Lobject/p2pwificam/clientActivity/DronePlayActivity$15;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;->show_setup_view()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    return-object v0
.end method

.method private isModify()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1230
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->paramCanSave:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return v1

    .line 1231
    :cond_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$75(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$87(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 1233
    :cond_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$88(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$89(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 1234
    :cond_3
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$90(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 1235
    :cond_4
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$91(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$39(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 1236
    :cond_5
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$92(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurSensorRes:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 1237
    :cond_6
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->edit_wifi_name:Landroid/widget/EditText;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "wifiName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1240
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$95(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    :cond_7
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$95(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1244
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1250
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v1, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$96(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 1251
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->isModify()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1253
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_show_layout:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$56(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$75(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1257
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1317
    :goto_0
    return-void

    .line 1262
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1263
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1264
    const v1, 0x7f06000f

    new-instance v2, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$1;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$1;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1294
    const v1, 0x7f060010

    new-instance v2, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
