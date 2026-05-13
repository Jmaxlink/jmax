.class public final Lio/ktor/server/routing/PathSegmentRegexRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RegexRouting.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/routing/PathSegmentRegexRouteSelector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegexRouting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegexRouting.kt\nio/ktor/server/routing/PathSegmentRegexRouteSelector\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,285:1\n24#2:286\n1295#3,2:287\n1099#4,3:289\n*S KotlinDebug\n*F\n+ 1 RegexRouting.kt\nio/ktor/server/routing/PathSegmentRegexRouteSelector\n*L\n259#1:286\n260#1:287,2\n275#1:289,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/server/routing/PathSegmentRegexRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "regex",
        "Lkotlin/text/Regex;",
        "(Lkotlin/text/Regex;)V",
        "countSegments",
        "",
        "result",
        "Lkotlin/text/MatchResult;",
        "lastSlashPosition",
        "prefix",
        "",
        "evaluate",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "context",
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "segmentIndex",
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
.field public static final Companion:Lio/ktor/server/routing/PathSegmentRegexRouteSelector$Companion;

.field private static final GROUP_NAME_MATCHER:Lkotlin/text/Regex;


# instance fields
.field private final regex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/routing/PathSegmentRegexRouteSelector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->Companion:Lio/ktor/server/routing/PathSegmentRegexRouteSelector$Companion;

    .line 282
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(^|[^\\\\])\\(\\?<(\\p{Alpha}\\p{Alnum}*)>(.*?[^\\\\])?\\)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->GROUP_NAME_MATCHER:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Lkotlin/text/Regex;)V
    .locals 1
    .param p1, "regex"    # Lkotlin/text/Regex;

    const-string v0, "regex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    iput-object p1, p0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->regex:Lkotlin/text/Regex;

    return-void
.end method

.method private final countSegments(Lkotlin/text/MatchResult;ILjava/lang/String;)I
    .locals 10
    .param p1, "result"    # Lkotlin/text/MatchResult;
    .param p2, "lastSlashPosition"    # I
    .param p3, "prefix"    # Ljava/lang/String;

    .line 274
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .local v0, "segments":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$count$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 289
    .local v3, "$i$f$count":I
    const/4 v4, 0x0

    .line 290
    .local v4, "count$iv":I
    move v5, v1

    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "element$iv":C
    move v7, v6

    .local v7, "it":C
    const/4 v8, 0x0

    .line 275
    .local v8, "$i$a$-count-PathSegmentRegexRouteSelector$countSegments$count$1":I
    const/16 v9, 0x2f

    if-ne v7, v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v1

    .line 290
    .end local v7    # "it":C
    .end local v8    # "$i$a$-count-PathSegmentRegexRouteSelector$countSegments$count$1":I
    :goto_1
    if-eqz v9, :cond_1

    add-int/lit8 v4, v4, 0x1

    .end local v6    # "element$iv":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 291
    :cond_2
    nop

    .line 275
    .end local v2    # "$this$count$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$count":I
    .end local v4    # "count$iv":I
    move v1, v4

    .line 276
    .local v1, "count":I
    const-string v2, "/"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v1, 0x1

    :goto_2
    return v2
.end method


