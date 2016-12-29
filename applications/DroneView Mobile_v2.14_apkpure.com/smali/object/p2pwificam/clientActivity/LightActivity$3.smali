.class Lobject/p2pwificam/clientActivity/LightActivity$3;
.super Ljava/lang/Object;
.source "LightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/LightActivity;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/LightActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/LightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xff

    .line 95
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    invoke-static {v0, v5}, Lobject/p2pwificam/clientActivity/LightActivity;->access$0(Lobject/p2pwificam/clientActivity/LightActivity;I)V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    invoke-static {v0, v5}, Lobject/p2pwificam/clientActivity/LightActivity;->access$1(Lobject/p2pwificam/clientActivity/LightActivity;I)V

    .line 97
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LightActivity;->access$4(Lobject/p2pwificam/clientActivity/LightActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LightActivity;->access$4(Lobject/p2pwificam/clientActivity/LightActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_white_value:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/LightActivity;->access$2(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_yellow_value:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/LightActivity;->access$3(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/easyview/basecamera/BaseCamera;->setLightValue(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$3;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # invokes: Lobject/p2pwificam/clientActivity/LightActivity;->setLightValue(II)V
    invoke-static {v0, v5, v5}, Lobject/p2pwificam/clientActivity/LightActivity;->access$7(Lobject/p2pwificam/clientActivity/LightActivity;II)V

    .line 99
    return-void
.end method
