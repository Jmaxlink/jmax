.class final Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions$1;
.super Ljava/lang/Object;
.source "ChannelInitializerExtensions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->serviceLoadExtensions(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/ClassLoader;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/netty/bootstrap/ChannelInitializerExtension;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/netty/bootstrap/ChannelInitializerExtension;Lio/netty/bootstrap/ChannelInitializerExtension;)I
    .locals 4
    .param p1, "a"    # Lio/netty/bootstrap/ChannelInitializerExtension;
    .param p2, "b"    # Lio/netty/bootstrap/ChannelInitializerExtension;

    .line 119
    invoke-virtual {p1}, Lio/netty/bootstrap/ChannelInitializerExtension;->priority()D

    move-result-wide v0

    invoke-virtual {p2}, Lio/netty/bootstrap/ChannelInitializerExtension;->priority()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 116
    check-cast p1, Lio/netty/bootstrap/ChannelInitializerExtension;

    check-cast p2, Lio/netty/bootstrap/ChannelInitializerExtension;

    invoke-virtual {p0, p1, p2}, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions$1;->compare(Lio/netty/bootstrap/ChannelInitializerExtension;Lio/netty/bootstrap/ChannelInitializerExtension;)I

    move-result p1

    return p1
.end method
