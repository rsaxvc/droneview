.class Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;
.super Ljava/lang/Object;
.source "DeviceInitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showToastText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    iput p2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;->val$id:I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    iget v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;->val$id:I

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method
