.class Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlarmLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/AlarmLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field camName:Landroid/widget/TextView;

.field content:Landroid/widget/TextView;

.field createTime:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/AlarmLogAdapter;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/AlarmLogAdapter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/AlarmLogAdapter;Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/AlarmLogAdapter;)V

    return-void
.end method
