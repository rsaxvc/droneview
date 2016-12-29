.class Lobject/p2pwificam/clientActivity/DronePlayActivity$5;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1163
    .local v1, "t":J
    const/4 v0, 0x0

    .line 1164
    .local v0, "m":Z
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_Time:J
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1166
    const-string v3, "Drone"

    const-string v4, "onProgressChanged %d -> %d"

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_Time:J
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v0, 0x1

    .line 1168
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v3, v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$32(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V

    .line 1170
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    const v4, 0x7f0800c5

    if-ne v3, v4, :cond_1

    .line 1172
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$33(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1173
    if-eqz v0, :cond_1

    .line 1175
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$34(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1176
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9, p2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1179
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    const v4, 0x7f0800c6

    if-ne v3, v4, :cond_2

    .line 1181
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$36(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1182
    if-eqz v0, :cond_2

    .line 1184
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$37(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1185
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10, p2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1188
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1192
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$33(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$39(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$36(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$32(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V

    .line 1195
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1199
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_brightness:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$40(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_brightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$40(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$34(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1204
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_contrast:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$41(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$39(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1206
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_contrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$41(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$37(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1207
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_contrast:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$41(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1209
    :cond_1
    return-void
.end method
