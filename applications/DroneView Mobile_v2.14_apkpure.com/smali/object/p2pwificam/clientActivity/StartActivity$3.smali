.class Lobject/p2pwificam/clientActivity/StartActivity$3;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/StartActivity;->showSureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/StartActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/StartActivity$3;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/StartActivity$3;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/StartActivity;->finish()V

    .line 338
    return-void
.end method
