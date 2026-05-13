.class public final Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;
.super Ljava/lang/Object;
.source "FingerprintTrustManagerFactoryBuilder.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final fingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;->fingerprints:Ljava/util/List;

    .line 47
    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;->algorithm:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public build()Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;
    .locals 3

    .line 81
    iget-object v0, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;->fingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    iget-object v1, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;->algorithm:Ljava/lang/String;

    iget-object v2, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;->fingerprints:Ljava/util/List;

    .line 85
    invoke-static {v2}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->toFingerprintArray(Ljava/lang/Iterable;)[[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;-><init>(Ljava/lang/String;[[B)V

    .line 84
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fingerprints provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fingerprints(Ljava/lang/Iterable;)Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;"
        }
    .end annotation

    .line 67
    .local p1, "fingerprints":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    const-string v0, "fingerprints"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 69
    .local v1, "fingerprint":Ljava/lang/CharSequence;
    const-string v2, "fingerprint"

    invoke-static {v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v2, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;->fingerprints:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v1    # "fingerprint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 72
    :cond_0
    return-object p0
.end method

.method public varargs fingerprints([Ljava/lang/CharSequence;)Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;
    .locals 1
    .param p1, "fingerprints"    # [Ljava/lang/CharSequence;

    .line 57
    const-string v0, "fingerprints"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;->fingerprints(Ljava/lang/Iterable;)Lio/netty/handler/ssl/util/FingerprintTrustManagerFactoryBuilder;

    move-result-object v0

    return-object v0
.end method
