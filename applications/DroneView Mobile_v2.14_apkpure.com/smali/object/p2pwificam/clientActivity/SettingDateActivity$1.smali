.class Lobject/p2pwificam/clientActivity/SettingDateActivity$1;
.super Landroid/os/Handler;
.source "SettingDateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingDateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private setTimeZone()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 105
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Lcom/easyview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v1

    .line 106
    .local v1, "utc":I
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "now:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Lcom/easyview/bean/DateBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/Long;

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 108
    .local v0, "lon":Ljava/lang/Long;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Lcom/easyview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/DateBean;->getTz()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 111
    :sswitch_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+11:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600fe

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 115
    :sswitch_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+10:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600fd

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 121
    :sswitch_2
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+09:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600fb

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 127
    :sswitch_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+08:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600fa

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 134
    :sswitch_4
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+07:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f9

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 138
    :sswitch_5
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+06:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 142
    :sswitch_6
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+05:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 146
    :sswitch_7
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+04:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 150
    :sswitch_8
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+03:30"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 154
    :sswitch_9
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+03:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 158
    :sswitch_a
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+02:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 162
    :sswitch_b
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+01:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 166
    :sswitch_c
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600ef

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 170
    :sswitch_d
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-01:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600ee

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 176
    :sswitch_e
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-02:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600ed

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 181
    :sswitch_f
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-03:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600ec

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 186
    :sswitch_10
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-03:30"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600eb

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 192
    :sswitch_11
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-04:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600ea

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 198
    :sswitch_12
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+04:30"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 202
    :sswitch_13
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-05:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600e9

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 207
    :sswitch_14
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+05:30"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600f7

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 212
    :sswitch_15
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-06:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600e8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 218
    :sswitch_16
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-07:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600e7

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 225
    :sswitch_17
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-08:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600e6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 230
    :sswitch_18
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-09:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600e5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 234
    :sswitch_19
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+09:30"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600fc

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 239
    :sswitch_1a
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-10:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600e4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 246
    :sswitch_1b
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT-11:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600e3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 252
    :sswitch_1c
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-string v6, "GMT+12:00"

    # invokes: Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0600ff

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        -0xa8c0 -> :sswitch_1c
        -0x9ab0 -> :sswitch_1b
        -0x8ca0 -> :sswitch_1a
        -0x8598 -> :sswitch_19
        -0x7e90 -> :sswitch_18
        -0x7080 -> :sswitch_17
        -0x6270 -> :sswitch_16
        -0x5460 -> :sswitch_15
        -0x4d58 -> :sswitch_14
        -0x4650 -> :sswitch_13
        -0x3f48 -> :sswitch_12
        -0x3840 -> :sswitch_11
        -0x3138 -> :sswitch_10
        -0x2a30 -> :sswitch_f
        -0x1c20 -> :sswitch_e
        -0xe10 -> :sswitch_d
        0x0 -> :sswitch_c
        0xe10 -> :sswitch_b
        0x1c20 -> :sswitch_a
        0x2a30 -> :sswitch_9
        0x3138 -> :sswitch_8
        0x3840 -> :sswitch_7
        0x4650 -> :sswitch_6
        0x5460 -> :sswitch_5
        0x6270 -> :sswitch_4
        0x7080 -> :sswitch_3
        0x7e90 -> :sswitch_2
        0x8ca0 -> :sswitch_1
        0x9ab0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    const v1, 0x7f060105

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->showToast(I)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    const v1, 0x7f060104

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->showToast(I)V

    .line 80
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->finish()V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingDateActivity;Z)V

    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 94
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "longtime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Lcom/easyview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;->setTimeZone()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
