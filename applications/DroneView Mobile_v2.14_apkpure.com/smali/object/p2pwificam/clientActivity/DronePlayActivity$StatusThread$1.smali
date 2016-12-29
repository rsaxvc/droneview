.class Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$1;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->hideNoSDShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$1;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    .line 2136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2139
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$1;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2140
    return-void
.end method
