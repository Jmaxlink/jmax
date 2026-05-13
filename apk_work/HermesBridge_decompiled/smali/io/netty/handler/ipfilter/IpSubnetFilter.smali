.class public Lio/netty/handler/ipfilter/IpSubnetFilter;
.super Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;
.source "IpSubnetFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final acceptIfNotFound:Z

.field private final ipFilterRuleTypeIPv4:Lio/netty/handler/ipfilter/IpFilterRuleType;

.field private final ipFilterRuleTypeIPv6:Lio/netty/handler/ipfilter/IpFilterRuleType;

.field private final ipv4Rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/ipfilter/IpSubnetFilterRule;",
            ">;"
        }
    .end annotation
.end field

.field private final ipv6Rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/ipfilter/IpSubnetFilterRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/netty/handler/ipfilter/IpSubnetFilterRule;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ipfilter/IpSubnetFilterRule;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ipfilter/IpSubnetFilter;-><init>(ZLjava/util/List;)V

    .line 92
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 10
    .param p1, "acceptIfNotFound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lio/netty/handler/ipfilter/IpSubnetFilterRule;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ipfilter/IpSubnetFilterRule;>;"
    invoke-direct {p0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;-><init>()V

    .line 102
    const-string v0, "rules"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iput-boolean p1, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->acceptIfNotFound:Z

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "numAcceptIPv4":I
    const/4 v1, 0x0

    .line 107
    .local v1, "numRejectIPv4":I
    const/4 v2, 0x0

    .line 108
    .local v2, "numAcceptIPv6":I
    const/4 v3, 0x0

    .line 110
    .local v3, "numRejectIPv6":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v4, "unsortedIPv4Rules":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ipfilter/IpSubnetFilterRule;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v5, "unsortedIPv6Rules":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ipfilter/IpSubnetFilterRule;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    .line 115
    .local v7, "ipSubnetFilterRule":Lio/netty/handler/ipfilter/IpSubnetFilterRule;
    const-string v8, "rule"

    invoke-static {v7, v8}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v7}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->getFilterRule()Lio/netty/handler/ipfilter/IpFilterRule;

    move-result-object v8

    instance-of v8, v8, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;

    if-eqz v8, :cond_1

    .line 118
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v7}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object v8

    sget-object v9, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne v8, v9, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v7}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object v8

    sget-object v9, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne v8, v9, :cond_2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 134
    .end local v7    # "ipSubnetFilterRule":Lio/netty/handler/ipfilter/IpSubnetFilterRule;
    :goto_1
    goto :goto_0

    .line 147
    :cond_3
    const/4 v6, 0x0

    if-nez v0, :cond_4

    if-lez v1, :cond_4

    .line 148
    sget-object v7, Lio/netty/handler/ipfilter/IpFilterRuleType;->REJECT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    iput-object v7, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv4:Lio/netty/handler/ipfilter/IpFilterRuleType;

    goto :goto_2

    .line 149
    :cond_4
    if-lez v0, :cond_5

    if-nez v1, :cond_5

    .line 150
    sget-object v7, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    iput-object v7, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv4:Lio/netty/handler/ipfilter/IpFilterRuleType;

    goto :goto_2

    .line 152
    :cond_5
    iput-object v6, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv4:Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 155
    :goto_2
    if-nez v2, :cond_6

    if-lez v3, :cond_6

    .line 156
    sget-object v6, Lio/netty/handler/ipfilter/IpFilterRuleType;->REJECT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    iput-object v6, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv6:Lio/netty/handler/ipfilter/IpFilterRuleType;

    goto :goto_3

    .line 157
    :cond_6
    if-lez v2, :cond_7

    if-nez v3, :cond_7

    .line 158
    sget-object v6, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    iput-object v6, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv6:Lio/netty/handler/ipfilter/IpFilterRuleType;

    goto :goto_3

    .line 160
    :cond_7
    iput-object v6, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv6:Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 163
    :goto_3
    invoke-static {v4}, Lio/netty/handler/ipfilter/IpSubnetFilter;->sortAndFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipv4Rules:Ljava/util/List;

    .line 164
    invoke-static {v5}, Lio/netty/handler/ipfilter/IpSubnetFilter;->sortAndFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipv6Rules:Ljava/util/List;

    .line 165
    return-void
