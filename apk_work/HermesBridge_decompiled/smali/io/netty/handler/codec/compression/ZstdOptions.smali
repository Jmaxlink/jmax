.class public Lio/netty/handler/codec/compression/ZstdOptions;
.super Ljava/lang/Object;
.source "ZstdOptions.java"

# interfaces
.implements Lio/netty/handler/codec/compression/CompressionOptions;


# static fields
.field static final DEFAULT:Lio/netty/handler/codec/compression/ZstdOptions;


# instance fields
.field private final blockSize:I

.field private final compressionLevel:I

.field private final maxEncodeSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Lio/netty/handler/codec/compression/ZstdOptions;

    const/high16 v1, 0x10000

    const/high16 v2, 0x2000000

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/codec/compression/ZstdOptions;-><init>(III)V

    sput-object v0, Lio/netty/handler/codec/compression/ZstdOptions;->DEFAULT:Lio/netty/handler/codec/compression/ZstdOptions;

    return-void
.end method

.method constructor <init>(III)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "blockSize"    # I
    .param p3, "maxEncodeSize"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lio/netty/handler/codec/compression/Zstd;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/16 v0, 0x16

    const-string v1, "compressionLevel"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/ZstdOptions;->compressionLevel:I

    .line 58
    const-string v0, "blockSize"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/ZstdOptions;->blockSize:I

    .line 59
    const-string v0, "maxEncodeSize"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/ZstdOptions;->maxEncodeSize:I

    .line 60
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zstd-jni is not available"

    invoke-static {}, Lio/netty/handler/codec/compression/Zstd;->cause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public blockSize()I
    .locals 1

    .line 67
    iget v0, p0, Lio/netty/handler/codec/compression/ZstdOptions;->blockSize:I

    return v0
.end method

.method public compressionLevel()I
    .locals 1

    .line 63
    iget v0, p0, Lio/netty/handler/codec/compression/ZstdOptions;->compressionLevel:I

    return v0
.end method

.method public maxEncodeSize()I
    .locals 1

    .line 71
    iget v0, p0, Lio/netty/handler/codec/compression/ZstdOptions;->maxEncodeSize:I

    return v0
.end method
