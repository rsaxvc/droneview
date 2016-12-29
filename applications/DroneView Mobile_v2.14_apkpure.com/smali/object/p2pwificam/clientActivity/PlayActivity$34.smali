.class Lobject/p2pwificam/clientActivity/PlayActivity$34;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;->setBrightOrContrast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->val$type:I

    .line 2876
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
    .line 2904
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 2898
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2880
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 2881
    .local v0, "progress":I
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->val$type:I

    packed-switch v1, :pswitch_data_0

    .line 2893
    :goto_0
    return-void

    .line 2883
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$134(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 2884
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$6(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nBrightness:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$135(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2887
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$136(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 2888
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$6(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity$34;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nContrast:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$137(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
