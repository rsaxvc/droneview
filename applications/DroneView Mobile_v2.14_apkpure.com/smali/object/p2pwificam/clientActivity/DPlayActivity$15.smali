.class Lobject/p2pwificam/clientActivity/DPlayActivity$15;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;->showSureDialogPlay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->finish()V

    .line 329
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const v1, 0x7f040006

    .line 330
    const/high16 v2, 0x7f040000

    .line 329
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->overridePendingTransition(II)V

    .line 331
    return-void
.end method
