.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$10;
.super Ljava/lang/Object;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->showSureDialogPlay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$10;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$10;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->finish()V

    .line 367
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$10;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    const v1, 0x7f040006

    .line 368
    const/high16 v2, 0x7f040000

    .line 367
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->overridePendingTransition(II)V

    .line 369
    return-void
.end method
