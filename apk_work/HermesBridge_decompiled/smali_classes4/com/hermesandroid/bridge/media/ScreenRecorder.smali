.class public final Lcom/hermesandroid/bridge/media/ScreenRecorder;
.super Ljava/lang/Object;
.source "ScreenRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenRecorder.kt\ncom/hermesandroid/bridge/media/ScreenRecorder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/media/ScreenRecorder;",
        "",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "projection",
        "Landroid/media/projection/MediaProjection;",
        "recorder",
        "Landroid/media/MediaRecorder;",
        "virtualDisplay",
        "Landroid/hardware/display/VirtualDisplay;",
        "hasPermission",
        "",
        "record",
        "",
        "",
        "durationMs",
        "",
        "release",
        "",
        "setProjection",
        "p",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/hermesandroid/bridge/media/ScreenRecorder;

.field private static final handler:Landroid/os/Handler;

.field private static final handlerThread:Landroid/os/HandlerThread;

.field private static projection:Landroid/media/projection/MediaProjection;

.field private static recorder:Landroid/media/MediaRecorder;

.field private static virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public static synthetic $r8$lambda$tUoBMILOOqt4bVVFNLJuqP7bGBk(Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;Landroid/media/projection/MediaProjection;J[Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/hermesandroid/bridge/media/ScreenRecorder;->record$lambda$2(Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;Landroid/media/projection/MediaProjection;J[Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/media/ScreenRecorder;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->INSTANCE:Lcom/hermesandroid/bridge/media/ScreenRecorder;

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenRecorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 121
    .local v1, "$this$handlerThread_u24lambda_u240":Landroid/os/HandlerThread;
    const/4 v2, 0x0

    .line 19
    .local v2, "$i$a$-apply-ScreenRecorder$handlerThread$1":I
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .end local v1    # "$this$handlerThread_u24lambda_u240":Landroid/os/HandlerThread;
    .end local v2    # "$i$a$-apply-ScreenRecorder$handlerThread$1":I
    sput-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    .line 20
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/hermesandroid/bridge/media/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic record$default(Lcom/hermesandroid/bridge/media/ScreenRecorder;JILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 35
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/media/ScreenRecorder;->record(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final record$lambda$2(Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;Landroid/media/projection/MediaProjection;J[Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 26
    .param p0, "$service"    # Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .param p1, "$proj"    # Landroid/media/projection/MediaProjection;
    .param p2, "$durationMs"    # J
    .param p4, "$resultHolder"    # [Ljava/util/Map;
    .param p5, "$latch"    # Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "message"

    const-string v4, "success"

    const-string v0, "$service"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$proj"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultHolder"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$latch"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v5, 0x0

    .line 46
    .local v5, "outputFile":Ljava/lang/Object;
    nop

    .line 47
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screen_record_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v19, v0

    .line 48
    .end local v5    # "outputFile":Ljava/lang/Object;
    .local v19, "outputFile":Ljava/lang/Object;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 49
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v12, v5

    .line 50
    .local v12, "width":I
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v11, v5

    .line 51
    .local v11, "height":I
    iget v9, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 53
    .local v9, "density":I
    new-instance v5, Landroid/media/MediaRecorder;

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/media/MediaRecorder;-><init>(Landroid/content/Context;)V

    move-object v6, v5

    .local v6, "$this$record_u24lambda_u242_u24lambda_u241":Landroid/media/MediaRecorder;
    const/4 v7, 0x0

    .line 54
    .local v7, "$i$a$-apply-ScreenRecorder$record$1$mr$1":I
    invoke-virtual {v6, v13}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 55
    invoke-virtual {v6, v13}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 56
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6, v12, v11}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 58
    invoke-virtual {v6, v13}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 59
    const v8, 0x1e8480

    invoke-virtual {v6, v8}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 60
    const/16 v8, 0x1e

    invoke-virtual {v6, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 61
    invoke-virtual {v6}, Landroid/media/MediaRecorder;->prepare()V

    .line 62
    nop

    .line 53
    .end local v6    # "$this$record_u24lambda_u242_u24lambda_u241":Landroid/media/MediaRecorder;
    .end local v7    # "$i$a$-apply-ScreenRecorder$record$1$mr$1":I
    move-object/from16 v20, v5

    .line 63
    .local v20, "mr":Landroid/media/MediaRecorder;
    sput-object v20, Lcom/hermesandroid/bridge/media/ScreenRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 65
    nop

    .line 66
    const-string v6, "ScreenRecorder"

    .line 67
    nop

    .line 68
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v21

    sget-object v22, Lcom/hermesandroid/bridge/media/ScreenRecorder;->handler:Landroid/os/Handler;

    .line 65
    const/16 v10, 0x10

    const/16 v23, 0x0

    move-object/from16 v5, p1

    move v7, v12

    move v8, v11

    move/from16 v24, v11

    .end local v11    # "height":I
    .local v24, "height":I
    move-object/from16 v11, v21

    move/from16 v21, v12

    .end local v12    # "width":I
    .local v21, "width":I
    move-object/from16 v12, v23

    move v1, v13

    move-object/from16 v13, v22

    invoke-virtual/range {v5 .. v13}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v5

    .line 70
    .local v5, "vd":Landroid/hardware/display/VirtualDisplay;
    sput-object v5, Lcom/hermesandroid/bridge/media/ScreenRecorder;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 72
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaRecorder;->start()V

    .line 75
    invoke-static/range {p2 .. p3}, Ljava/lang/Thread;->sleep(J)V

    .line 77
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaRecorder;->stop()V

    .line 78
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaRecorder;->release()V

    .line 79
    invoke-virtual {v5}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 80
    sput-object v17, Lcom/hermesandroid/bridge/media/ScreenRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 81
    sput-object v17, Lcom/hermesandroid/bridge/media/ScreenRecorder;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 83
    invoke-static/range {v19 .. v19}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v6

    .line 84
    .local v6, "bytes":[B
    invoke-static {v6, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "base64Video":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 87
    nop

    .line 88
    const/4 v8, 0x3

    new-array v10, v8, [Lkotlin/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v4, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v10, v18

    .line 89
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recorded "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v12, p2

    :try_start_2
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v8, "ms"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v10, v16

    .line 88
    nop

    .line 90
    const-string v8, "data"

    .line 91
    const/4 v11, 0x6

    new-array v11, v11, [Lkotlin/Pair;

    const-string v1, "video"

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v11, v18

    .line 92
    const-string v1, "width"

    move-object/from16 v25, v0

    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .local v25, "metrics":Landroid/util/DisplayMetrics;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v11, v16

    .line 91
    nop

    .line 93
    const-string v0, "height"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v11, v1

    .line 91
    nop

    .line 94
    const-string v0, "durationMs"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v11, v1

    .line 91
    nop

    .line 95
    const-string v0, "sizeBytes"

    array-length v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v11, v1

    .line 91
    nop

    .line 96
    const-string v0, "mimeType"

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v11, v1

    .line 91
    nop

    .line 90
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v10, v1

    .line 88
    nop

    .line 87
    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v2, v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v5    # "vd":Landroid/hardware/display/VirtualDisplay;
    .end local v6    # "bytes":[B
    .end local v7    # "base64Video":Ljava/lang/String;
    .end local v9    # "density":I
    .end local v20    # "mr":Landroid/media/MediaRecorder;
    .end local v21    # "width":I
    .end local v24    # "height":I
    .end local v25    # "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 108
    goto/16 :goto_5

    .line 107
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1

    .line 107
    :catchall_1
    move-exception v0

    move-wide/from16 v12, p2

    :goto_0
    move-object/from16 v5, v19

    goto/16 :goto_6

    .line 99
    :catch_1
    move-exception v0

    move-wide/from16 v12, p2

    :goto_1
    move-object/from16 v5, v19

    goto :goto_2

    .line 107
    .end local v19    # "outputFile":Ljava/lang/Object;
    .local v5, "outputFile":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-wide/from16 v12, p2

    goto :goto_6

    .line 99
    :catch_2
    move-exception v0

    move-wide/from16 v12, p2

    :goto_2
    move-object v1, v0

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 100
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 101
    :cond_0
    :goto_3
    :try_start_4
    sget-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catch_4
    move-exception v0

    .line 102
    :cond_1
    :goto_4
    :try_start_5
    sput-object v17, Lcom/hermesandroid/bridge/media/ScreenRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 103
    sput-object v17, Lcom/hermesandroid/bridge/media/ScreenRecorder;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 104
    move-object v0, v5

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 105
    :cond_2
    const/4 v6, 0x2

    new-array v0, v6, [Lkotlin/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v0, v18

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Recording failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v16

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v2, v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 108
    move-object/from16 v19, v5

    .line 109
    .end local v5    # "outputFile":Ljava/lang/Object;
    .restart local v19    # "outputFile":Ljava/lang/Object;
    :goto_5
    return-void

    .line 107
    .end local v19    # "outputFile":Ljava/lang/Object;
    .restart local v5    # "outputFile":Ljava/lang/Object;
    :goto_6
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method


# virtual methods
.method public final hasPermission()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final record(J)Ljava/util/Map;
    .locals 16
    .param p1, "durationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v2

    const/4 v0, 0x2

    const-string v8, "message"

    const-string v9, "success"

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 37
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 36
    if-nez v2, :cond_0

    .line 37
    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v2, "Accessibility service not running"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-array v0, v0, [Lkotlin/Pair;

    aput-object v1, v0, v11

    aput-object v2, v0, v10

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 38
    .local v2, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    sget-object v3, Lcom/hermesandroid/bridge/media/ScreenRecorder;->projection:Landroid/media/projection/MediaProjection;

    if-nez v3, :cond_1

    .line 39
    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v3, "No MediaProjection. Tap \'Grant Screen Recording\' in the app first."

    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-array v0, v0, [Lkotlin/Pair;

    aput-object v1, v0, v11

    aput-object v3, v0, v10

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 41
    .local v3, "proj":Landroid/media/projection/MediaProjection;
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v13, v1

    .line 42
    .local v13, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/util/Map;

    move-result-object v1

    move-object v14, v1

    .line 44
    .local v14, "resultHolder":[Ljava/util/Map;
    sget-object v15, Lcom/hermesandroid/bridge/media/ScreenRecorder;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/hermesandroid/bridge/media/ScreenRecorder$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-wide/from16 v4, p1

    move-object v6, v14

    move-object v10, v7

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/hermesandroid/bridge/media/ScreenRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;Landroid/media/projection/MediaProjection;J[Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v15, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    const/16 v1, 0x2710

    int-to-long v4, v1

    add-long v4, p1, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 113
    aget-object v1, v14, v11

    if-nez v1, :cond_2

    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v4, "Recording timed out"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-array v0, v0, [Lkotlin/Pair;

    aput-object v1, v0, v11

    const/4 v1, 0x1

    aput-object v4, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final release()V
    .locals 1

    .line 117
    sget-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 118
    return-void
.end method

.method public final setProjection(Landroid/media/projection/MediaProjection;)V
    .locals 1
    .param p1, "p"    # Landroid/media/projection/MediaProjection;

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/hermesandroid/bridge/media/ScreenRecorder;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 26
    :cond_0
    sput-object p1, Lcom/hermesandroid/bridge/media/ScreenRecorder;->projection:Landroid/media/projection/MediaProjection;

    .line 27
    return-void
.end method
