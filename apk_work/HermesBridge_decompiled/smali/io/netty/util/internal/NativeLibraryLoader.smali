.class public final Lio/netty/util/internal/NativeLibraryLoader;
.super Ljava/lang/Object;
.source "NativeLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELETE_NATIVE_LIB_AFTER_LOADING:Z

.field private static final DETECT_NATIVE_LIBRARY_DUPLICATES:Z

.field private static final NATIVE_RESOURCE_HOME:Ljava/lang/String; = "META-INF/native/"

.field private static final TRY_TO_PATCH_SHADED_ID:Z

.field private static final UNIQUE_ID_BYTES:[B

.field private static final WORKDIR:Ljava/io/File;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    nop

    .line 50
    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 59
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 60
    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    .line 63
    const-string v0, "io.netty.native.workdir"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "workdir":Ljava/lang/String;
    const-string v1, "-Dio.netty.native.workdir: "

    if-eqz v0, :cond_0

    .line 65
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 69
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v3

    .line 74
    :goto_0
    sput-object v2, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 75
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 76
    .end local v2    # "f":Ljava/io/File;
    goto :goto_1

    .line 77
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->tmpdir()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 78
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (io.netty.tmpdir)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 81
    :goto_1
    const-string v1, "io.netty.native.deleteLibAfterLoading"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    .line 83
    sget-object v1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-boolean v3, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "-Dio.netty.native.deleteLibAfterLoading: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v1, "io.netty.native.tryPatchShadedId"

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    .line 87
    sget-object v1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-boolean v3, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "-Dio.netty.native.tryPatchShadedId: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v1, "io.netty.native.detectNativeLibraryDuplicates"

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/util/internal/NativeLibraryLoader;->DETECT_NATIVE_LIBRARY_DUPLICATES:Z

    .line 91
    sget-object v1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-boolean v2, Lio/netty/util/internal/NativeLibraryLoader;->DETECT_NATIVE_LIBRARY_DUPLICATES:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.native.detectNativeLibraryDuplicates: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    .end local v0    # "workdir":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    return-void
.end method

.method private static calculateMangledPackagePrefix()Ljava/lang/String;
    .locals 6

    .line 139
    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "maybeShaded":Ljava/lang/String;
    const-string v1, "io!netty!util!internal!NativeLibraryLoader"

    const/16 v2, 0x21

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "expected":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string v4, "_"

    const-string v5, "_1"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 147
    return-object v2

    .line 143
    :cond_0
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    const-string v3, "Could not find prefix added to %s to get %s. When shading, only adding a package prefix is supported"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static classToByteArray(Ljava/lang/Class;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 504
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "fileName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 506
    .local v1, "lastDot":I
    if-lez v1, :cond_0

    .line 507
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 510
    .local v2, "classUrl":Ljava/net/URL;
    if-eqz v2, :cond_2

    .line 513
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 514
    .local v3, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 515
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 517
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    .line 518
    :goto_0
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "r":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 519
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 521
    .end local v7    # "r":I
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-static {v5}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 526
    invoke-static {v4}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 521
    return-object v6

    .line 525
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 522
    :catch_0
    move-exception v6

    .line 523
    .local v6, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v7, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "lastDot":I
    .end local v2    # "classUrl":Ljava/net/URL;
    .end local v3    # "buf":[B
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "lastDot":I
    .restart local v2    # "classUrl":Ljava/net/URL;
    .restart local v3    # "buf":[B
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-static {v5}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 526
    invoke-static {v4}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 527
    throw v6

    .line 511
    .end local v3    # "buf":[B
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_2
    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 531
    if-eqz p0, :cond_0

    .line 533
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 538
    :cond_0
    :goto_0
    return-void
.end method

.method private static digest(Ljava/security/MessageDigest;Ljava/net/URL;)[B
    .locals 5
    .param p0, "digest"    # Ljava/security/MessageDigest;
    .param p1, "url"    # Ljava/net/URL;

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 315
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 317
    .local v1, "bytes":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 318
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-static {v0}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 320
    return-object v2

    .line 325
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Can\'t read resource."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    nop

    .line 325
    invoke-static {v0}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    const/4 v2, 0x0

    return-object v2

    .line 325
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 326
    throw v1
.end method

.method private static generateUniqueId(I)[B
    .locals 5
    .param p0, "length"    # I

    .line 367
    new-array v0, p0, [B

    .line 368
    .local v0, "idBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 370
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v3

    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    array-length v4, v4

    .line 371
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 258
    if-nez p1, :cond_0

    .line 259
    :try_start_0
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    goto :goto_0

    .line 261
    .end local v0    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    .restart local v0    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    nop

    .line 267
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 268
    .local v1, "urlsList":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 269
    .local v2, "size":I
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 275
    sget-boolean v4, Lio/netty/util/internal/NativeLibraryLoader;->DETECT_NATIVE_LIBRARY_DUPLICATES:Z

    const-string v5, "\' with different content: "

    const-string v6, "Multiple resources found for \'"

    if-eqz v4, :cond_6

    .line 277
    :try_start_1
    const-string v4, "SHA-256"
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 273
    :pswitch_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    return-object v3

    .line 271
    :pswitch_1
    const/4 v3, 0x0

    return-object v3

    .line 277
    :goto_1
    :try_start_2
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 280
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 281
    .local v3, "url":Ljava/net/URL;
    invoke-static {v4, v3}, Lio/netty/util/internal/NativeLibraryLoader;->digest(Ljava/security/MessageDigest;Ljava/net/URL;)[B

    move-result-object v7

    .line 282
    .local v7, "digest":[B
    const/4 v8, 0x1

    .line 283
    .local v8, "allSame":Z
    if-eqz v7, :cond_4

    .line 284
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2
    if-ge v9, v2, :cond_3

    .line 285
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URL;

    invoke-static {v4, v10}, Lio/netty/util/internal/NativeLibraryLoader;->digest(Ljava/security/MessageDigest;Ljava/net/URL;)[B

    move-result-object v10

    .line 286
    .local v10, "digest2":[B
    if-eqz v10, :cond_2

    invoke-static {v7, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v11, :cond_1

    goto :goto_3

    .line 284
    .end local v10    # "digest2":[B
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 287
    .restart local v10    # "digest2":[B
    :cond_2
    :goto_3
    const/4 v8, 0x0

    .line 288
    nop

    .line 284
    .end local v9    # "i":I
    .end local v10    # "digest2":[B
    :cond_3
    goto :goto_4

    .line 292
    :cond_4
    const/4 v8, 0x0

    .line 294
    :goto_4
    if-eqz v8, :cond_5

    .line 295
    return-object v3

    .line 299
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v7    # "digest":[B
    .end local v8    # "allSame":Z
    :cond_5
    goto :goto_5

    .line 297
    :catch_0
    move-exception v3

    .line 298
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v7, "Don\'t support SHA-256, can\'t check if resources have same content."

    invoke-interface {v4, v7, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_6
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Please fix your dependency graph."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 306
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    return-object v3

    .line 263
    .end local v0    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v1    # "urlsList":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    .end local v2    # "size":I
    :catch_1
    move-exception v0

    .line 264
    .local v0, "iox":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred while getting the resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 18
    .param p0, "originalName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 156
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ".jnilib"

    invoke-static {}, Lio/netty/util/internal/NativeLibraryLoader;->calculateMangledPackagePrefix()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "mangledPackagePrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "name":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 161
    .local v6, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v5, v7}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    return-void

    .line 163
    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 164
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "libname":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "META-INF/native/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 171
    .local v10, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 172
    .local v11, "out":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 173
    .local v12, "tmpFile":Ljava/io/File;
    invoke-static {v9, v2}, Lio/netty/util/internal/NativeLibraryLoader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v13

    .line 175
    .local v13, "url":Ljava/net/URL;
    if-nez v13, :cond_3

    .line 176
    :try_start_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v9, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v14, "META-INF/native/lib"

    if-eqz v0, :cond_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".dynlib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0, v2}, Lio/netty/util/internal/NativeLibraryLoader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v3

    move-object v13, v3

    .line 180
    if-eqz v13, :cond_1

    .line 185
    .end local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 181
    .restart local v0    # "fileName":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "fnf":Ljava/io/FileNotFoundException;
    invoke-static {v3, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 183
    nop

    .end local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v8    # "libname":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "tmpFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v3

    .line 186
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v3    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v8    # "libname":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "tmpFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    invoke-static {v0, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 188
    nop

    .end local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v8    # "libname":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "tmpFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v0

    .line 192
    .end local v0    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v8    # "libname":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "tmpFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    :goto_1
    const/16 v0, 0x2e

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 193
    .local v0, "index":I
    invoke-virtual {v8, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, "suffix":Ljava/lang/String;
    sget-object v15, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    invoke-static {v3, v14, v15}, Lio/netty/util/internal/PlatformDependent;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    move-object v12, v15

    .line 197
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v15

    move-object v10, v15

    .line 198
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v11, v15

    .line 200
    const/16 v15, 0x2000

    new-array v15, v15, [B

    .line 202
    .local v15, "buffer":[B
    :goto_2
    invoke-virtual {v10, v15}, Ljava/io/InputStream;->read([B)I

    move-result v16

    move/from16 v17, v16

    .local v17, "length":I
    if-lez v16, :cond_4

    .line 203
    move/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "length":I
    .local v0, "length":I
    .local v16, "index":I
    invoke-virtual {v11, v15, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    move/from16 v0, v16

    goto :goto_2

    .line 205
    .end local v16    # "index":I
    .local v0, "index":I
    .restart local v17    # "length":I
    :cond_4
    move/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "length":I
    .local v0, "length":I
    .restart local v16    # "index":I
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 207
    invoke-static {v4}, Lio/netty/util/internal/NativeLibraryLoader;->shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 210
    invoke-static {v12, v1}, Lio/netty/util/internal/NativeLibraryLoader;->tryPatchShadedLibraryIdAndSign(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    :cond_5
    invoke-static {v11}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 216
    const/4 v11, 0x0

    .line 218
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v0

    .end local v0    # "length":I
    .restart local v17    # "length":I
    const/4 v0, 0x1

    invoke-static {v2, v7, v0}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v14    # "suffix":Ljava/lang/String;
    .end local v15    # "buffer":[B
    .end local v16    # "index":I
    .end local v17    # "length":I
    invoke-static {v10}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 245
    invoke-static {v11}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 249
    if-eqz v12, :cond_7

    sget-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    if-eqz v0, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 250
    :cond_6
    invoke-virtual {v12}, Ljava/io/File;->deleteOnExit()V

    .line 253
    :cond_7
    return-void

    .line 244
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "could not load a native library: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 240
    .local v3, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v3, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    invoke-static {v3, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 242
    nop

    .end local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v8    # "libname":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "tmpFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v8    # "libname":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "tmpFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 221
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    if-eqz v12, :cond_8

    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    invoke-static {v12}, Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;->access$000(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 226
    sget-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v7, "{} exists but cannot be executed even when execute permissions set; check volume for \"noexec\" flag; use -D{}=[path] to set native working directory separately."

    .line 229
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "io.netty.native.workdir"

    .line 226
    invoke-interface {v0, v7, v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 231
    :catchall_2
    move-exception v0

    .line 232
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v7, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "Error checking if {} is on a file store mounted with noexec"

    invoke-interface {v7, v14, v12, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 234
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_3
    nop

    .line 236
    :goto_4
    invoke-static {v3, v6}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 237
    nop

    .end local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v8    # "libname":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "tmpFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v4    # "mangledPackagePrefix":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v8    # "libname":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "tmpFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :goto_5
    invoke-static {v10}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 245
    invoke-static {v11}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 249
    if-eqz v12, :cond_a

    sget-boolean v3, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    if-eqz v3, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_a

    .line 250
    :cond_9
    invoke-virtual {v12}, Ljava/io/File;->deleteOnExit()V

    .line 252
    :cond_a
    throw v0
.end method

.method public static varargs loadFirstAvailable(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "names"    # [Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 105
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, p0}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 106
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Loaded library with name \'{}\'"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v4

    .line 109
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load any of the given libraries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 116
    throw v1
.end method

.method private static loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "absolute"    # Z

    .line 383
    const-string v0, "Successfully loaded the library {}"

    const/4 v1, 0x0

    .line 387
    .local v1, "suppressed":Ljava/lang/Throwable;
    :try_start_0
    const-class v2, Lio/netty/util/internal/NativeLibraryUtil;

    invoke-static {p0, v2}, Lio/netty/util/internal/NativeLibraryLoader;->tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 388
    .local v2, "newHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 389
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    return-void

    .line 398
    .end local v2    # "newHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 393
    :catch_1
    move-exception v2

    .line 394
    .local v2, "e":Ljava/lang/Exception;
    move-object v1, v2

    goto :goto_0

    .line 391
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    move-object v1, v2

    .line 395
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    nop

    .line 396
    :goto_0
    :try_start_1
    invoke-static {p1, p2}, Lio/netty/util/internal/NativeLibraryUtil;->loadLibrary(Ljava/lang/String;Z)V

    .line 397
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 403
    :catch_3
    move-exception v0

    .line 404
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    nop

    .line 405
    invoke-static {v0, v1}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 407
    throw v0

    .line 399
    .local v0, "nsme":Ljava/lang/NoSuchMethodError;
    :goto_1
    if-eqz v1, :cond_0

    .line 400
    invoke-static {v0, v1}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 402
    :cond_0
    invoke-static {p1, v0}, Lio/netty/util/internal/NativeLibraryLoader;->rethrowWithMoreDetailsIfPossible(Ljava/lang/String;Ljava/lang/NoSuchMethodError;)V

    .line 408
    .end local v0    # "nsme":Ljava/lang/NoSuchMethodError;
    :goto_2
    nop

    .line 409
    return-void
.end method

.method private static loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "absolute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 422
    .local p0, "helper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/netty/util/internal/NativeLibraryLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader$1;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, "ret":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 437
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    .line 438
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/UnsatisfiedLinkError;

    if-nez v2, :cond_1

    .line 439
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 440
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/UnsatisfiedLinkError;

    if-eqz v3, :cond_0

    .line 441
    move-object v3, v2

    check-cast v3, Ljava/lang/UnsatisfiedLinkError;

    throw v3

    .line 443
    :cond_0
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v3, v1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 445
    throw v3

    .line 438
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " should be a wrapper throwable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 447
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private static rethrowWithMoreDetailsIfPossible(Ljava/lang/String;Ljava/lang/NoSuchMethodError;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/NoSuchMethodError;

    .line 413
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/LinkageError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Possible multiple incompatible native libraries on the classpath for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 417
    :cond_0
    throw p1
.end method

.method private static shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packagePrefix"    # Ljava/lang/String;

    .line 363
    sget-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static tryExec(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;

    .line 345
    const-string v0, "Execution of \'{}\' failed."

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 346
    .local v2, "exitValue":I
    if-eqz v2, :cond_0

    .line 347
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Execution of \'{}\' failed: {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, p0, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    return v1

    .line 350
    :cond_0
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Execution of \'{}\' succeed: {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, p0, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    const/4 v0, 0x1

    return v0

    .line 356
    .end local v2    # "exitValue":I
    :catch_0
    move-exception v2

    .line 357
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v0, p0, v2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 354
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v0, p0, v2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 352
    :catch_2
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 358
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 359
    :goto_1
    return v1
.end method

.method static tryPatchShadedLibraryIdAndSign(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "libraryFile"    # Ljava/io/File;
    .param p1, "originalName"    # Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/io/File;

    const-string v1, "/Library/Developer/CommandLineTools"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Can\'t patch shaded library id as CommandLineTools are not installed. Consider installing CommandLineTools with \'xcode-select --install\'"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 333
    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/NativeLibraryLoader;->generateUniqueId(I)[B

    move-result-object v1

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 336
    .local v0, "newId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install_name_tool -id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/NativeLibraryLoader;->tryExec(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    return-void

    .line 340
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codesign -s - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/NativeLibraryLoader;->tryExec(Ljava/lang/String;)Z

    .line 341
    return-void
.end method

.method private static tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 459
    .local p1, "helper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    if-eqz p0, :cond_0

    .line 467
    :try_start_1
    invoke-static {p1}, Lio/netty/util/internal/NativeLibraryLoader;->classToByteArray(Ljava/lang/Class;)[B

    move-result-object v1

    .line 468
    .local v1, "classBinary":[B
    new-instance v2, Lio/netty/util/internal/NativeLibraryLoader$2;

    invoke-direct {v2, p0, p1, v1}, Lio/netty/util/internal/NativeLibraryLoader$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;[B)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 490
    .end local v1    # "classBinary":[B
    :catch_1
    move-exception v1

    .line 491
    .local v1, "e2":Ljava/lang/Error;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 492
    throw v1

    .line 487
    .end local v1    # "e2":Ljava/lang/Error;
    :catch_2
    move-exception v1

    .line 488
    .local v1, "e2":Ljava/lang/RuntimeException;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 489
    throw v1

    .line 484
    .end local v1    # "e2":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 485
    .local v1, "e2":Ljava/lang/ClassNotFoundException;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 486
    throw v1

    .line 463
    .end local v1    # "e2":Ljava/lang/ClassNotFoundException;
    :cond_0
    throw v0
.end method
