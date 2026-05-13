.class final Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6Accessor;
.super Ljava/lang/Object;
.source "NetUtilSubstitutions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetUtilLocalhost6Accessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Ljava/net/Inet6Address;
    .locals 1

    .line 67
    invoke-static {}, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6LazyHolder;->access$100()Ljava/net/Inet6Address;

    move-result-object v0

    return-object v0
.end method

.method static set(Ljava/net/Inet6Address;)V
    .locals 0
    .param p0, "ignored"    # Ljava/net/Inet6Address;

    .line 72
    return-void
.end method
