.class Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;
.super Ljava/lang/Object;
.source "DeviceInitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DeviceInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnOK:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$0(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnCancel:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$1(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 100
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 101
    .local v0, "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 104
    .end local v0    # "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$2(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 105
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_text_password:Landroid/widget/EditText;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$3(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$4(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    new-instance v3, Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-direct {v3, v4}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$5(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;)V

    .line 107
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_thread:Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$6(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;->start()V

    .line 108
    return-void
.end method
