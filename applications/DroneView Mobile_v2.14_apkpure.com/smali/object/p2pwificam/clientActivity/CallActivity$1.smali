.class Lobject/p2pwificam/clientActivity/CallActivity$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallActivity$1;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity$1;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallActivity;->access$1(Lobject/p2pwificam/clientActivity/CallActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$1;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->AnimationDrawableTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->access$2(Lobject/p2pwificam/clientActivity/CallActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity$1;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->mArrowDrawable:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallActivity;->access$0(Lobject/p2pwificam/clientActivity/CallActivity;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
