.class Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;
.super Landroid/content/BroadcastReceiver;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBackBrod"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;->this$0:Lobject/p2pwificam/clientActivity/SettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v1, "myback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;->this$0:Lobject/p2pwificam/clientActivity/SettingActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingActivity;->finish()V

    .line 71
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity$MyBackBrod;->this$0:Lobject/p2pwificam/clientActivity/SettingActivity;

    const v2, 0x7f040006

    .line 72
    const/high16 v3, 0x7f040000

    .line 71
    invoke-virtual {v1, v2, v3}, Lobject/p2pwificam/clientActivity/SettingActivity;->overridePendingTransition(II)V

    .line 74
    :cond_0
    return-void
.end method
