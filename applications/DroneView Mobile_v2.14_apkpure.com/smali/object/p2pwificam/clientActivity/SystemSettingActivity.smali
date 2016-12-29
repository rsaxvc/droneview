.class public Lobject/p2pwificam/clientActivity/SystemSettingActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SystemSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private _ao_continue_thred:I

.field private _ao_start_thred:I

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnOk:Landroid/widget/Button;

.field private cbSaveLog:Landroid/widget/CheckBox;

.field private editLimit:Landroid/widget/EditText;

.field private editOutLimit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 17
    const-string v0, "SystemSettingActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->TAG:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->btnOk:Landroid/widget/Button;

    .line 19
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 20
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editLimit:Landroid/widget/EditText;

    .line 21
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editOutLimit:Landroid/widget/EditText;

    .line 22
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->cbSaveLog:Landroid/widget/CheckBox;

    .line 15
    return-void
.end method

.method private findView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->btnOk:Landroid/widget/Button;

    .line 65
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 67
    const v0, 0x7f080318

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editLimit:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f08031b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editOutLimit:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f08031c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->cbSaveLog:Landroid/widget/CheckBox;

    .line 71
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->get_ao_start_thred(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_start_thred:I

    .line 75
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->get_ao_continue_thred(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_continue_thred:I

    .line 77
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editLimit:Landroid/widget/EditText;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_start_thred:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editOutLimit:Landroid/widget/EditText;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_continue_thred:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->cbSaveLog:Landroid/widget/CheckBox;

    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getSaveLogFile()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f040006

    const/high16 v2, 0x7f040000

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_start_thred:I

    .line 45
    iget v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_start_thred:I

    invoke-static {p0, v1}, Lobject/p2pipcam/utils/Pub;->set_ao_start_thred(Landroid/content/Context;I)V

    .line 46
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->editOutLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_continue_thred:I

    .line 48
    iget v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->_ao_continue_thred:I

    invoke-static {p0, v1}, Lobject/p2pipcam/utils/Pub;->set_ao_continue_thred(Landroid/content/Context;I)V

    .line 49
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->cbSaveLog:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lobject/p2pipcam/utils/Pub;->setSaveLogFile(Z)V

    .line 50
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->cbSaveLog:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/ndt/LogUtil;->writeLogToFile(Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->finish()V

    .line 52
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 56
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->finish()V

    .line 57
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x7f08010a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->requestWindowFeature(I)Z

    .line 30
    const v0, 0x7f030073

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->findView()V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 35
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SystemSettingActivity;->overridePendingTransition(II)V

    .line 36
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 37
    return-void
.end method
