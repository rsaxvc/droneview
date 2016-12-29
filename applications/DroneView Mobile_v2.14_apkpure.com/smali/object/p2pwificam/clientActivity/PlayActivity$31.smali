.class Lobject/p2pwificam/clientActivity/PlayActivity$31;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 1934
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v0, p2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$129(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1935
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$122(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1936
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1941
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v2, 0x5f

    const/4 v1, 0x5

    .line 1945
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$130(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 1947
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$129(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1948
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_qualitySeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$131(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$130(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1954
    :cond_0
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$130(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->setResolution(I)V

    .line 1955
    return-void

    .line 1949
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$130(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1951
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$129(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1952
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_qualitySeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$131(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$31;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$130(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
