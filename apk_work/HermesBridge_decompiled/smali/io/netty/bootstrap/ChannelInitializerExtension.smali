.class public abstract Lio/netty/bootstrap/ChannelInitializerExtension;
.super Ljava/lang/Object;
.source "ChannelInitializerExtension.java"


# static fields
.field public static final EXTENSIONS_SYSTEM_PROPERTY:Ljava/lang/String; = "io.netty.bootstrap.extensions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postInitializeClientChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 90
    return-void
.end method

.method public postInitializeServerChildChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 121
    return-void
.end method

.method public postInitializeServerListenerChannel(Lio/netty/channel/ServerChannel;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/ServerChannel;

    .line 106
    return-void
.end method

.method public priority()D
    .locals 2

    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method
