.class Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
.super Ljava/lang/Object;
.source "SettingMailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWitch"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 489
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput p2, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->id:I

    .line 491
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 495
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->id:I

    sparse-switch v1, :sswitch_data_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 498
    :sswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setSender(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :sswitch_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/easyview/bean/MailBean;->setPort(I)V

    goto :goto_0

    .line 506
    :sswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setUser(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :sswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setPwd(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :sswitch_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :sswitch_5
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setReceiver1(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :sswitch_6
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setReceiver2(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :sswitch_7
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setReceiver3(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x7f08029f -> :sswitch_0
        0x7f0802a1 -> :sswitch_4
        0x7f0802a4 -> :sswitch_1
        0x7f0802ab -> :sswitch_2
        0x7f0802ad -> :sswitch_3
        0x7f0802af -> :sswitch_5
        0x7f0802b1 -> :sswitch_6
        0x7f0802b3 -> :sswitch_7
    .end sparse-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 535
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 541
    return-void
.end method
