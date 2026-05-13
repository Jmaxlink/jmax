.class final Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;
.super Ljava/lang/Object;
.source "Bootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/Bootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExternalAddressResolver"
.end annotation


# instance fields
.field final resolverGroup:Lio/netty/resolver/AddressResolverGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/AddressResolverGroup<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/resolver/AddressResolverGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/AddressResolverGroup<",
            "*>;)V"
        }
    .end annotation

    .line 340
    .local p1, "resolverGroup":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;->resolverGroup:Lio/netty/resolver/AddressResolverGroup;

    .line 342
    return-void
.end method

.method static getOrDefault(Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;)Lio/netty/resolver/AddressResolverGroup;
    .locals 1
    .param p0, "externalResolver"    # Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;",
            ")",
            "Lio/netty/resolver/AddressResolverGroup<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 346
    if-nez p0, :cond_0

    .line 347
    sget-object v0, Lio/netty/resolver/DefaultAddressResolverGroup;->INSTANCE:Lio/netty/resolver/DefaultAddressResolverGroup;

    .line 348
    .local v0, "defaultResolverGroup":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<*>;"
    return-object v0

    .line 350
    .end local v0    # "defaultResolverGroup":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<*>;"
    :cond_0
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;->resolverGroup:Lio/netty/resolver/AddressResolverGroup;

    return-object v0
.end method
