.class final Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostAccessor;
.super Ljava/lang/Object;
.source "NetUtilSubstitutions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetUtilLocalhostAccessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Ljava/net/InetAddress;
    .locals 1

    .line 82
    invoke-static {}, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostLazyHolder;->access$200()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static set(Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "ignored"    # Ljava/net/InetAddress;

    .line 87
    return-void
.end method
