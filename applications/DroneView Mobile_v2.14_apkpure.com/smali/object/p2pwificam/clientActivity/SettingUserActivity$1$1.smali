.class Lobject/p2pwificam/clientActivity/SettingUserActivity$1$1;
.super Ljava/lang/Object;
.source "SettingUserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/SettingUserActivity$1;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingUserActivity$1;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/SettingUserActivity$1;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1$1;->val$intent:Landroid/content/Intent;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/SettingUserActivity$1;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->access$0(Lobject/p2pwificam/clientActivity/SettingUserActivity$1;)Lobject/p2pwificam/clientActivity/SettingUserActivity;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
