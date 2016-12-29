.class Lobject/p2pwificam/clientActivity/DronePlayActivity$22;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1434
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$87(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$97(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1435
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$89(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$98(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1436
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$99(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1437
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$39(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$100(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1438
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->edit_wifi_name:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "wifiName":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$95(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$101(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1442
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v2, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$102(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V

    .line 1443
    const-string v2, "set_wifi_ap.cgi?wifiname=%s&"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "cgi":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->SendCommonCGI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    .end local v0    # "cgi":Ljava/lang/String;
    :cond_0
    return-void
.end method
