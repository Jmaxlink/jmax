.class public Lio/netty/util/DomainWildcardMappingBuilder;
.super Ljava/lang/Object;
.source "DomainWildcardMappingBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DomainWildcardMappingBuilder$ImmutableDomainWildcardMapping;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/netty/util/DomainWildcardMappingBuilder;, "Lio/netty/util/DomainWildcardMappingBuilder<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/DomainWildcardMappingBuilder;->defaultValue:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/DomainWildcardMappingBuilder;->map:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/netty/util/DomainWildcardMappingBuilder;, "Lio/netty/util/DomainWildcardMappingBuilder<TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lio/netty/util/DomainWildcardMappingBuilder;-><init>(ILjava/lang/Object;)V

    .line 41
    return-void
.end method

.method private normalizeHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 79
    .local p0, "this":Lio/netty/util/DomainWildcardMappingBuilder;, "Lio/netty/util/DomainWildcardMappingBuilder<TV;>;"
    const-string v0, "hostname"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    .line 83
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/netty/util/DomainWildcardMappingBuilder$ImmutableDomainWildcardMapping;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wildcard Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    return-object p1

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/DomainWildcardMappingBuilder;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Lio/netty/util/DomainWildcardMappingBuilder<",
            "TV;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/netty/util/DomainWildcardMappingBuilder;, "Lio/netty/util/DomainWildcardMappingBuilder<TV;>;"
    .local p2, "output":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/util/DomainWildcardMappingBuilder;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/netty/util/DomainWildcardMappingBuilder;->normalizeHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "output"

    invoke-static {p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object p0
.end method

.method public build()Lio/netty/util/Mapping;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Mapping<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/netty/util/DomainWildcardMappingBuilder;, "Lio/netty/util/DomainWildcardMappingBuilder<TV;>;"
    new-instance v0, Lio/netty/util/DomainWildcardMappingBuilder$ImmutableDomainWildcardMapping;

    iget-object v1, p0, Lio/netty/util/DomainWildcardMappingBuilder;->defaultValue:Ljava/lang/Object;

    iget-object v2, p0, Lio/netty/util/DomainWildcardMappingBuilder;->map:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lio/netty/util/DomainWildcardMappingBuilder$ImmutableDomainWildcardMapping;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method
