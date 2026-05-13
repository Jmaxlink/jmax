.class public final Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;
.super Ljava/lang/Object;
.source "SingleThreadEventLoop.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/SingleThreadEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ChannelsReadOnlyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/netty/channel/Channel;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator$1;

    invoke-direct {v0}, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator$1;-><init>()V

    sput-object v0, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->EMPTY:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;, "Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator<TT;>;"
    .local p1, "channelIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    nop

    .line 177
    const-string v0, "channelIterable"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->channelIterator:Ljava/util/Iterator;

    .line 178
    return-void
.end method

.method public static empty()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 197
    sget-object v0, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->EMPTY:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 182
    .local p0, "this":Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;, "Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator<TT;>;"
    iget-object v0, p0, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->channelIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lio/netty/channel/Channel;
    .locals 1

    .line 187
    .local p0, "this":Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;, "Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator<TT;>;"
    iget-object v0, p0, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->channelIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 172
    .local p0, "this":Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;, "Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator<TT;>;"
    invoke-virtual {p0}, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->next()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 192
    .local p0, "this":Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;, "Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
