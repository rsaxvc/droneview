.class Lobject/p2pwificam/clientActivity/DronePlayActivity$25;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;->showMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;->val$text:Ljava/lang/String;

    .line 2089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2092
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2093
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2094
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 2095
    return-void
.end method
