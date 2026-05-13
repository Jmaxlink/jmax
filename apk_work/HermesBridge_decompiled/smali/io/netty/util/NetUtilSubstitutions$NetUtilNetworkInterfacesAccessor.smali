.class final Lio/netty/util/NetUtilSubstitutions$NetUtilNetworkInterfacesAccessor;
.super Ljava/lang/Object;
.source "NetUtilSubstitutions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetUtilNetworkInterfacesAccessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lio/netty/util/NetUtilSubstitutions$NetUtilNetworkInterfacesLazyHolder;->access$300()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static set(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/NetworkInterface;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p0, "ignored":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/NetworkInterface;>;"
    return-void
.end method
