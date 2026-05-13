.class public final Lio/ktor/server/routing/HostRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "HostsRoutingBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/routing/HostRouteSelector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHostsRoutingBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HostsRoutingBuilder.kt\nio/ktor/server/routing/HostRouteSelector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,148:1\n1747#2,3:149\n24#3:152\n*S KotlinDebug\n*F\n+ 1 HostsRoutingBuilder.kt\nio/ktor/server/routing/HostRouteSelector\n*L\n115#1:149,3\n126#1:152\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB/\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0002\u0010\tJ\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\u00c6\u0003J\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003H\u00c6\u0003J9\u0010\u0011\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\t\u0010\u001b\u001a\u00020\u0008H\u00d6\u0001J\u0008\u0010\u001c\u001a\u00020\u0004H\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/ktor/server/routing/HostRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "hostList",
        "",
        "",
        "hostPatterns",
        "Lkotlin/text/Regex;",
        "portsList",
        "",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getHostList",
        "()Ljava/util/List;",
        "getHostPatterns",
        "getPortsList",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "evaluate",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "context",
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "segmentIndex",
        "hashCode",
        "toString",
        "Companion",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/ktor/server/routing/HostRouteSelector$Companion;

.field public static final HostNameParameter:Ljava/lang/String; = "$RequestHost"

.field public static final PortParameter:Ljava/lang/String; = "$RequestPort"


# instance fields
.field private final hostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hostPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/text/Regex;",
            ">;"
        }
    .end annotation
.end field

.field private final portsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/routing/HostRouteSelector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/routing/HostRouteSelector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/routing/HostRouteSelector;->Companion:Lio/ktor/server/routing/HostRouteSelector$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "hostList"    # Ljava/util/List;
    .param p2, "hostPatterns"    # Ljava/util/List;
    .param p3, "portsList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/text/Regex;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hostList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostPatterns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "portsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    .line 101
    iput-object p1, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    .line 102
    iput-object p2, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    .line 103
    iput-object p3, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    .line 105
    nop

    .line 106
    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 107
    nop

    .line 100
    return-void

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/HostRouteSelector;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lio/ktor/server/routing/HostRouteSelector;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/routing/HostRouteSelector;->copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lio/ktor/server/routing/HostRouteSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/text/Regex;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lio/ktor/server/routing/HostRouteSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/text/Regex;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/ktor/server/routing/HostRouteSelector;"
        }
    .end annotation

    const-string v0, "hostList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostPatterns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "portsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/HostRouteSelector;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/server/routing/HostRouteSelector;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/HostRouteSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/HostRouteSelector;

    iget-object v3, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    iget-object v4, v1, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    iget-object v4, v1, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    iget-object v1, v1, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 18
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RoutingResolveContext;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/server/plugins/OriginConnectionPointKt;->getOrigin(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/RequestConnectionPoint;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/http/RequestConnectionPoint;->getServerHost()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "requestHost":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RoutingResolveContext;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/server/plugins/OriginConnectionPointKt;->getOrigin(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/RequestConnectionPoint;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/http/RequestConnectionPoint;->getServerPort()I

    move-result v3

    .line 113
    .local v3, "requestPort":I
    iget-object v4, v0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    if-nez v4, :cond_0

    iget-object v4, v0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 114
    :cond_0
    iget-object v4, v0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 115
    .local v4, "matches1":Z
    if-nez v4, :cond_4

    iget-object v7, v0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 149
    .local v8, "$i$f$any":I
    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_1

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v6

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/text/Regex;

    .local v11, "it":Lkotlin/text/Regex;
    const/4 v12, 0x0

    .line 115
    .local v12, "$i$a$-any-HostRouteSelector$evaluate$matches2$1":I
    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 150
    .end local v11    # "it":Lkotlin/text/Regex;
    .end local v12    # "$i$a$-any-HostRouteSelector$evaluate$matches2$1":I
    if-eqz v11, :cond_2

    move v7, v5

    goto :goto_0

    .line 151
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v7, v6

    .end local v7    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$any":I
    goto :goto_0

    .line 115
    :cond_4
    move v7, v6

    :goto_0
    nop

    .line 117
    .local v7, "matches2":Z
    if-nez v4, :cond_5

    if-nez v7, :cond_5

    .line 118
    sget-object v5, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v5}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailed()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v5

    check-cast v5, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v5

    .line 122
    .end local v4    # "matches1":Z
    .end local v7    # "matches2":Z
    :cond_5
    iget-object v4, v0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 123
    iget-object v4, v0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailed()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v4

    check-cast v4, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v4

    .line 126
    :cond_6
    sget-object v4, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    .local v4, "this_$iv":Lio/ktor/http/Parameters$Companion;
    const/4 v7, 0x0

    .line 152
    .local v7, "$i$f$build":I
    const/4 v8, 0x0

    invoke-static {v6, v5, v8}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v5

    move-object v6, v5

    .local v6, "$this$evaluate_u24lambda_u241":Lio/ktor/http/ParametersBuilder;
    const/4 v8, 0x0

    .line 127
    .local v8, "$i$a$-build-HostRouteSelector$evaluate$params$1":I
    const-string v9, "$RequestHost"

    invoke-interface {v6, v9, v1}, Lio/ktor/http/ParametersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v9, "$RequestPort"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lio/ktor/http/ParametersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    nop

    .line 152
    .end local v6    # "$this$evaluate_u24lambda_u241":Lio/ktor/http/ParametersBuilder;
    .end local v8    # "$i$a$-build-HostRouteSelector$evaluate$params$1":I
    invoke-interface {v5}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v14

    .line 126
    .end local v4    # "this_$iv":Lio/ktor/http/Parameters$Companion;
    .end local v7    # "$i$f$build":I
    nop

    .line 131
    .local v14, "params":Lio/ktor/http/Parameters;
    new-instance v4, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v15, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v4
.end method

.method public final getHostList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    return-object v0
.end method

.method public final getHostPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/text/Regex;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    return-object v0
.end method

.method public final getPortsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/HostRouteSelector;->hostList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/ktor/server/routing/HostRouteSelector;->hostPatterns:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/HostRouteSelector;->portsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
