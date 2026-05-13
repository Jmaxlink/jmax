.class public Lorg/fusesource/jansi/internal/Kernel32;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;,
        Lorg/fusesource/jansi/internal/Kernel32$MENU_EVENT_RECORD;,
        Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;,
        Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;,
        Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;,
        Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;,
        Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;,
        Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;,
        Lorg/fusesource/jansi/internal/Kernel32$COORD;,
        Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    }
.end annotation


# static fields
.field public static BACKGROUND_BLUE:S

.field public static BACKGROUND_GREEN:S

.field public static BACKGROUND_INTENSITY:S

.field public static BACKGROUND_RED:S

.field public static COMMON_LVB_GRID_HORIZONTAL:S

.field public static COMMON_LVB_GRID_LVERTICAL:S

.field public static COMMON_LVB_GRID_RVERTICAL:S

.field public static COMMON_LVB_LEADING_BYTE:S

.field public static COMMON_LVB_REVERSE_VIDEO:S

.field public static COMMON_LVB_TRAILING_BYTE:S

.field public static COMMON_LVB_UNDERSCORE:S

.field public static FOREGROUND_BLUE:S

.field public static FOREGROUND_GREEN:S

.field public static FOREGROUND_INTENSITY:S

.field public static FOREGROUND_RED:S

.field public static FORMAT_MESSAGE_FROM_SYSTEM:I

.field public static INVALID_HANDLE_VALUE:I

.field public static STD_ERROR_HANDLE:I

.field public static STD_INPUT_HANDLE:I

.field public static STD_OUTPUT_HANDLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32;->init()V

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CloseHandle(J)I
.end method

.method public static native FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I
.end method

.method public static native FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I
.end method

.method public static native FlushConsoleInputBuffer(J)I
.end method

