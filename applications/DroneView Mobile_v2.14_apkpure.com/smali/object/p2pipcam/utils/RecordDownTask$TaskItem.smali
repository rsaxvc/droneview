.class public Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
.super Ljava/lang/Object;
.source "RecordDownTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/RecordDownTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskItem"
.end annotation


# instance fields
.field public count:I

.field public down_size:I

.field public listener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

.field public pause:I

.field public recordIndex:I

.field public sender:Ljava/lang/Object;

.field public strID:Ljava/lang/String;

.field final synthetic this$0:Lobject/p2pipcam/utils/RecordDownTask;

.field public total_size:I


# direct methods
.method public constructor <init>(Lobject/p2pipcam/utils/RecordDownTask;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->sender:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPercentText()Ljava/lang/String;
    .locals 7

    .prologue
    const/high16 v4, 0x49800000    # 1048576.0f

    .line 60
    iget v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    if-nez v3, :cond_0

    .line 62
    const v3, 0x7f0601e8

    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    :goto_0
    return-object v3

    .line 64
    :cond_0
    iget v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 65
    .local v0, "fCur":F
    iget v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 66
    .local v1, "fTotal":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    div-float v2, v3, v1

    .line 67
    .local v2, "percent":F
    const-string v3, " %.1f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    .prologue
    const/high16 v3, 0x49800000    # 1048576.0f

    .line 50
    iget v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    if-nez v2, :cond_0

    .line 52
    const-string v2, ""

    .line 56
    :goto_0
    return-object v2

    .line 54
    :cond_0
    iget v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 55
    .local v0, "fCur":F
    iget v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 56
    .local v1, "fTotal":F
    const-string v2, " %.2fM / %.2fM"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isWaiting()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    if-nez v0, :cond_0

    iget v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
