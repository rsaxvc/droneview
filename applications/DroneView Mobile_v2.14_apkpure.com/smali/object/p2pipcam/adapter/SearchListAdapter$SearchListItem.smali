.class public final Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SearchListItem"
.end annotation


# instance fields
.field public devID:Landroid/widget/TextView;

.field public devName:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/SearchListAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/SearchListAdapter;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;->this$0:Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
