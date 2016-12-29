.class Lobject/p2pwificam/clientActivity/MainMUActivity$3;
.super Ljava/lang/Object;
.source "MainMUActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MainMUActivity;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v2, 0x7f020007

    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MainMUActivity;->menu_item:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$0(Lobject/p2pwificam/clientActivity/MainMUActivity;)I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # invokes: Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$1(Lobject/p2pwificam/clientActivity/MainMUActivity;Ljava/lang/Class;)V

    .line 216
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$2(Lobject/p2pwificam/clientActivity/MainMUActivity;I)V

    .line 217
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$3(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 218
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->EditFinish()V

    .line 219
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    invoke-static {v0, p3}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$2(Lobject/p2pwificam/clientActivity/MainMUActivity;I)V

    .line 220
    packed-switch p3, :pswitch_data_0

    .line 231
    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 233
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$3(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 239
    :cond_2
    :goto_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$4(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 240
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # invokes: Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$1(Lobject/p2pwificam/clientActivity/MainMUActivity;Ljava/lang/Class;)V

    .line 223
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    if-eqz v0, :cond_1

    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->EditFinish()V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/AlarmActivity;

    # invokes: Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$1(Lobject/p2pwificam/clientActivity/MainMUActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/PictureActivity;

    # invokes: Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$1(Lobject/p2pwificam/clientActivity/MainMUActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/VideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$1(Lobject/p2pwificam/clientActivity/MainMUActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 228
    :pswitch_4
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    if-eqz v0, :cond_1

    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->EditDevice()V

    goto :goto_0

    .line 229
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/AboutActivity;

    # invokes: Lobject/p2pwificam/clientActivity/MainMUActivity;->ShowScreen(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$1(Lobject/p2pwificam/clientActivity/MainMUActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MainMUActivity;->button_add:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$3(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
