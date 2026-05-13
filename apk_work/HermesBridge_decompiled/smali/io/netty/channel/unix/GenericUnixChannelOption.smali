.class public abstract Lio/netty/channel/unix/GenericUnixChannelOption;
.super Lio/netty/channel/unix/UnixChannelOption;
.source "GenericUnixChannelOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/unix/UnixChannelOption<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final level:I

.field private final optname:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "optname"    # I

    .line 29
    .local p0, "this":Lio/netty/channel/unix/GenericUnixChannelOption;, "Lio/netty/channel/unix/GenericUnixChannelOption<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/channel/unix/UnixChannelOption;-><init>(Ljava/lang/String;)V

    .line 30
    iput p2, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->level:I

    .line 31
    iput p3, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->optname:I

    .line 32
    return-void
.end method


# virtual methods
.method public level()I
    .locals 1

    .line 40
    .local p0, "this":Lio/netty/channel/unix/GenericUnixChannelOption;, "Lio/netty/channel/unix/GenericUnixChannelOption<TT;>;"
    iget v0, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->level:I

    return v0
.end method

.method public optname()I
    .locals 1

    .line 49
    .local p0, "this":Lio/netty/channel/unix/GenericUnixChannelOption;, "Lio/netty/channel/unix/GenericUnixChannelOption<TT;>;"
    iget v0, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->optname:I

    return v0
.end method
