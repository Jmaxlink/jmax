.class public final Lio/ktor/server/config/MapApplicationConfigKt;
.super Ljava/lang/Object;
.source "MapApplicationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapApplicationConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapApplicationConfig.kt\nio/ktor/server/config/MapApplicationConfigKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "combine",
        "",
        "root",
        "relative",
        "findListElements",
        "",
        "input",
        "listElements",
        "",
        "",
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
.method public static final synthetic access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "relative"    # Ljava/lang/String;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/server/config/MapApplicationConfigKt;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$findListElements(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "listElements"    # Ljava/util/Map;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/server/config/MapApplicationConfigKt;->findListElements(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "relative"    # Ljava/lang/String;

    .line 133
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static final findListElements(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "listElements"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    .local v0, "pointBegin":I
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 137
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 138
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x2e

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 149
    .local v1, "it":I
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-let-MapApplicationConfigKt$findListElements$pointEnd$1":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v3

    .line 140
    .end local v2    # "$i$a$-let-MapApplicationConfigKt$findListElements$pointEnd$1":I
    .local v1, "pointEnd":I
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "pos":I
    const/4 v4, 0x0

    .line 141
    .local v4, "$i$a$-let-MapApplicationConfigKt$findListElements$1":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    .line 142
    .local v3, "element":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    .line 143
    .local v5, "newSize":I
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 149
    .local v6, "it":I
    const/4 v7, 0x0

    .line 143
    .local v7, "$i$a$-let-MapApplicationConfigKt$findListElements$1$1":I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-MapApplicationConfigKt$findListElements$1$1":I
    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    nop

    .line 140
    .end local v2    # "pos":I
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "$i$a$-let-MapApplicationConfigKt$findListElements$1":I
    .end local v5    # "newSize":I
    nop

    .line 145
    :cond_2
    move v0, v1

    .end local v1    # "pointEnd":I
    goto :goto_0

    .line 147
    :cond_3
    return-void
.end method
