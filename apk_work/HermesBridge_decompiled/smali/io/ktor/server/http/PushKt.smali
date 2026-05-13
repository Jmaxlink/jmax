.class public final Lio/ktor/server/http/PushKt;
.super Ljava/lang/Object;
.source "Push.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPush.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Push.kt\nio/ktor/server/http/PushKt\n+ 2 Text.kt\nio/ktor/util/TextKt\n*L\n1#1,47:1\n38#2,4:48\n*S KotlinDebug\n*F\n+ 1 Push.kt\nio/ktor/server/http/PushKt\n*L\n19#1:48,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004\u00a2\u0006\u0002\u0008\u0006H\u0007\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "push",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "block",
        "Lkotlin/Function1;",
        "Lio/ktor/server/response/ResponsePushBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "pathAndQuery",
        "",
        "encodedPath",
        "encodedParameters",
        "Lio/ktor/http/Parameters;",
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
.method public static final push(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;)V
    .locals 9
    .param p0, "$this$push"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "pathAndQuery"    # Ljava/lang/String;
    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathAndQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "?"

    .local v0, "separator$iv":Ljava/lang/String;
    move-object v7, p1

    .local v7, "$this$chomp$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 48
    .local v8, "$i$f$chomp":I
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 49
    .local v1, "idx$iv":I
    nop

    .line 50
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    .line 19
    .local v2, "$i$a$-chomp-PushKt$push$1":I
    const-string v3, ""

    invoke-static {p1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 50
    .end local v2    # "$i$a$-chomp-PushKt$push$1":I
    goto :goto_0

    .line 51
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 49
    :goto_0
    nop

    .line 19
    .end local v0    # "separator$iv":Ljava/lang/String;
    .end local v1    # "idx$iv":I
    .end local v7    # "$this$chomp$iv":Ljava/lang/String;
    .end local v8    # "$i$f$chomp":I
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    .local v1, "query":Ljava/lang/String;
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lio/ktor/http/QueryKt;->parseQueryString$default(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/Parameters;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lio/ktor/server/http/PushKt;->push(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lio/ktor/http/Parameters;)V

    .line 21
    return-void
.end method

.method public static final push(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lio/ktor/http/Parameters;)V
    .locals 1
    .param p0, "$this$push"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "encodedPath"    # Ljava/lang/String;
    .param p2, "encodedParameters"    # Lio/ktor/http/Parameters;
    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lio/ktor/server/http/PushKt$push$2;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/http/PushKt$push$2;-><init>(Ljava/lang/String;Lio/ktor/http/Parameters;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lio/ktor/server/http/PushKt;->push(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function1;)V

    .line 35
    return-void
.end method

.method public static final push(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0, "$this$push"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/response/ResponsePushBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v0

    new-instance v1, Lio/ktor/server/response/DefaultResponsePushBuilder;

    invoke-direct {v1, p0}, Lio/ktor/server/response/DefaultResponsePushBuilder;-><init>(Lio/ktor/server/application/ApplicationCall;)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lio/ktor/server/response/ResponsePushBuilder;

    invoke-interface {v0, v1}, Lio/ktor/server/response/ApplicationResponse;->push(Lio/ktor/server/response/ResponsePushBuilder;)V

    .line 46
    return-void
.end method
