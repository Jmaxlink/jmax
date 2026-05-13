.class public final Lio/netty/handler/codec/compression/GzipOptions;
.super Lio/netty/handler/codec/compression/DeflateOptions;
.source "GzipOptions.java"


# static fields
.field static final DEFAULT:Lio/netty/handler/codec/compression/GzipOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lio/netty/handler/codec/compression/GzipOptions;

    const/16 v1, 0xf

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/codec/compression/GzipOptions;-><init>(III)V

    sput-object v0, Lio/netty/handler/codec/compression/GzipOptions;->DEFAULT:Lio/netty/handler/codec/compression/GzipOptions;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/DeflateOptions;-><init>(III)V

    .line 37
    return-void
.end method
