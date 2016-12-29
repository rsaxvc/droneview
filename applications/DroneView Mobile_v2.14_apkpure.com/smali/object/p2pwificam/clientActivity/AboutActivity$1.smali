.class Lobject/p2pwificam/clientActivity/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AboutActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AboutActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$1;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$1;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->ClearAllFile()V

    .line 144
    return-void
.end method
