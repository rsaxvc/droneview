.class Lobject/p2pwificam/clientActivity/ThresholdActivity$5;
.super Ljava/lang/Object;
.source "ThresholdActivity.java"

# interfaces
.implements Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/ThresholdActivity;->createBodyTempSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeSeekBarValuesChanged(Lcom/easyview/control/RangeSeekBar;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 5
    .param p2, "minValue"    # Ljava/lang/Double;
    .param p3, "maxValue"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easyview/control/RangeSeekBar",
            "<*>;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "bar":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User selected new range values: MIN="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MAX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->access$4(Lobject/p2pwificam/clientActivity/ThresholdActivity;Z)V

    .line 143
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMin:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->access$9(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%1$.1f\u2103"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMax:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->access$10(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%1$.1f\u2103"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public bridge synthetic onRangeSeekBarValuesChanged(Lcom/easyview/control/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Double;

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/ThresholdActivity$5;->onRangeSeekBarValuesChanged(Lcom/easyview/control/RangeSeekBar;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method
