.class public final Lio/ktor/server/request/ApplicationRequestKt;
.super Ljava/lang/Object;
.source "ApplicationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationRequest.kt\nio/ktor/server/request/ApplicationRequestKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2:75\n1549#2:76\n1620#2,3:77\n1856#2:80\n*S KotlinDebug\n*F\n+ 1 ApplicationRequest.kt\nio/ktor/server/request/ApplicationRequestKt\n*L\n68#1:75\n69#1:76\n69#1:77,3\n68#1:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "encodeParameters",
        "Lio/ktor/http/Parameters;",
        "Lio/ktor/server/request/ApplicationRequest;",
        "parameters",
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
.method public static final encodeParameters(Lio/ktor/server/request/ApplicationRequest;Lio/ktor/http/Parameters;)Lio/ktor/http/Parameters;
    .locals 28
    .param p0, "$this$encodeParameters"    # Lio/ktor/server/request/ApplicationRequest;
    .param p1, "parameters"    # Lio/ktor/http/Parameters;

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v1

    move-object v3, v1

    .local v3, "$this$encodeParameters_u24lambda_u242":Lio/ktor/http/ParametersBuilder;
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-apply-ApplicationRequestKt$encodeParameters$1":I
    invoke-interface/range {p0 .. p0}, Lio/ktor/server/request/ApplicationRequest;->getRawQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/http/Parameters;->names()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 75
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    .local v15, "key":Ljava/lang/String;
    const/16 v17, 0x0

    .line 69
    .local v17, "$i$a$-forEach-ApplicationRequestKt$encodeParameters$1$1":I
    invoke-interface {v0, v15}, Lio/ktor/http/Parameters;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 76
    .local v11, "$i$f$map":I
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v10

    .local v13, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 77
    .local v14, "$i$f$mapTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 78
    .local v18, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v26, v18

    check-cast v26, Ljava/lang/String;

    .local v26, "it":Ljava/lang/String;
    const/16 v27, 0x0

    .line 69
    .local v27, "$i$a$-map-ApplicationRequestKt$encodeParameters$1$1$values$1":I
    const/16 v24, 0xb

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v19, v26

    invoke-static/range {v19 .. v25}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .end local v26    # "it":Ljava/lang/String;
    .end local v27    # "$i$a$-map-ApplicationRequestKt$encodeParameters$1$1$values$1":I
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_1

    .line 79
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapTo":I
    move-object v4, v12

    check-cast v4, Ljava/util/List;

    .line 76
    nop

    .end local v10    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$map":I
    goto :goto_2

    .line 69
    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 70
    .local v4, "values":Ljava/util/List;
    :cond_2
    const/16 v16, 0xf

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v15

    move-object/from16 v19, v15

    .end local v15    # "key":Ljava/lang/String;
    .local v19, "key":Ljava/lang/String;
    move/from16 v15, v16

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v3, v10, v11}, Lio/ktor/http/ParametersBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 71
    nop

    .line 75
    .end local v4    # "values":Ljava/util/List;
    .end local v17    # "$i$a$-forEach-ApplicationRequestKt$encodeParameters$1$1":I
    .end local v19    # "key":Ljava/lang/String;
    const/4 v4, 0x0

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 80
    :cond_3
    nop

    .line 72
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 67
    .end local v3    # "$this$encodeParameters_u24lambda_u242":Lio/ktor/http/ParametersBuilder;
    .end local v5    # "$i$a$-apply-ApplicationRequestKt$encodeParameters$1":I
    nop

    .line 72
    invoke-interface {v1}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v1

    .line 67
    return-object v1
.end method
