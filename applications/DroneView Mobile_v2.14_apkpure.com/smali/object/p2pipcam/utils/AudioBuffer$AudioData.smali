.class Lobject/p2pipcam/utils/AudioBuffer$AudioData;
.super Ljava/lang/Object;
.source "AudioBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/AudioBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioData"
.end annotation


# instance fields
.field data:[B

.field is_valid:I

.field final synthetic this$0:Lobject/p2pipcam/utils/AudioBuffer;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/AudioBuffer;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->this$0:Lobject/p2pipcam/utils/AudioBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
