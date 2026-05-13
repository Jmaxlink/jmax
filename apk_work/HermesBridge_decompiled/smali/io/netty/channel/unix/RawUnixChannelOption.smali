.class public final Lio/netty/channel/unix/RawUnixChannelOption;
.super Lio/netty/channel/unix/GenericUnixChannelOption;
.source "RawUnixChannelOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/unix/GenericUnixChannelOption<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "optname"    # I
    .param p4, "length"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/unix/GenericUnixChannelOption;-><init>(Ljava/lang/String;II)V

    .line 41
    const-string v0, "length"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/channel/unix/RawUnixChannelOption;->length:I

    .line 42
    return-void
.end method


# virtual methods
.method public length()I
    .locals 1

    .line 50
    iget v0, p0, Lio/netty/channel/unix/RawUnixChannelOption;->length:I

    return v0
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/RawUnixChannelOption;->validate(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public validate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 55
    invoke-super {p0, p1}, Lio/netty/channel/unix/GenericUnixChannelOption;->validate(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lio/netty/channel/unix/RawUnixChannelOption;->length:I

    if-ne v0, v1, :cond_0

    .line 60
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of value does not match. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/unix/RawUnixChannelOption;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
