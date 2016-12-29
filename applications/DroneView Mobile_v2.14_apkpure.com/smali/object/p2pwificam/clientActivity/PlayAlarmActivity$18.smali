.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;
.super Ljava/lang/Object;
.source "PlayAlarmActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setBrightOrContrast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->val$type:I

    .line 2787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 2815
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 2809
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2791
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 2792
    .local v0, "progress":I
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->val$type:I

    packed-switch v1, :pswitch_data_0

    .line 2804
    :goto_0
    return-void

    .line 2794
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$100(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 2795
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nBrightness:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$101(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2798
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$102(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 2799
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nContrast:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$103(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
