.class public final Lio/ktor/http/URLBuilderJvmKt;
.super Ljava/lang/Object;
.source "URLBuilderJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\u0002\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "origin",
        "",
        "Lio/ktor/http/URLBuilder$Companion;",
        "getOrigin",
        "(Lio/ktor/http/URLBuilder$Companion;)Ljava/lang/String;",
        "invoke",
        "Lio/ktor/http/Url;",
        "Lio/ktor/http/Url$Companion;",
        "fullUrl",
        "ktor-http"
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
.method public static final getOrigin(Lio/ktor/http/URLBuilder$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$origin"    # Lio/ktor/http/URLBuilder$Companion;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-string v0, "http://localhost"

    return-object v0
.end method

.method public static final invoke(Lio/ktor/http/Url$Companion;Ljava/lang/String;)Lio/ktor/http/Url;
    .locals 13
    .param p0, "$this$invoke"    # Lio/ktor/http/Url$Companion;
    .param p1, "fullUrl"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lio/ktor/http/URLBuilder;

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lio/ktor/http/URLBuilder;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v1, "$this$invoke_u24lambda_u240":Lio/ktor/http/URLBuilder;
    const/4 v2, 0x0

    .line 13
    .local v2, "$i$a$-apply-URLBuilderJvmKt$invoke$1":I
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lio/ktor/http/URLUtilsJvmKt;->takeFrom(Lio/ktor/http/URLBuilder;Ljava/net/URI;)Lio/ktor/http/URLBuilder;

    .line 14
    nop

    .line 12
    .end local v1    # "$this$invoke_u24lambda_u240":Lio/ktor/http/URLBuilder;
    .end local v2    # "$i$a$-apply-URLBuilderJvmKt$invoke$1":I
    nop

    .line 14
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v0

    return-object v0
.end method
