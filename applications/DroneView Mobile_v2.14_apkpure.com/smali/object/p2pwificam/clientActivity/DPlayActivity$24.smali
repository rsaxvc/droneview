.class Lobject/p2pwificam/clientActivity/DPlayActivity$24;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1834
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurRotate:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$140(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$150(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1835
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$142(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$151(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1836
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$152(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1837
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$153(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1838
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->edit_wifi_name:Landroid/widget/EditText;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$147(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, "wifiName":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$148(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1841
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$154(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1842
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$155(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V

    .line 1843
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/easyview/camera/EVBaseCamera;->setWiFiName(Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1848
    :cond_0
    return-void
.end method
