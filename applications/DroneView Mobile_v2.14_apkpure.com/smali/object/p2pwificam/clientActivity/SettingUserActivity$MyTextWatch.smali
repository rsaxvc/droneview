.class Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;
.super Ljava/lang/Object;
.source "SettingUserActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWatch"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 332
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput p2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->id:I

    .line 334
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 338
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->id:I

    packed-switch v1, :pswitch_data_0

    .line 375
    :goto_0
    :pswitch_0
    return-void

    .line 341
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$11(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oldpwd3 == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$12(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :pswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$13(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adminPwd == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :pswitch_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$14(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adminNewPwd =="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminNewPwd:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$15(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x7f0802d4
        :pswitch_1
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
    .line 381
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 387
    return-void
.end method
