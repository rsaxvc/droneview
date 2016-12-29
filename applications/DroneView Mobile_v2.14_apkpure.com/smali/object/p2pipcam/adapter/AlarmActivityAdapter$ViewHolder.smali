.class Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlarmActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/AlarmActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field alarmCount:Landroid/widget/TextView;

.field did:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/AlarmActivityAdapter;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/AlarmActivityAdapter;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/AlarmActivityAdapter;Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/AlarmActivityAdapter;)V

    return-void
.end method
