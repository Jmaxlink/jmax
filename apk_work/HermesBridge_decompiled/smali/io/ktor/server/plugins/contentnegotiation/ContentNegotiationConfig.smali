.class public final Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;
.super Ljava/lang/Object;
.source "ContentNegotiationConfig.kt"

# interfaces
.implements Lio/ktor/serialization/Configuration;


# annotations
.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JN\u0010\u001e\u001a\u00020\u001f2F\u0010 \u001aB\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0005j\u0002`\rJ\u0006\u0010!\u001a\u00020\u001fJ\u0011\u0010\"\u001a\u00020\u001f\"\u0006\u0008\u0000\u0010#\u0018\u0001H\u0086\u0008J\u0012\u0010\"\u001a\u00020\u001f2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\u0018J@\u0010%\u001a\u00020\u001f\"\u0008\u0008\u0000\u0010#*\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u0002H#2\u0017\u0010*\u001a\u0013\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u00020\u001f0+\u00a2\u0006\u0002\u0008,H\u0016\u00a2\u0006\u0002\u0010-J\u0011\u0010.\u001a\u00020\u001f\"\u0006\u0008\u0000\u0010#\u0018\u0001H\u0086\u0008J\u0012\u0010.\u001a\u00020\u001f2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\u0018RZ\u0010\u0003\u001aH\u0012D\u0012B\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0005j\u0002`\r0\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00180\u0017X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000f\u00a8\u0006/"
    }
    d2 = {
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        "Lio/ktor/serialization/Configuration;",
        "()V",
        "acceptContributors",
        "",
        "Lkotlin/Function2;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/ParameterName;",
        "name",
        "call",
        "",
        "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
        "acceptedContentTypes",
        "Lio/ktor/server/plugins/contentnegotiation/AcceptHeaderContributor;",
        "getAcceptContributors$ktor_server_content_negotiation",
        "()Ljava/util/List;",
        "checkAcceptHeaderCompliance",
        "",
        "getCheckAcceptHeaderCompliance",
        "()Z",
        "setCheckAcceptHeaderCompliance",
        "(Z)V",
        "ignoredTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "getIgnoredTypes$ktor_server_content_negotiation",
        "()Ljava/util/Set;",
        "registrations",
        "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
        "getRegistrations$ktor_server_content_negotiation",
        "accept",
        "",
        "contributor",
        "clearIgnoredTypes",
        "ignoreType",
        "T",
        "type",
        "register",
        "Lio/ktor/serialization/ContentConverter;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "converter",
        "configuration",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lkotlin/jvm/functions/Function1;)V",
        "removeIgnoredType",
        "ktor-server-content-negotiation"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final acceptContributors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private checkAcceptHeaderCompliance:Z

.field private final ignoredTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->registrations:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->acceptContributors:Ljava/util/List;

    .line 32
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfigKt;->getDefaultCommonIgnoredTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/DefaultIgnoredTypesJvmKt;->getDefaultIgnoredTypes()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->ignoredTypes:Ljava/util/Set;

    .line 28
    return-void
.end method


# virtual methods
.method public final accept(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "contributor"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;+",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "contributor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->acceptContributors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public final clearIgnoredTypes()V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    return-void
.end method

.method public final getAcceptContributors$ktor_server_content_negotiation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;>;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->acceptContributors:Ljava/util/List;

    return-object v0
.end method

.method public final getCheckAcceptHeaderCompliance()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->checkAcceptHeaderCompliance:Z

    return v0
.end method

.method public final getIgnoredTypes$ktor_server_content_negotiation()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->ignoredTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getRegistrations$ktor_server_content_negotiation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->registrations:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic ignoreType()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    .local v0, "$i$f$ignoreType":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->ignoreType(Lkotlin/reflect/KClass;)V

    .line 74
    return-void
.end method

.method public final ignoreType(Lkotlin/reflect/KClass;)V
    .locals 1
    .param p1, "type"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public register(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "converter"    # Lio/ktor/serialization/ContentConverter;
    .param p3, "configuration"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/ktor/serialization/ContentConverter;",
            ">(",
            "Lio/ktor/http/ContentType;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;-><init>(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;)V

    .line 48
    .local v0, "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    iget-object v1, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->registrations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public final synthetic removeIgnoredType()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    .local v0, "$i$f$removeIgnoredType":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->removeIgnoredType(Lkotlin/reflect/KClass;)V

    .line 81
    return-void
.end method

.method public final removeIgnoredType(Lkotlin/reflect/KClass;)V
    .locals 1
    .param p1, "type"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public final setCheckAcceptHeaderCompliance(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 37
    iput-boolean p1, p0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->checkAcceptHeaderCompliance:Z

    return-void
.end method
