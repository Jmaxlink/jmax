.class public Lio/netty/handler/codec/compression/DeflateOptions;
.super Ljava/lang/Object;
.source "DeflateOptions.java"

# interfaces
.implements Lio/netty/handler/codec/compression/CompressionOptions;


# static fields
.field static final DEFAULT:Lio/netty/handler/codec/compression/DeflateOptions;


# instance fields
.field private final compressionLevel:I

.field private final memLevel:I

.field private final windowBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lio/netty/handler/codec/compression/DeflateOptions;

    const/16 v1, 0xf

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/codec/compression/DeflateOptions;-><init>(III)V

    sput-object v0, Lio/netty/handler/codec/compression/DeflateOptions;->DEFAULT:Lio/netty/handler/codec/compression/DeflateOptions;

    return-void
.end method

.method constructor <init>(III)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "compressionLevel"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {p1, v1, v2, v0}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->compressionLevel:I

    .line 42
    const/16 v0, 0xf

    const-string v1, "windowBits"

    invoke-static {p2, v2, v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->windowBits:I

    .line 43
    const/4 v0, 0x1

    const-string v1, "memLevel"

    invoke-static {p3, v0, v2, v1}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->memLevel:I

    .line 44
    return-void
.end method


# virtual methods
.method public compressionLevel()I
    .locals 1

    .line 47
    iget v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->compressionLevel:I

    return v0
.end method

.method public memLevel()I
    .locals 1

    .line 55
    iget v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->memLevel:I

    return v0
.end method

.method public windowBits()I
    .locals 1

    .line 51
    iget v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->windowBits:I

    return v0
.end method
