.class public final Lio/ktor/server/routing/RegexRoutingKt;
.super Ljava/lang/Object;
.source "RegexRouting.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001aW\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u000329\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001aW\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u000329\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001aW\u0010\u0010\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u000329\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001aW\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u000329\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001aW\u0010\u0012\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u000329\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001ah\u0010\u0012\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\u000c*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00032;\u0008\u0004\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u0002H\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u000e\u001aW\u0010\u0015\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u000329\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001ah\u0010\u0015\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\u000c*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00032;\u0008\u0004\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u0002H\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u000e\u001aW\u0010\u0017\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u000329\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001ah\u0010\u0017\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\u000c*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00032;\u0008\u0004\u0010\u0006\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u0002H\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0007\u00a2\u0006\u0002\u0008\rH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u000e\u001a5\u0010\u0019\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0017\u0010\u001c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u001d\u00a2\u0006\u0002\u0008\rH\u0007\u001a-\u0010\u0019\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00032\u0017\u0010\u001c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u001d\u00a2\u0006\u0002\u0008\rH\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "createRouteFromRegexPath",
        "Lio/ktor/server/routing/Route;",
        "regex",
        "Lkotlin/text/Regex;",
        "delete",
        "path",
        "body",
        "Lkotlin/Function3;",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;",
        "get",
        "head",
        "options",
        "patch",
        "R",
        "patchTypedPath",
        "post",
        "postTypedPath",
        "put",
        "putTypedPath",
        "route",
        "method",
        "Lio/ktor/http/HttpMethod;",
        "build",
        "Lkotlin/Function1;",
        "ktor-server-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final createRouteFromRegexPath(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;)Lio/ktor/server/routing/Route;
    .locals 1
    .param p0, "$this$createRouteFromRegexPath"    # Lio/ktor/server/routing/Route;
    .param p1, "regex"    # Lkotlin/text/Regex;

    .line 235
    new-instance v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;-><init>(Lkotlin/text/Regex;)V

    check-cast v0, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v0}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final delete(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$delete"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getDelete()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$delete$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RegexRoutingKt$delete$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RegexRoutingKt;->route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$get"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$get$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RegexRoutingKt$get$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RegexRoutingKt;->route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final head(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$head"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getHead()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$head$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RegexRoutingKt$head$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RegexRoutingKt;->route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final options(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$options"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getOptions()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$options$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RegexRoutingKt$options$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RegexRoutingKt;->route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final patch(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$patch"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPatch()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$patch$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RegexRoutingKt$patch$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RegexRoutingKt;->route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic patchTypedPath(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$patch"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 196
    .local v0, "$i$f$patchTypedPath":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$patch$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/ktor/server/routing/RegexRoutingKt$patch$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v1}, Lio/ktor/server/routing/RegexRoutingKt;->patch(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 198
    return-object v1
.end method

.method public static final post(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$post"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPost()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$post$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RegexRoutingKt$post$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RegexRoutingKt;->route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic postTypedPath(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$post"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    .local v0, "$i$f$postTypedPath":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$post$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/ktor/server/routing/RegexRoutingKt$post$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v1}, Lio/ktor/server/routing/RegexRoutingKt;->post(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 105
    return-object v1
.end method

.method public static final put(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$put"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPut()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$put$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RegexRoutingKt$put$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RegexRoutingKt;->route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic putTypedPath(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$put"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 158
    .local v0, "$i$f$putTypedPath":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RegexRoutingKt$put$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/ktor/server/routing/RegexRoutingKt$put$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v1}, Lio/ktor/server/routing/RegexRoutingKt;->put(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 160
    return-object v1
.end method

.method public static final route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$route"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "method"    # Lio/ktor/http/HttpMethod;
    .param p3, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lio/ktor/http/HttpMethod;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lio/ktor/server/routing/HttpMethodRouteSelector;

    invoke-direct {v0, p2}, Lio/ktor/server/routing/HttpMethodRouteSelector;-><init>(Lio/ktor/http/HttpMethod;)V

    .line 49
    .local v0, "selector":Lio/ktor/server/routing/HttpMethodRouteSelector;
    invoke-static {p0, p1}, Lio/ktor/server/routing/RegexRoutingKt;->createRouteFromRegexPath(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;)Lio/ktor/server/routing/Route;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v1, v2}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final route(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 1
    .param p0, "$this$route"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Lkotlin/text/Regex;
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1}, Lio/ktor/server/routing/RegexRoutingKt;->createRouteFromRegexPath(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;)Lio/ktor/server/routing/Route;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