.method public static native FormatMessageW(IJII[BI[J)I
.end method

.method public static native GetConsoleMode(J[I)I
.end method

.method public static native GetConsoleOutputCP()I
.end method

.method public static native GetConsoleScreenBufferInfo(JLorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)I
.end method

.method public static native GetLastError()I
.end method

.method public static native GetNumberOfConsoleInputEvents(J[I)I
.end method

.method public static native GetStdHandle(I)J
.end method

.method private static native PeekConsoleInputW(JJI[I)I
.end method

.method private static native ReadConsoleInputW(JJI[I)I
.end method

.method public static native ScrollConsoleScreenBuffer(JLorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$COORD;Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;)I
.end method

.method public static native SetConsoleCursorPosition(JLorg/fusesource/jansi/internal/Kernel32$COORD;)I
.end method

.method public static native SetConsoleMode(JI)I
.end method

.method public static native SetConsoleOutputCP(I)I
.end method

.method public static native SetConsoleTextAttribute(JS)I
.end method

.method public static native SetConsoleTitle(Ljava/lang/String;)I
.end method

.method public static native WaitForSingleObject(JI)I
.end method

.method public static native WriteConsoleW(J[CI[IJ)I
.end method

.method public static native _getch()I
.end method

.method public static native free(J)V
.end method

.method private static native init()V
.end method

.method public static native malloc(J)J
.end method

.method public static readConsoleInputHelper(JIZ)[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    .locals 14
    .param p0, "handle"    # J
    .param p2, "count"    # I
    .param p3, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 521
    .local v7, "length":[I
    const-wide/16 v1, 0x0

    .line 523
    .local v1, "inputRecordPtr":J
    const-wide/16 v8, 0x0

    :try_start_0
    sget v0, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->SIZEOF:I

    mul-int v0, v0, p2

    int-to-long v3, v0

    invoke-static {v3, v4}, Lorg/fusesource/jansi/internal/Kernel32;->malloc(J)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v10, v3

    .line 524
    .end local v1    # "inputRecordPtr":J
    .local v10, "inputRecordPtr":J
    cmp-long v0, v10, v8

    if-eqz v0, :cond_6

    .line 527
    if-eqz p3, :cond_0

    .line 528
    move-wide v1, p0

    move-wide v3, v10

    move/from16 v5, p2

    move-object v6, v7

    :try_start_1
    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->PeekConsoleInputW(JJI[I)I

    move-result v0

    goto :goto_0

    .line 529
    :cond_0
    move-wide v1, p0

    move-wide v3, v10

    move/from16 v5, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->ReadConsoleInputW(JJI[I)I

    move-result v0

    :goto_0
    nop

    .line 530
    .local v0, "res":I
    if-eqz v0, :cond_5

    .line 533
    const/4 v1, 0x0

    aget v2, v7, v1

    if-gtz v2, :cond_2

    .line 534
    new-array v1, v1, [Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    cmp-long v2, v10, v8

    if-eqz v2, :cond_1

    .line 544
    invoke-static {v10, v11}, Lorg/fusesource/jansi/internal/Kernel32;->free(J)V

    .line 534
    :cond_1
    return-object v1

    .line 536
    :cond_2
    :try_start_2
    aget v1, v7, v1

    new-array v1, v1, [Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;

    .line 537
    .local v1, "records":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 538
    new-instance v3, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;

    invoke-direct {v3}, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;-><init>()V

    aput-object v3, v1, v2

    .line 539
    aget-object v3, v1, v2

    sget v4, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->SIZEOF:I

    mul-int/2addr v4, v2

    int-to-long v4, v4

    add-long/2addr v4, v10

    sget v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->SIZEOF:I

    int-to-long v12, v6

    invoke-static {v3, v4, v5, v12, v13}, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->memmove(Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 541
    .end local v2    # "i":I
    :cond_3
    nop

    .line 543
    cmp-long v2, v10, v8

    if-eqz v2, :cond_4

    .line 544
    invoke-static {v10, v11}, Lorg/fusesource/jansi/internal/Kernel32;->free(J)V

    .line 541
    :cond_4
    return-object v1

    .line 531
    .end local v1    # "records":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    :cond_5
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadConsoleInputW failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "length":[I
    .end local v10    # "inputRecordPtr":J
    .end local p0    # "handle":J
    .end local p2    # "count":I
    .end local p3    # "peek":Z
    throw v1

    .line 525
    .end local v0    # "res":I
    .restart local v7    # "length":[I
    .restart local v10    # "inputRecordPtr":J
    .restart local p0    # "handle":J
    .restart local p2    # "count":I
    .restart local p3    # "peek":Z
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot allocate memory with JNI"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "length":[I
    .end local v10    # "inputRecordPtr":J
    .end local p0    # "handle":J
    .end local p2    # "count":I
    .end local p3    # "peek":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    .restart local v7    # "length":[I
    .restart local v10    # "inputRecordPtr":J
    .restart local p0    # "handle":J
    .restart local p2    # "count":I
    .restart local p3    # "peek":Z
    :catchall_0
    move-exception v0

    move-wide v1, v10

    goto :goto_2

    .end local v10    # "inputRecordPtr":J
    .local v1, "inputRecordPtr":J
    :catchall_1
    move-exception v0

    :goto_2
    cmp-long v3, v1, v8

    if-eqz v3, :cond_7

    .line 544
    invoke-static {v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->free(J)V

    .line 546
    :cond_7
    throw v0
.end method

.method public static readConsoleKeyInput(JIZ)[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    .locals 9
    .param p0, "handle"    # J
    .param p2, "count"    # I
    .param p3, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/fusesource/jansi/internal/Kernel32;->readConsoleInputHelper(JIZ)[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;

    move-result-object v0

    .line 561
    .local v0, "evts":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    const/4 v1, 0x0

    .line 562
    .local v1, "keyEvtCount":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 563
    .local v5, "evt":Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    iget-short v6, v5, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->eventType:S

    sget-short v7, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->KEY_EVENT:S

    if-ne v6, v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 562
    .end local v5    # "evt":Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 565
    :cond_1
    if-lez v1, :cond_4

    .line 566
    new-array v2, v1, [Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;

    .line 567
    .local v2, "res":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    const/4 v4, 0x0

    .line 568
    .local v4, "i":I
    array-length v5, v0

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v6, v0, v3

    .line 569
    .local v6, "evt":Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    iget-short v7, v6, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->eventType:S

    sget-short v8, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->KEY_EVENT:S

    if-ne v7, v8, :cond_2

    .line 570
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    aput-object v6, v2, v4

    move v4, v7

    .line 568
    .end local v6    # "evt":Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 573
    :cond_3
    return-object v2

    .line 575
    .end local v0    # "evts":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    .end local v1    # "keyEvtCount":I
    .end local v2    # "res":[Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
    .end local v4    # "i":I
    :cond_4
    goto :goto_0
.end method
