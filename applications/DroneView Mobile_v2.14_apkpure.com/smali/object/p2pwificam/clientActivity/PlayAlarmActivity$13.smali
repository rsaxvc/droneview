.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;
.super Ljava/lang/Thread;
.source "PlayAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->takePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;->val$bmp:Landroid/graphics/Bitmap;

    .line 1008
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;->val$bmp:Landroid/graphics/Bitmap;

    # invokes: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$97(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V

    .line 1011
    return-void
.end method
