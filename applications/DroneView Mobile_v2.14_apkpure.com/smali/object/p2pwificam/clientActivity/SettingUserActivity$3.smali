.class Lobject/p2pwificam/clientActivity/SettingUserActivity$3;
.super Ljava/lang/Object;
.source "SettingUserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    const v1, 0x7f0600d3

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    .line 326
    :cond_0
    return-void
.end method
