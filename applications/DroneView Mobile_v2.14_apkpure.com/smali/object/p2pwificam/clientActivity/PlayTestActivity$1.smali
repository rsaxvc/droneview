.class Lobject/p2pwificam/clientActivity/PlayTestActivity$1;
.super Landroid/os/Handler;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 421
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v0, v0, 0x32

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->textViewVideoing:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$0(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v2, v2, 0x32

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 426
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->textView_sdsize:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$1(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sd_size"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdSize:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$2(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const-string v0, "tagg"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sd_size"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method
