.class Lobject/p2pipcam/adapter/EventDetailAdapter$2$2;
.super Ljava/lang/Object;
.source "EventDetailAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/EventDetailAdapter$2;->showPicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$2;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2$2;->this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$2;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2$2;->this$1:Lobject/p2pipcam/adapter/EventDetailAdapter$2;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->showPicture()V

    .line 267
    return-void
.end method
