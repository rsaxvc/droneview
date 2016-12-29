.class Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;
.super Ljava/lang/Object;
.source "SettingFtpActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingFtpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWitch"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 210
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p2, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;->id:I

    .line 212
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;->id:I

    packed-switch v1, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 219
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lobject/p2pipcam/bean/FtpBean;->setSvr_ftp(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/FtpBean;->setPort(I)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lobject/p2pipcam/bean/FtpBean;->setUser(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :pswitch_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lobject/p2pipcam/bean/FtpBean;->setPwd(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x7f080296
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 256
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 262
    return-void
.end method
