.class public Lcom/easyview/ndt/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/ndt/LogUtil$LogType;
    }
.end annotation


# static fields
.field private static mFileWriter:Ljava/io/FileWriter;

.field private static mLogFile:Ljava/text/SimpleDateFormat;

.field private static mLogFileName:Ljava/lang/String;

.field private static mLogFileSaveDays:I

.field private static mLogPath:Ljava/lang/String;

.field private static mLogSdf:Ljava/text/SimpleDateFormat;

.field private static mLogSwitch:Ljava/lang/Boolean;

.field private static mLogType:Lcom/easyview/ndt/LogUtil$LogType;

.field private static mLogWriteToFile:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mLogSwitch:Ljava/lang/Boolean;

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mLogWriteToFile:Ljava/lang/Boolean;

    .line 19
    sget-object v0, Lcom/easyview/ndt/LogUtil$LogType;->v:Lcom/easyview/ndt/LogUtil$LogType;

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mLogType:Lcom/easyview/ndt/LogUtil$LogType;

    .line 20
    const-string v0, "/storage/emulated/0/Download/"

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mLogPath:Ljava/lang/String;

    .line 21
    sput v1, Lcom/easyview/ndt/LogUtil;->mLogFileSaveDays:I

    .line 22
    const-string v0, "evcamera.txt"

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mLogFileName:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mLogSdf:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mLogFile:Ljava/text/SimpleDateFormat;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mFileWriter:Ljava/io/FileWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/easyview/ndt/LogUtil;->mFileWriter:Ljava/io/FileWriter;

    .line 172
    invoke-static {}, Lcom/easyview/ndt/LogUtil;->delFile()V

    .line 173
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 114
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 93
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 94
    return-void
.end method

.method public static delFile()V
    .locals 5

    .prologue
    .line 177
    sget-object v2, Lcom/easyview/ndt/LogUtil;->mLogFile:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/easyview/ndt/LogUtil;->getDateBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "needDelFiel":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/easyview/ndt/LogUtil;->mLogFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 182
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 110
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 90
    return-void
.end method

.method private static getDateBefore()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 186
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 187
    .local v2, "nowtime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 188
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 191
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sget v4, Lcom/easyview/ndt/LogUtil;->mLogFileSaveDays:I

    if-lt v3, v4, :cond_0

    .line 194
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 195
    sget v4, Lcom/easyview/ndt/LogUtil;->mLogFileSaveDays:I

    sub-int/2addr v3, v4

    .line 194
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    return-object v3

    .line 197
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 198
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 201
    const/4 v3, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 204
    const/4 v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 207
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 208
    sget v4, Lcom/easyview/ndt/LogUtil;->mLogFileSaveDays:I

    sub-int/2addr v3, v4

    .line 207
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {p0, v0, v1}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 118
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    const/16 v0, 0x69

    invoke-static {p0, p1, v0}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 98
    return-void
.end method

.method public static launchLog(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "isSet"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    sput-object p0, Lcom/easyview/ndt/LogUtil;->mLogSwitch:Ljava/lang/Boolean;

    .line 70
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "level"    # C

    .prologue
    .line 126
    sget-object v0, Lcom/easyview/ndt/LogUtil;->mLogSwitch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const/16 v0, 0x65

    if-ne v0, p2, :cond_2

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    sget-object v0, Lcom/easyview/ndt/LogUtil;->mLogWriteToFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/easyview/ndt/LogUtil;->mFileWriter:Ljava/io/FileWriter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, p1}, Lcom/easyview/ndt/LogUtil;->writeLogtoFile(Ljava/io/FileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    return-void

    .line 129
    :cond_2
    const/16 v0, 0x77

    if-ne v0, p2, :cond_3

    sget-object v0, Lcom/easyview/ndt/LogUtil;->mLogType:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v0}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v0

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->w:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v1}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_3
    const/16 v0, 0x69

    if-ne v0, p2, :cond_4

    sget-object v0, Lcom/easyview/ndt/LogUtil;->mLogType:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v0}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v0

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->i:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v1}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_4
    const/16 v0, 0x64

    if-ne v0, p2, :cond_5

    sget-object v0, Lcom/easyview/ndt/LogUtil;->mLogType:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v0}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v0

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->d:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v1}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_5
    const/16 v0, 0x76

    if-ne v0, p2, :cond_0

    sget-object v0, Lcom/easyview/ndt/LogUtil;->mLogType:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v0}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v0

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->v:Lcom/easyview/ndt/LogUtil$LogType;

    invoke-virtual {v1}, Lcom/easyview/ndt/LogUtil$LogType;->getType()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setLifetimeForLogfiles(I)V
    .locals 0
    .param p0, "lifetime"    # I

    .prologue
    .line 77
    sput p0, Lcom/easyview/ndt/LogUtil;->mLogFileSaveDays:I

    .line 78
    return-void
.end method

.method public static setLogFileName(Ljava/lang/String;)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    .line 53
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "names":[Ljava/lang/String;
    move-object v2, p0

    .line 55
    .local v2, "name":Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 57
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v3, v4

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 60
    .local v0, "bd":Landroid/os/Build;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 61
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 63
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/easyview/ndt/LogUtil;->mLogFileName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static setLogPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    sput-object p0, Lcom/easyview/ndt/LogUtil;->mLogPath:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static setLogType(Lcom/easyview/ndt/LogUtil$LogType;)V
    .locals 0
    .param p0, "type"    # Lcom/easyview/ndt/LogUtil$LogType;

    .prologue
    .line 49
    sput-object p0, Lcom/easyview/ndt/LogUtil;->mLogType:Lcom/easyview/ndt/LogUtil$LogType;

    .line 50
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x76

    invoke-static {p0, v0, v1}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 122
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    const/16 v0, 0x76

    invoke-static {p0, p1, v0}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 102
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x77

    invoke-static {p0, v0, v1}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 106
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 85
    const/16 v0, 0x77

    invoke-static {p0, p1, v0}, Lcom/easyview/ndt/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 86
    return-void
.end method

.method public static writeLogToFile(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "isWrite"    # Ljava/lang/Boolean;

    .prologue
    .line 73
    sput-object p0, Lcom/easyview/ndt/LogUtil;->mLogWriteToFile:Ljava/lang/Boolean;

    .line 74
    return-void
.end method

.method private static writeLogtoFile(Ljava/io/FileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "fileWriter"    # Ljava/io/FileWriter;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 148
    .local v6, "nowtime":Ljava/util/Date;
    sget-object v7, Lcom/easyview/ndt/LogUtil;->mLogFile:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "needWriteFiel":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/easyview/ndt/LogUtil;->mLogSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "needWriteMessage":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 152
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/easyview/ndt/LogUtil;->mLogFileName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v3, v2, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .end local p0    # "fileWriter":Ljava/io/FileWriter;
    .local v3, "fileWriter":Ljava/io/FileWriter;
    move-object p0, v3

    .line 159
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local p0    # "fileWriter":Ljava/io/FileWriter;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 160
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 162
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 163
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    .end local v4    # "needWriteFiel":Ljava/lang/String;
    .end local v5    # "needWriteMessage":Ljava/lang/String;
    .end local v6    # "nowtime":Ljava/util/Date;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
