.class Lobject/p2pwificam/clientActivity/PlayActivity$19;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 3446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3450
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3465
    :goto_0
    return-void

    .line 3451
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    check-cast v1, Lcom/easyview/ppcs/PPCSCamera;

    .line 3452
    .local v1, "ppcs":Lcom/easyview/ppcs/PPCSCamera;
    const/4 v0, 0x0

    .line 3453
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3464
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/easyview/ppcs/PPCSCamera;->enableIOSwitch(Lcom/easyview/basecamera/ICamera$IRespondListener;I)V

    goto :goto_0

    .line 3455
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3456
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    .line 3457
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_1

    .line 3458
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_1

    .line 3459
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_1

    .line 3460
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_1

    .line 3461
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_1

    .line 3462
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_1

    .line 3453
    :pswitch_data_0
    .packed-switch 0x7f0801a5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
