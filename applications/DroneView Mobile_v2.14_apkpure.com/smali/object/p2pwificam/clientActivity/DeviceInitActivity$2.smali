.class Lobject/p2pwificam/clientActivity/DeviceInitActivity$2;
.super Ljava/lang/Object;
.source "DeviceInitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DeviceInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->finish()V

    .line 373
    return-void
.end method
