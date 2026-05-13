.class public final Lio/netty/handler/codec/Delimiters;
.super Ljava/lang/Object;
.source "Delimiters.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static lineDelimiter()[Lio/netty/buffer/ByteBuf;
    .locals 6

    .line 40
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 41
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/16 v5, 0xa

    aput-byte v5, v3, v4

    .line 42
    invoke-static {v3}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    new-array v0, v0, [Lio/netty/buffer/ByteBuf;

    aput-object v1, v0, v4

    aput-object v3, v0, v2

    .line 40
    return-object v0

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static nulDelimiter()[Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 32
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    new-array v0, v0, [Lio/netty/buffer/ByteBuf;

    aput-object v1, v0, v2

    .line 31
    return-object v0
.end method
