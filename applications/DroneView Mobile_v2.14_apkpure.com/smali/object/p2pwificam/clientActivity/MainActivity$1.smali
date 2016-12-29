.class Lobject/p2pwificam/clientActivity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MainActivity;->showSureDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MainActivity;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MainActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MainActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MainActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/MainActivity$1;->val$view:Landroid/view/View;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 284
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainActivity$1;->val$view:Landroid/view/View;

    const v3, 0x7f080111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 285
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    new-instance v1, Landroid/content/Intent;

    const-string v2, "back"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MainActivity;

    invoke-virtual {v2, v1}, Lobject/p2pwificam/clientActivity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MainActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lobject/p2pipcam/utils/Pub;->setAutoRun(Landroid/content/Context;I)V

    .line 293
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MainActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/MainActivity;->finish()V

    goto :goto_0
.end method
