.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$10;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$10;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 1748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1752
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$10;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    return-void
.end method