# virtual methods
.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 23
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v2, v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->regex:Lkotlin/text/Regex;

    invoke-virtual {v2}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    const-string v8, ""

    const-string v9, "/"

    if-nez v2, :cond_1

    iget-object v2, v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->regex:Lkotlin/text/Regex;

    invoke-virtual {v2}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v2

    const-string v10, "\\/"

    invoke-static {v2, v10, v5, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v8

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v9

    .line 242
    .local v2, "prefix":Ljava/lang/String;
    :goto_1
    iget-object v10, v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->regex:Lkotlin/text/Regex;

    invoke-virtual {v10}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RoutingResolveContext;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v10

    invoke-static {v10}, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->getIgnoreTrailingSlash(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v9

    goto :goto_2

    :cond_2
    move-object v10, v8

    .line 243
    .local v10, "postfix":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RoutingResolveContext;->getSegments()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v11, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Iterable;

    move-object v13, v9

    check-cast v13, Ljava/lang/CharSequence;

    move-object v14, v2

    check-cast v14, Ljava/lang/CharSequence;

    move-object v15, v10

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v19, 0x38

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "pathSegments":Ljava/lang/String;
    iget-object v11, v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->regex:Lkotlin/text/Regex;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v5, v6, v7}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v11

    if-nez v11, :cond_3

    sget-object v4, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailed()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v4

    check-cast v4, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v4

    .line 246
    .local v11, "result":Lkotlin/text/MatchResult;
    :cond_3
    invoke-interface {v11}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    .local v12, "consumedLength":I
    const/4 v13, 0x0

    .line 247
    .local v13, "$i$a$-let-PathSegmentRegexRouteSelector$evaluate$segmentIncrement$1":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v12, :cond_4

    .line 248
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RoutingResolveContext;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    goto :goto_3

    .line 249
    :cond_4
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v4, :cond_5

    .line 250
    invoke-direct {v0, v11, v12, v2}, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->countSegments(Lkotlin/text/MatchResult;ILjava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 251
    :cond_5
    if-lt v12, v15, :cond_9

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v4, :cond_9

    .line 252
    add-int/lit8 v4, v12, -0x1

    invoke-direct {v0, v11, v4, v2}, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->countSegments(Lkotlin/text/MatchResult;ILjava/lang/String;)I

    move-result v4

    .line 247
    :goto_3
    nop

    .line 246
    .end local v12    # "consumedLength":I
    .end local v13    # "$i$a$-let-PathSegmentRegexRouteSelector$evaluate$segmentIncrement$1":I
    nop

    .line 258
    .local v4, "segmentIncrement":I
    invoke-interface {v11}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v12

    const-string v13, "null cannot be cast to non-null type kotlin.text.MatchNamedGroupCollection"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lkotlin/text/MatchNamedGroupCollection;

    .line 259
    .local v12, "groups":Lkotlin/text/MatchNamedGroupCollection;
    sget-object v13, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    .local v13, "this_$iv":Lio/ktor/http/Parameters$Companion;
    const/4 v14, 0x0

    .line 286
    .local v14, "$i$f$build":I
    invoke-static {v5, v15, v7}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v15

    move-object/from16 v16, v15

    .local v16, "$this$evaluate_u24lambda_u242":Lio/ktor/http/ParametersBuilder;
    const/16 v17, 0x0

    .line 260
    .local v17, "$i$a$-build-PathSegmentRegexRouteSelector$evaluate$parameters$1":I
    sget-object v5, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->GROUP_NAME_MATCHER:Lkotlin/text/Regex;

    iget-object v6, v0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->regex:Lkotlin/text/Regex;

    invoke-virtual {v6}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v5, v6, v0, v1, v7}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .local v0, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/text/MatchResult;

    .local v7, "matchResult":Lkotlin/text/MatchResult;
    const/16 v18, 0x0

    .line 261
    .local v18, "$i$a$-forEach-PathSegmentRegexRouteSelector$evaluate$parameters$1$1":I
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v20

    move-object/from16 v21, v0

    .end local v0    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .local v21, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    invoke-interface/range {v20 .. v20}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    move/from16 v20, v1

    const/4 v1, 0x2

    .end local v1    # "$i$f$forEach":I
    .local v20, "$i$f$forEach":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v12, v0}, Lkotlin/text/MatchNamedGroupCollection;->get(Ljava/lang/String;)Lkotlin/text/MatchGroup;

    move-result-object v19

    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_7

    :cond_6
    move-object/from16 v19, v8

    :cond_7
    move-object/from16 v22, v19

    .line 263
    .local v22, "value":Ljava/lang/String;
    move-object/from16 v1, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v22

    .end local v22    # "value":Ljava/lang/String;
    .local v1, "$this$evaluate_u24lambda_u242":Lio/ktor/http/ParametersBuilder;
    .local v2, "value":Ljava/lang/String;
    .local v16, "prefix":Ljava/lang/String;
    invoke-interface {v1, v0, v2}, Lio/ktor/http/ParametersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    nop

    .line 287
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v7    # "matchResult":Lkotlin/text/MatchResult;
    .end local v18    # "$i$a$-forEach-PathSegmentRegexRouteSelector$evaluate$parameters$1$1":I
    move-object/from16 v2, v16

    move-object/from16 v0, v21

    move-object/from16 v16, v1

    move/from16 v1, v20

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 288
    .end local v20    # "$i$f$forEach":I
    .end local v21    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .local v0, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .local v1, "$i$f$forEach":I
    .local v2, "prefix":Ljava/lang/String;
    .local v16, "$this$evaluate_u24lambda_u242":Lio/ktor/http/ParametersBuilder;
    :cond_8
    move-object/from16 v21, v0

    move/from16 v20, v1

    .line 265
    .end local v0    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$forEach":I
    nop

    .line 286
    .end local v16    # "$this$evaluate_u24lambda_u242":Lio/ktor/http/ParametersBuilder;
    .end local v17    # "$i$a$-build-PathSegmentRegexRouteSelector$evaluate$parameters$1":I
    invoke-interface {v15}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v0

    .line 259
    .end local v13    # "this_$iv":Lio/ktor/http/Parameters$Companion;
    .end local v14    # "$i$f$build":I
    nop

    .line 266
    .local v0, "parameters":Lio/ktor/http/Parameters;
    new-instance v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 266
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v5, v6, v0, v4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;I)V

    check-cast v1, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v1

    .line 251
    .end local v0    # "parameters":Lio/ktor/http/Parameters;
    .end local v4    # "segmentIncrement":I
    .local v12, "consumedLength":I
    .local v13, "$i$a$-let-PathSegmentRegexRouteSelector$evaluate$segmentIncrement$1":I
    :cond_9
    move-object/from16 v16, v2

    .line 254
    .end local v2    # "prefix":Ljava/lang/String;
    .local v16, "prefix":Ljava/lang/String;
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailed()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Regex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/PathSegmentRegexRouteSelector;->regex:Lkotlin/text/Regex;

    invoke-virtual {v1}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
