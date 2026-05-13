.class final Lio/netty/util/NetUtilSubstitutions$NetUtilNetworkInterfacesLazyHolder;
.super Ljava/lang/Object;
.source "NetUtilSubstitutions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetUtilNetworkInterfacesLazyHolder"
.end annotation


# static fields
.field private static final NETWORK_INTERFACES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    invoke-static {}, Lio/netty/util/NetUtilInitializations;->networkInterfaces()Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lio/netty/util/NetUtilSubstitutions$NetUtilNetworkInterfacesLazyHolder;->NETWORK_INTERFACES:Ljava/util/Collection;

    .line 109
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Collection;
    .locals 1

    .line 108
    sget-object v0, Lio/netty/util/NetUtilSubstitutions$NetUtilNetworkInterfacesLazyHolder;->NETWORK_INTERFACES:Ljava/util/Collection;

    return-object v0
.end method
