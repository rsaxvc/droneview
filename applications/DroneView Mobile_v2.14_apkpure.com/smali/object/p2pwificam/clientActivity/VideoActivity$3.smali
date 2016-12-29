.class Lobject/p2pwificam/clientActivity/VideoActivity$3;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/VideoActivity;->getVideoFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/VideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "name":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "i":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    const-string v5, ".avi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "ss":Ljava/lang/String;
    new-instance v1, Lobject/p2pipcam/bean/MovieInfo;

    invoke-direct {v1}, Lobject/p2pipcam/bean/MovieInfo;-><init>()V

    .line 316
    .local v1, "mi":Lobject/p2pipcam/bean/MovieInfo;
    invoke-virtual {v1, v3}, Lobject/p2pipcam/bean/MovieInfo;->setDisplayName(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lobject/p2pipcam/bean/MovieInfo;->setPath(Ljava/lang/String;)V

    .line 318
    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Lobject/p2pipcam/bean/MovieInfo;->setDate(Ljava/util/Date;)V

    .line 319
    const-string v5, "!"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lobject/p2pipcam/bean/MovieInfo;->setCamerName(Ljava/lang/String;)V

    .line 320
    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lobject/p2pipcam/bean/MovieInfo;->setVideoName(Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    # invokes: Lobject/p2pwificam/clientActivity/VideoActivity;->getSize(J)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$8(Lobject/p2pwificam/clientActivity/VideoActivity;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lobject/p2pipcam/bean/MovieInfo;->setSize(Ljava/lang/String;)V

    .line 322
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const/4 v4, 0x1

    .line 328
    .end local v1    # "mi":Lobject/p2pipcam/bean/MovieInfo;
    .end local v3    # "ss":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 325
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 326
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/VideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/VideoActivity;->getVideoFile(Ljava/io/File;)V
    invoke-static {v5, p1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$5(Lobject/p2pwificam/clientActivity/VideoActivity;Ljava/io/File;)V

    goto :goto_0
.end method