.end method

.method public varargs constructor <init>(Z[Lio/netty/handler/ipfilter/IpSubnetFilterRule;)V
    .locals 1
    .param p1, "acceptIfNotFound"    # Z
    .param p2, "rules"    # [Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    .line 81
    const-string v0, "rules"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ipfilter/IpSubnetFilter;-><init>(ZLjava/util/List;)V

    .line 82
    return-void
.end method

.method public varargs constructor <init>([Lio/netty/handler/ipfilter/IpSubnetFilterRule;)V
    .locals 2
    .param p1, "rules"    # [Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    .line 70
    const-string v0, "rules"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lio/netty/handler/ipfilter/IpSubnetFilter;-><init>(ZLjava/util/List;)V

    .line 71
    return-void
.end method

.method private static sortAndFilter(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/netty/handler/ipfilter/IpSubnetFilterRule;",
            ">;)",
            "Ljava/util/List<",
            "Lio/netty/handler/ipfilter/IpSubnetFilterRule;",
            ">;"
        }
    .end annotation

    .line 201
    .local p0, "rules":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ipfilter/IpSubnetFilterRule;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/ipfilter/IpSubnetFilterRule;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "toKeep":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ipfilter/IpSubnetFilterRule;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 206
    .local v2, "parentRule":Lio/netty/handler/ipfilter/IpSubnetFilterRule;
    :goto_0
    if-eqz v2, :cond_1

    .line 207
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    .line 217
    .local v3, "childRule":Lio/netty/handler/ipfilter/IpSubnetFilterRule;
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->matches(Ljava/net/InetSocketAddress;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    move-object v2, v3

    .line 222
    .end local v3    # "childRule":Lio/netty/handler/ipfilter/IpSubnetFilterRule;
    :cond_2
    goto :goto_1

    .line 224
    :cond_3
    return-object v1
.end method


# virtual methods
.method protected accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/InetSocketAddress;

    .line 169
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipv4Rules:Ljava/util/List;

    sget-object v3, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;->INSTANCE:Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;

    invoke-static {v0, p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 171
    .local v0, "indexOf":I
    if-ltz v0, :cond_3

    .line 172
    iget-object v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv4:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-nez v3, :cond_1

    .line 173
    iget-object v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipv4Rules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    invoke-virtual {v3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object v3

    sget-object v4, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 175
    :cond_1
    iget-object v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv4:Lio/netty/handler/ipfilter/IpFilterRuleType;

    sget-object v4, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 178
    .end local v0    # "indexOf":I
    :cond_3
    goto :goto_4

    .line 179
    :cond_4
    iget-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipv6Rules:Ljava/util/List;

    sget-object v3, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;->INSTANCE:Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;

    invoke-static {v0, p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 180
    .restart local v0    # "indexOf":I
    if-ltz v0, :cond_8

    .line 181
    iget-object v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv6:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-nez v3, :cond_6

    .line 182
    iget-object v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipv6Rules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    invoke-virtual {v3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object v3

    sget-object v4, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    .line 184
    :cond_6
    iget-object v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->ipFilterRuleTypeIPv6:Lio/netty/handler/ipfilter/IpFilterRuleType;

    sget-object v4, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne v3, v4, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1

    .line 189
    .end local v0    # "indexOf":I
    :cond_8
    :goto_4
    iget-boolean v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilter;->acceptIfNotFound:Z

    return v0
.end method

.method protected bridge synthetic accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ipfilter/IpSubnetFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z

    move-result p1

    return p1
.end method
