.class Lobject/p2pwificam/clientActivity/SettingSDCardActivity$7;
.super Ljava/lang/Object;
.source "SettingSDCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$7;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$7;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # invokes: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->FormatSdCard()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$11(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    .line 301
    return-void
.end method
