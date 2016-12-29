.class Lobject/p2pwificam/clientActivity/PlayTestActivity$17;
.super Ljava/lang/Object;
.source "PlayTestActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;->setBrightOrContrast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->val$type:I

    .line 2783
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
    .line 2811
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 2805
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2787
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 2788
    .local v0, "progress":I
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->val$type:I

    packed-switch v1, :pswitch_data_0

    .line 2800
    :goto_0
    return-void

    .line 2790
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$99(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 2791
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nBrightness:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$100(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2794
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$101(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 2795
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nContrast:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$102(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2788
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
