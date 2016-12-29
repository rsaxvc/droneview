.class Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WifiScanListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/WifiScanListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field safe:Landroid/widget/TextView;

.field signal:Landroid/widget/TextView;

.field ssid:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/WifiScanListAdapter;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/WifiScanListAdapter;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/WifiScanListAdapter;Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/WifiScanListAdapter;)V

    return-void
.end method
