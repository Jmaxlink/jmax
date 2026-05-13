.class final Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;
.super Ljava/lang/Object;
.source "IpSubnetFilterRuleComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;

    invoke-direct {v0}, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;-><init>()V

    sput-object v0, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;->INSTANCE:Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 34
    move-object v0, p1

    check-cast v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    move-object v1, p2

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->compareTo(Ljava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method
