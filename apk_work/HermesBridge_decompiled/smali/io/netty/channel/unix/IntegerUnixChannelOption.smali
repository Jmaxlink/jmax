.class public final Lio/netty/channel/unix/IntegerUnixChannelOption;
.super Lio/netty/channel/unix/GenericUnixChannelOption;
.source "IntegerUnixChannelOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/unix/GenericUnixChannelOption<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "optname"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/unix/GenericUnixChannelOption;-><init>(Ljava/lang/String;II)V

    .line 31
    return-void
.end method
