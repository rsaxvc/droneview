.class public final Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;
.super Ljava/lang/Object;
.source "SettingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/SettingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingListItem"
.end annotation


# instance fields
.field public SettingImg:Landroid/widget/ImageView;

.field public SettingName:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/SettingListAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/SettingListAdapter;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;->this$0:Lobject/p2pipcam/adapter/SettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
