.class final Lio/netty/handler/codec/ByteToMessageDecoder$2;
.super Ljava/lang/Object;
.source "ByteToMessageDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/ByteToMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cumulate(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p3, "in"    # Lio/netty/buffer/ByteBuf;

    .line 124
    if-ne p2, p3, :cond_0

    .line 126
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 127
    return-object p2

    .line 129
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 131
    return-object p3

    .line 133
    :cond_1
    const/4 v0, 0x0

    .line 135
    .local v0, "composite":Lio/netty/buffer/CompositeByteBuf;
    :try_start_0
    instance-of v1, p2, Lio/netty/buffer/CompositeByteBuf;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 136
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/CompositeByteBuf;

    move-object v0, v1

    .line 139
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 140
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    goto :goto_0

    .line 143
    :cond_2
    const v1, 0x7fffffff

    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/CompositeByteBuf;->addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v1

    move-object v0, v1

    .line 145
    :cond_3
    :goto_0
    invoke-virtual {v0, v2, p3}, Lio/netty/buffer/CompositeByteBuf;->addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const/4 p3, 0x0

    .line 147
    nop

    .line 149
    if-eqz p3, :cond_4

    .line 151
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 153
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 154
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->release()Z

    .line 147
    :cond_4
    return-object v0

    .line 149
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_5

    .line 151
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 153
    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_5

    .line 154
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->release()Z

    .line 157
    :cond_5
    throw v1
.end method
