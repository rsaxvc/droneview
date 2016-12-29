.class Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/EventDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field bean:Lobject/p2pipcam/bean/EventDetailBean;

.field downListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

.field down_info:Landroid/view/View;

.field down_percent:Landroid/widget/TextView;

.field down_text:Landroid/widget/TextView;

.field eventTime:Landroid/widget/TextView;

.field eventType:Landroid/widget/TextView;

.field ivDown:Landroid/widget/ImageView;

.field ivPicture:Landroid/widget/ImageView;

.field ivPlay:Landroid/widget/ImageView;

.field ivSelect:Landroid/widget/ImageView;

.field record_info:Landroid/view/View;

.field record_period:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter;)V
    .locals 1

    .prologue
    .line 525
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    new-instance v0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder$1;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;)V

    iput-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->downListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;)Lobject/p2pipcam/adapter/EventDetailAdapter;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    return-object v0
.end method
