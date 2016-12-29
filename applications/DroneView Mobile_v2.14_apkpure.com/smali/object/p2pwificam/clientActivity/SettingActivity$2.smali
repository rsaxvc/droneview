.class Lobject/p2pwificam/clientActivity/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingActivity;->BWshareMemo(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingActivity;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/SettingActivity$2;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lobject/p2pwificam/clientActivity/SettingActivity$2;->val$context:Landroid/content/Context;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingActivity$2;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingActivity$2;->val$context:Landroid/content/Context;

    .line 304
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingActivity$2;->val$context:Landroid/content/Context;

    const v3, 0x7f0600a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 305
    return-void
.end method
