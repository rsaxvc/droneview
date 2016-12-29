.class Lobject/p2pwificam/clientActivity/DPlayActivity$27;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;->showMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$27;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$27;->val$text:Ljava/lang/String;

    .line 2420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2423
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$27;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$27;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2424
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$27;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$27;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2426
    return-void
.end method
