.class final Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost4Accessor;
.super Ljava/lang/Object;
.source "NetUtilSubstitutions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetUtilLocalhost4Accessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Ljava/net/Inet4Address;
    .locals 1

    .line 52
    invoke-static {}, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost4LazyHolder;->access$000()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method static set(Ljava/net/Inet4Address;)V
    .locals 0
    .param p0, "ignored"    # Ljava/net/Inet4Address;

    .line 57
    return-void
.end method
