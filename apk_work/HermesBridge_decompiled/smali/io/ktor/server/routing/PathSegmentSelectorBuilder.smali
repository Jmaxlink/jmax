.class public final Lio/ktor/server/routing/PathSegmentSelectorBuilder;
.super Ljava/lang/Object;
.source "RoutingBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/ktor/server/routing/PathSegmentSelectorBuilder;",
        "",
        "()V",
        "parseConstant",
        "Lio/ktor/server/routing/RouteSelector;",
        "value",
        "",
        "hasTrailingSlash",
        "",
        "parseName",
        "parseParameter",
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
.field public static final INSTANCE:Lio/ktor/server/routing/PathSegmentSelectorBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/routing/PathSegmentSelectorBuilder;

    invoke-direct {v0}, Lio/ktor/server/routing/PathSegmentSelectorBuilder;-><init>()V

    sput-object v0, Lio/ktor/server/routing/PathSegmentSelectorBuilder;->INSTANCE:Lio/ktor/server/routing/PathSegmentSelectorBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseConstant(Ljava/lang/String;)Lio/ktor/server/routing/RouteSelector;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    nop

    .line 378
    const-string v0, "*"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;->INSTANCE:Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;

    check-cast v0, Lio/ktor/server/routing/RouteSelector;

    goto :goto_0

    .line 379
    :cond_0
    new-instance v0, Lio/ktor/server/routing/PathSegmentConstantRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/PathSegmentConstantRouteSelector;-><init>(Ljava/lang/String;)V

    check-cast v0, Lio/ktor/server/routing/RouteSelector;

    .line 380
    :goto_0
    return-object v0
.end method

.method public final parseConstant(Ljava/lang/String;Z)Lio/ktor/server/routing/RouteSelector;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "hasTrailingSlash"    # Z
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "hasTrailingSlash is not used anymore. This is going to be removed"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "parseConstant(value)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, p1}, Lio/ktor/server/routing/PathSegmentSelectorBuilder;->parseConstant(Ljava/lang/String;)Lio/ktor/server/routing/RouteSelector;

    move-result-object v0

    return-object v0
.end method

.method public final parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    const/16 v0, 0x7b

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->substringBefore(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "prefix":Ljava/lang/String;
    const/16 v2, 0x7d

    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .local v2, "signature":Ljava/lang/String;
    nop

    .line 401
    const-string v4, "?"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 402
    :cond_0
    const-string v3, "..."

    invoke-static {v2, v3, v5, v6, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 403
    :cond_1
    move-object v3, v2

    .line 400
    :goto_0
    return-object v3
.end method

.method public final parseParameter(Ljava/lang/String;)Lio/ktor/server/routing/RouteSelector;
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x7b

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 344
    .local v0, "prefixIndex":I
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x7d

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 346
    .local v1, "suffixIndex":I
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .local v5, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v1, v6, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "this as java.lang.String).substring(startIndex)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .local v6, "suffix":Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v8

    .line 350
    .local v2, "signature":Ljava/lang/String;
    nop

    .line 351
    const-string v8, "?"

    const/4 v9, 0x2

    invoke-static {v2, v8, v4, v9, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v3, Lio/ktor/server/routing/PathSegmentOptionalParameterRouteSelector;

    invoke-static {v2, v7}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v6}, Lio/ktor/server/routing/PathSegmentOptionalParameterRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lio/ktor/server/routing/RouteSelector;

    goto :goto_4

    .line 352
    :cond_2
    const-string v8, "..."

    invoke-static {v2, v8, v4, v9, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 353
    if-eqz v6, :cond_5

    move-object v3, v6

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    move v4, v7

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    .line 354
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Suffix after tailcard is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    :cond_5
    :goto_2
    new-instance v3, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_6

    const-string v7, ""

    goto :goto_3

    :cond_6
    move-object v7, v5

    :goto_3
    invoke-direct {v3, v4, v7}, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lio/ktor/server/routing/RouteSelector;

    goto :goto_4

    .line 359
    :cond_7
    new-instance v3, Lio/ktor/server/routing/PathSegmentParameterRouteSelector;

    invoke-direct {v3, v2, v5, v6}, Lio/ktor/server/routing/PathSegmentParameterRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lio/ktor/server/routing/RouteSelector;

    .line 350
    :goto_4
    return-object v3
.end method

.method public final parseParameter(Ljava/lang/String;Z)Lio/ktor/server/routing/RouteSelector;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "hasTrailingSlash"    # Z
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "hasTrailingSlash is not used anymore. This is going to be removed"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "parseParameter(value)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, p1}, Lio/ktor/server/routing/PathSegmentSelectorBuilder;->parseParameter(Ljava/lang/String;)Lio/ktor/server/routing/RouteSelector;

    move-result-object v0

    return-object v0
.end method
