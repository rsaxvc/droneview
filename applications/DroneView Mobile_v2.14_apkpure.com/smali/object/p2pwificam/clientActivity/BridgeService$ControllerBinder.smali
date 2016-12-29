.class Lobject/p2pwificam/clientActivity/BridgeService$ControllerBinder;
.super Landroid/os/Binder;
.source "BridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/BridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/BridgeService;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/BridgeService;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/BridgeService$ControllerBinder;->this$0:Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getBridgeService()Lobject/p2pwificam/clientActivity/BridgeService;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService$ControllerBinder;->this$0:Lobject/p2pwificam/clientActivity/BridgeService;

    return-object v0
.end method
