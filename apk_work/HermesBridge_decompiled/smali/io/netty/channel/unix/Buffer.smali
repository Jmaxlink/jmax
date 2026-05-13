.class public final Lio/netty/channel/unix/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressSize()I
    .locals 1

    .line 59
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->addressSize()I

    move-result v0

    return v0

    .line 62
    :cond_0
    invoke-static {}, Lio/netty/channel/unix/Buffer;->addressSize0()I

    move-result v0

    return v0
.end method

.method private static native addressSize0()I
.end method

.method public static allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "capacity"    # I

    .line 40
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static free(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 33
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 34
    return-void
.end method

.method public static memoryAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 52
    :cond_0
    invoke-static {p0}, Lio/netty/channel/unix/Buffer;->memoryAddress0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static native memoryAddress0(Ljava/nio/ByteBuffer;)J
.end method
