.class public final Lio/ktor/server/http/content/PreCompressedKt;
.super Ljava/lang/Object;
.source "PreCompressed.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreCompressed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreCompressed.kt\nio/ktor/server/http/content/PreCompressedKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,178:1\n1549#2:179\n1620#2,3:180\n766#2:183\n857#2,2:184\n288#2,2:186\n1549#2:188\n1620#2,3:189\n26#3,2:192\n29#3,2:197\n26#3,2:199\n29#3,2:204\n26#3,2:206\n29#3,2:211\n26#3,2:213\n29#3,2:218\n26#3,2:220\n29#3,2:225\n26#3,2:227\n29#3,2:232\n17#4,3:194\n17#4,3:201\n17#4,3:208\n17#4,3:215\n17#4,3:222\n17#4,3:229\n*S KotlinDebug\n*F\n+ 1 PreCompressed.kt\nio/ktor/server/http/content/PreCompressedKt\n*L\n62#1:179\n62#1:180,3\n66#1:183\n66#1:184,2\n67#1:186,2\n84#1:188\n84#1:189,3\n116#1:192,2\n116#1:197,2\n127#1:199,2\n127#1:204,2\n151#1:206,2\n151#1:211,2\n158#1:213,2\n158#1:218,2\n169#1:220,2\n169#1:225,2\n175#1:227,2\n175#1:232,2\n116#1:194,3\n127#1:201,3\n151#1:208,3\n158#1:215,3\n169#1:222,3\n175#1:229,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001aV\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00022\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015H\u0000\u001a0\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00022\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0000\u001a\u008b\u0001\u0010\u001a\u001a\u00020\u001b*\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00192\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170\u00152\u001a\u0008\u0002\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00020\u00152*\u0008\u0002\u0010\u001f\u001a$\u0008\u0001\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0!\u0012\u0006\u0012\u0004\u0018\u00010\"0 H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#\u001a\u00ab\u0001\u0010$\u001a\u00020\u001b*\u00020\r2\u0006\u0010%\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00152\u001a\u0008\u0002\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00020\u00152*\u0008\u0002\u0010&\u001a$\u0008\u0001\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0!\u0012\u0006\u0012\u0004\u0018\u00010\"0 2\u0014\u0008\u0002\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020(0\u0015H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)\" \u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\" \u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002*\u00020\u00078@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "compressedKey",
        "Lio/ktor/util/AttributeKey;",
        "",
        "Lio/ktor/server/http/content/CompressedFileType;",
        "getCompressedKey",
        "()Lio/ktor/util/AttributeKey;",
        "staticContentEncodedTypes",
        "Lio/ktor/server/routing/Route;",
        "getStaticContentEncodedTypes",
        "(Lio/ktor/server/routing/Route;)Ljava/util/List;",
        "bestCompressionFit",
        "Lio/ktor/server/http/content/CompressedResource;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "resource",
        "",
        "packageName",
        "acceptEncoding",
        "Lio/ktor/http/HeaderValue;",
        "compressedTypes",
        "contentType",
        "Lkotlin/Function1;",
        "Ljava/net/URL;",
        "Lio/ktor/http/ContentType;",
        "file",
        "Ljava/io/File;",
        "respondStaticFile",
        "",
        "requestedFile",
        "cacheControl",
        "Lio/ktor/http/CacheControl;",
        "modify",
        "Lkotlin/Function3;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondStaticResource",
        "requestedResource",
        "modifier",
        "exclude",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# static fields
.field private static final compressedKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Ljava/util/List<",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "StaticContentCompressed"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/http/content/PreCompressedKt;->compressedKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public static final bestCompressionFit(Ljava/io/File;Ljava/util/List;Ljava/util/List;)Lio/ktor/server/http/content/CompressedFileType;
    .locals 12
    .param p0, "file"    # Ljava/io/File;
    .param p1, "acceptEncoding"    # Ljava/util/List;
    .param p2, "compressedTypes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lio/ktor/http/HeaderValue;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;)",
            "Lio/ktor/server/http/content/CompressedFileType;"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptEncoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 179
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 180
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 181
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/ktor/http/HeaderValue;

    .local v7, "it":Lio/ktor/http/HeaderValue;
    const/4 v8, 0x0

    .line 62
    .local v8, "$i$a$-map-PreCompressedKt$bestCompressionFit$acceptedEncodings$1":I
    invoke-virtual {v7}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 181
    .end local v7    # "it":Lio/ktor/http/HeaderValue;
    .end local v8    # "$i$a$-map-PreCompressedKt$bestCompressionFit$acceptedEncodings$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 179
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 62
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 66
    .local v0, "acceptedEncodings":Ljava/util/Set;
    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 65
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 66
    nop

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 183
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 184
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lio/ktor/server/http/content/CompressedFileType;

    .local v9, "it":Lio/ktor/server/http/content/CompressedFileType;
    const/4 v10, 0x0

    .line 66
    .local v10, "$i$a$-filter-PreCompressedKt$bestCompressionFit$1":I
    invoke-virtual {v9}, Lio/ktor/server/http/content/CompressedFileType;->getEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 184
    .end local v9    # "it":Lio/ktor/server/http/content/CompressedFileType;
    .end local v10    # "$i$a$-filter-PreCompressedKt$bestCompressionFit$1":I
    if-eqz v9, :cond_1

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 183
    nop

    .line 66
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    nop

    .line 67
    nop

    .line 66
    check-cast v4, Ljava/lang/Iterable;

    .line 67
    move-object v2, v4

    .local v2, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 186
    .local v3, "$i$f$firstOrNull":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lio/ktor/server/http/content/CompressedFileType;

    .local v6, "it":Lio/ktor/server/http/content/CompressedFileType;
    const/4 v7, 0x0

    .line 67
    .local v7, "$i$a$-firstOrNull-PreCompressedKt$bestCompressionFit$2":I
    invoke-virtual {v6, p0}, Lio/ktor/server/http/content/CompressedFileType;->file(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v6

    .line 186
    .end local v6    # "it":Lio/ktor/server/http/content/CompressedFileType;
    .end local v7    # "$i$a$-firstOrNull-PreCompressedKt$bestCompressionFit$2":I
    if-eqz v6, :cond_3

    move-object v1, v5

    goto :goto_2

    .line 187
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v2    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v1, Lio/ktor/server/http/content/CompressedFileType;

    .line 65
    :cond_5
    return-object v1
.end method

.method public static final bestCompressionFit(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/http/content/CompressedResource;
    .locals 9
    .param p0, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "acceptEncoding"    # Ljava/util/List;
    .param p4, "compressedTypes"    # Ljava/util/List;
    .param p5, "contentType"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/ktor/http/HeaderValue;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Lio/ktor/http/ContentType;",
            ">;)",
            "Lio/ktor/server/http/content/CompressedResource;"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptEncoding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 188
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 189
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 190
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/ktor/http/HeaderValue;

    .local v7, "it":Lio/ktor/http/HeaderValue;
    const/4 v8, 0x0

    .line 84
    .local v8, "$i$a$-map-PreCompressedKt$bestCompressionFit$acceptedEncodings$2":I
    invoke-virtual {v7}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 190
    .end local v7    # "it":Lio/ktor/http/HeaderValue;
    .end local v8    # "$i$a$-map-PreCompressedKt$bestCompressionFit$acceptedEncodings$2":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 188
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 84
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 87
    .local v0, "acceptedEncodings":Ljava/util/Set;
    if-eqz p4, :cond_1

    .line 86
    move-object v1, p4

    check-cast v1, Ljava/lang/Iterable;

    .line 87
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    .line 87
    nop

    .line 88
    new-instance v2, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$3;

    invoke-direct {v2, v0}, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$3;-><init>(Ljava/util/Set;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    .line 88
    nop

    .line 89
    new-instance v2, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;

    invoke-direct {v2, p1, p0, p2, p5}, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;-><init>(Ljava/lang/String;Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_1

    .line 89
    nop

    .line 100
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/server/http/content/CompressedResource;

    goto :goto_1

    .line 87
    :cond_1
    const/4 v1, 0x0

    .line 86
    :goto_1
    return-object v1
.end method

.method public static final getCompressedKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Ljava/util/List<",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lio/ktor/server/http/content/PreCompressedKt;->compressedKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;
    .locals 2
    .param p0, "$this$staticContentEncodedTypes"    # Lio/ktor/server/routing/Route;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/http/content/PreCompressedKt;->compressedKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getParent()Lio/ktor/server/routing/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lio/ktor/http/ContentType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/io/File;",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;

    iget v2, v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;

    invoke-direct {v1, v0}, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 103
    iget v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "$i$f$respondWithType":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v2    # "$i$f$respondWithType":I
    :pswitch_1
    iget-object v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .local v3, "compressedFile":Ljava/io/File;
    iget-object v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lio/ktor/server/http/content/CompressedFileType;

    .local v5, "bestCompressionFit":Lio/ktor/server/http/content/CompressedFileType;
    iget-object v6, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .local v6, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v7, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    .local v7, "requestedFile":Ljava/io/File;
    iget-object v8, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/server/application/ApplicationCall;

    .local v8, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v3    # "compressedFile":Ljava/io/File;
    .end local v5    # "bestCompressionFit":Lio/ktor/server/http/content/CompressedFileType;
    .end local v6    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v7    # "requestedFile":Ljava/io/File;
    .end local v8    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :pswitch_2
    const/4 v2, 0x0

    .restart local v2    # "$i$f$respondWithType":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v2    # "$i$f$respondWithType":I
    :pswitch_3
    iget-object v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    .local v5, "requestedFile":Ljava/io/File;
    iget-object v6, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/server/application/ApplicationCall;

    .local v6, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v3    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v5    # "requestedFile":Ljava/io/File;
    .end local v6    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :pswitch_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p0

    .restart local v8    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    move-object/from16 v3, p2

    .local v3, "compressedTypes":Ljava/util/List;
    move-object/from16 v5, p4

    .local v5, "cacheControl":Lkotlin/jvm/functions/Function1;
    move-object/from16 v7, p1

    .restart local v7    # "requestedFile":Ljava/io/File;
    move-object/from16 v6, p3

    .local v6, "contentType":Lkotlin/jvm/functions/Function1;
    move-object/from16 v9, p5

    .line 110
    .local v9, "modify":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v10

    invoke-static {v10}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->acceptEncodingItems(Lio/ktor/server/request/ApplicationRequest;)Ljava/util/List;

    move-result-object v10

    invoke-static {v7, v10, v3}, Lio/ktor/server/http/content/PreCompressedKt;->bestCompressionFit(Ljava/io/File;Ljava/util/List;Ljava/util/List;)Lio/ktor/server/http/content/CompressedFileType;

    move-result-object v3

    .line 111
    .local v3, "bestCompressionFit":Lio/ktor/server/http/content/CompressedFileType;
    invoke-interface {v5, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    const-string v10, ", "

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "cacheControlValues":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v3, :cond_7

    .line 113
    .end local v3    # "bestCompressionFit":Lio/ktor/server/http/content/CompressedFileType;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    move-object v3, v5

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v10, v11

    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v8}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    sget-object v10, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v10}, Lio/ktor/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v5}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v5    # "cacheControlValues":Ljava/lang/String;
    :cond_2
    iput-object v8, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput v11, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    invoke-interface {v9, v7, v8, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v9    # "modify":Lkotlin/jvm/functions/Function3;
    if-ne v3, v2, :cond_3

    .line 103
    return-object v2

    .line 115
    :cond_3
    move-object v3, v6

    move-object v5, v7

    move-object v6, v8

    .line 116
    .end local v7    # "requestedFile":Ljava/io/File;
    .end local v8    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .local v3, "contentType":Lkotlin/jvm/functions/Function1;
    .local v5, "requestedFile":Ljava/io/File;
    .local v6, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :goto_1
    new-instance v7, Lio/ktor/server/http/content/LocalFileContent;

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/ktor/http/ContentType;

    invoke-direct {v7, v5, v8}, Lio/ktor/server/http/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;)V

    move-object v3, v7

    .end local v5    # "requestedFile":Ljava/io/File;
    .end local v6    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .local v3, "message$iv":Ljava/lang/Object;
    move-object v5, v6

    .local v5, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v6, 0x0

    .line 192
    .local v6, "$i$f$respondWithType":I
    instance-of v7, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v7, :cond_4

    instance-of v7, v3, [B

    if-nez v7, :cond_4

    .line 193
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    const/4 v8, 0x0

    .local v8, "$i$f$typeInfo":I
    const-class v9, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    .line 194
    nop

    .line 195
    .local v9, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v9}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 196
    .local v10, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v11, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    .line 193
    .end local v8    # "$i$f$typeInfo":I
    .end local v9    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v7, v8}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 197
    :cond_4
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    invoke-interface {v7}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    move-object v8, v3

    check-cast v8, Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    invoke-virtual {v7, v5, v8, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "message$iv":Ljava/lang/Object;
    .end local v5    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    if-ne v3, v2, :cond_5

    .line 103
    return-object v2

    .line 197
    :cond_5
    move v2, v6

    .line 198
    .end local v6    # "$i$f$respondWithType":I
    .restart local v2    # "$i$f$respondWithType":I
    :goto_2
    nop

    .line 118
    .end local v2    # "$i$f$respondWithType":I
    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 120
    .local v3, "bestCompressionFit":Lio/ktor/server/http/content/CompressedFileType;
    .local v5, "cacheControlValues":Ljava/lang/String;
    .local v6, "contentType":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "requestedFile":Ljava/io/File;
    .local v8, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .local v9, "modify":Lkotlin/jvm/functions/Function3;
    :cond_7
    invoke-interface {v8}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v12

    invoke-static {}, Lio/ktor/server/http/content/SuppressionAttributeKt;->getSuppressionAttribute()Lio/ktor/util/AttributeKey;

    move-result-object v13

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v3, v7}, Lio/ktor/server/http/content/CompressedFileType;->file(Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 123
    .local v12, "compressedFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 124
    move-object v13, v5

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_8

    move v10, v11

    :cond_8
    if-eqz v10, :cond_9

    invoke-interface {v8}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v10

    sget-object v11, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v11}, Lio/ktor/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v5    # "cacheControlValues":Ljava/lang/String;
    :cond_9
    iput-object v8, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    invoke-interface {v9, v7, v8, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v9    # "modify":Lkotlin/jvm/functions/Function3;
    if-ne v5, v2, :cond_a

    .line 103
    return-object v2

    .line 125
    :cond_a
    move-object v5, v3

    move-object v3, v12

    .line 126
    .end local v12    # "compressedFile":Ljava/io/File;
    .local v3, "compressedFile":Ljava/io/File;
    .local v5, "bestCompressionFit":Lio/ktor/server/http/content/CompressedFileType;
    :goto_3
    new-instance v9, Lio/ktor/server/http/content/LocalFileContent;

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/ktor/http/ContentType;

    invoke-direct {v9, v3, v10}, Lio/ktor/server/http/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;)V

    move-object v3, v9

    .line 127
    .end local v6    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v7    # "requestedFile":Ljava/io/File;
    .local v3, "localFileContent":Lio/ktor/server/http/content/LocalFileContent;
    new-instance v6, Lio/ktor/server/http/content/PreCompressedResponse;

    move-object v7, v3

    check-cast v7, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v5}, Lio/ktor/server/http/content/CompressedFileType;->getEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lio/ktor/server/http/content/PreCompressedResponse;-><init>(Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Ljava/lang/String;)V

    move-object v3, v6

    .end local v5    # "bestCompressionFit":Lio/ktor/server/http/content/CompressedFileType;
    .end local v8    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .local v3, "message$iv":Ljava/lang/Object;
    move-object v5, v8

    .local v5, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v6, 0x0

    .line 199
    .local v6, "$i$f$respondWithType":I
    instance-of v7, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v7, :cond_b

    instance-of v7, v3, [B

    if-nez v7, :cond_b

    .line 200
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    const/4 v8, 0x0

    .local v8, "$i$f$typeInfo":I
    const-class v9, Lio/ktor/server/http/content/PreCompressedResponse;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    .line 201
    nop

    .line 202
    .local v9, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v9}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 203
    .restart local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v11, Lio/ktor/server/http/content/PreCompressedResponse;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    .line 200
    .end local v8    # "$i$f$typeInfo":I
    .end local v9    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v7, v8}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 204
    :cond_b
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    invoke-interface {v7}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    move-object v8, v3

    check-cast v8, Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$1;->label:I

    invoke-virtual {v7, v5, v8, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "message$iv":Ljava/lang/Object;
    .end local v5    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    if-ne v3, v2, :cond_c

    .line 103
    return-object v2

    .line 204
    :cond_c
    move v2, v6

    .line 205
    .end local v6    # "$i$f$respondWithType":I
    .restart local v2    # "$i$f$respondWithType":I
    :goto_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 129
    .end local v2    # "$i$f$respondWithType":I
    return-object v2

    :cond_d
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic respondStaticFile$default(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 103
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 106
    sget-object p3, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$2;->INSTANCE:Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$2;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    move-object v3, p3

    goto :goto_0

    .line 103
    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 107
    sget-object p3, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$3;->INSTANCE:Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$3;

    move-object p4, p3

    check-cast p4, Lkotlin/jvm/functions/Function1;

    move-object v4, p4

    goto :goto_1

    .line 103
    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 108
    new-instance p3, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$4;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lio/ktor/server/http/content/PreCompressedKt$respondStaticFile$4;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object p5, p3

    check-cast p5, Lkotlin/jvm/functions/Function3;

    move-object v5, p5

    goto :goto_2

    .line 103
    :cond_2
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final respondStaticResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Lio/ktor/http/ContentType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/net/URL;",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p8

    instance-of v1, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;

    iget v2, v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;

    invoke-direct {v1, v0}, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 131
    iget v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "$i$f$respondWithType":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .end local v2    # "$i$f$respondWithType":I
    :pswitch_1
    iget-object v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/Pair;

    .local v3, "content":Lkotlin/Pair;
    iget-object v6, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/server/application/ApplicationCall;

    .local v6, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v3    # "content":Lkotlin/Pair;
    .end local v6    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :pswitch_2
    const/4 v2, 0x0

    .restart local v2    # "$i$f$respondWithType":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v2    # "$i$f$respondWithType":I
    :pswitch_3
    const/4 v2, 0x0

    .restart local v2    # "$i$f$respondWithType":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v2    # "$i$f$respondWithType":I
    :pswitch_4
    iget-object v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/server/http/content/CompressedResource;

    .local v3, "bestCompressionFit":Lio/ktor/server/http/content/CompressedResource;
    iget-object v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .local v4, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v3    # "bestCompressionFit":Lio/ktor/server/http/content/CompressedResource;
    .end local v4    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :pswitch_5
    const/4 v2, 0x0

    .restart local v2    # "$i$f$respondWithType":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v2    # "$i$f$respondWithType":I
    :pswitch_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    move-object/from16 v8, p2

    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v12, p6

    .local v12, "modifier":Lkotlin/jvm/functions/Function3;
    move-object/from16 v11, p4

    .local v11, "contentType":Lkotlin/jvm/functions/Function1;
    move-object/from16 v7, p1

    .local v7, "requestedResource":Ljava/lang/String;
    move-object/from16 v10, p3

    .local v10, "compressedTypes":Ljava/util/List;
    move-object/from16 v13, p7

    .local v13, "exclude":Lkotlin/jvm/functions/Function1;
    move-object/from16 v14, p5

    .line 141
    .local v14, "cacheControl":Lkotlin/jvm/functions/Function1;
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v6

    invoke-static {v6}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->acceptEncodingItems(Lio/ktor/server/request/ApplicationRequest;)Ljava/util/List;

    move-result-object v9

    .line 145
    nop

    .line 146
    .end local v10    # "compressedTypes":Ljava/util/List;
    nop

    .line 140
    move-object v6, v3

    invoke-static/range {v6 .. v11}, Lio/ktor/server/http/content/PreCompressedKt;->bestCompressionFit(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/http/content/CompressedResource;

    move-result-object v6

    .line 149
    .local v6, "bestCompressionFit":Lio/ktor/server/http/content/CompressedResource;
    const/4 v9, 0x0

    const-string v10, ", "

    const/4 v15, 0x1

    if-eqz v6, :cond_9

    .line 150
    .end local v7    # "requestedResource":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v11    # "contentType":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v6}, Lio/ktor/server/http/content/CompressedResource;->getUrl()Ljava/net/URL;

    move-result-object v7

    invoke-interface {v13, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 151
    .end local v6    # "bestCompressionFit":Lio/ktor/server/http/content/CompressedResource;
    .end local v12    # "modifier":Lkotlin/jvm/functions/Function3;
    .end local v13    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v14    # "cacheControl":Lkotlin/jvm/functions/Function1;
    sget-object v5, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v5}, Lio/ktor/http/HttpStatusCode$Companion;->getForbidden()Lio/ktor/http/HttpStatusCode;

    move-result-object v5

    .local v3, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .local v5, "message$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 206
    .local v6, "$i$f$respondWithType":I
    instance-of v7, v5, Lio/ktor/http/content/OutgoingContent;

    if-nez v7, :cond_1

    instance-of v7, v5, [B

    if-nez v7, :cond_1

    .line 207
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    const/4 v8, 0x0

    .local v8, "$i$f$typeInfo":I
    const-class v9, Lio/ktor/http/HttpStatusCode;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    .line 208
    nop

    .line 209
    .local v9, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v9}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 210
    .local v10, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v11, Lio/ktor/http/HttpStatusCode;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    .line 207
    .end local v8    # "$i$f$typeInfo":I
    .end local v9    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v7, v8}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 211
    :cond_1
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    invoke-interface {v7}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    check-cast v4, Ljava/lang/Object;

    iput v15, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    invoke-virtual {v7, v3, v4, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v5    # "message$iv":Ljava/lang/Object;
    if-ne v3, v2, :cond_2

    .line 131
    return-object v2

    .line 211
    :cond_2
    move v2, v6

    .line 212
    .end local v6    # "$i$f$respondWithType":I
    .restart local v2    # "$i$f$respondWithType":I
    :goto_1
    nop

    .line 152
    .end local v2    # "$i$f$respondWithType":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 154
    .local v3, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    .local v6, "bestCompressionFit":Lio/ktor/server/http/content/CompressedResource;
    .restart local v12    # "modifier":Lkotlin/jvm/functions/Function3;
    .restart local v14    # "cacheControl":Lkotlin/jvm/functions/Function1;
    :cond_3
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v4

    invoke-static {}, Lio/ktor/server/http/content/SuppressionAttributeKt;->getSuppressionAttribute()Lio/ktor/util/AttributeKey;

    move-result-object v7

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v6}, Lio/ktor/server/http/content/CompressedResource;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-interface {v14, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    move-object v7, v10

    check-cast v7, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p0, v4

    move-object/from16 p1, v7

    move-object/from16 p2, v11

    move-object/from16 p3, v13

    move/from16 p4, v16

    move-object/from16 p5, v17

    move-object/from16 p6, v18

    move/from16 p7, v8

    move-object/from16 p8, v10

    invoke-static/range {p0 .. p8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .end local v14    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v4, "cacheControlValues":Ljava/lang/String;
    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    move v9, v15

    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    sget-object v8, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v8}, Lio/ktor/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v4    # "cacheControlValues":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lio/ktor/server/http/content/CompressedResource;->getUrl()Ljava/net/URL;

    move-result-object v4

    iput-object v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    invoke-interface {v12, v4, v3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v12    # "modifier":Lkotlin/jvm/functions/Function3;
    if-ne v4, v2, :cond_6

    .line 131
    return-object v2

    .line 157
    :cond_6
    move-object v4, v3

    move-object v3, v6

    .line 158
    .end local v6    # "bestCompressionFit":Lio/ktor/server/http/content/CompressedResource;
    .local v3, "bestCompressionFit":Lio/ktor/server/http/content/CompressedResource;
    .local v4, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :goto_2
    new-instance v6, Lio/ktor/server/http/content/PreCompressedResponse;

    invoke-virtual {v3}, Lio/ktor/server/http/content/CompressedResource;->getContent()Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    move-result-object v7

    invoke-virtual {v3}, Lio/ktor/server/http/content/CompressedResource;->getCompression()Lio/ktor/server/http/content/CompressedFileType;

    move-result-object v8

    invoke-virtual {v8}, Lio/ktor/server/http/content/CompressedFileType;->getEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lio/ktor/server/http/content/PreCompressedResponse;-><init>(Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Ljava/lang/String;)V

    move-object v3, v6

    .local v3, "message$iv":Ljava/lang/Object;
    .local v4, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v6, 0x0

    .line 213
    .local v6, "$i$f$respondWithType":I
    instance-of v7, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v7, :cond_7

    instance-of v7, v3, [B

    if-nez v7, :cond_7

    .line 214
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    const/4 v8, 0x0

    .restart local v8    # "$i$f$typeInfo":I
    const-class v9, Lio/ktor/server/http/content/PreCompressedResponse;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    .line 215
    nop

    .line 216
    .restart local v9    # "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v9}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 217
    .restart local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v11, Lio/ktor/server/http/content/PreCompressedResponse;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    .line 214
    .end local v8    # "$i$f$typeInfo":I
    .end local v9    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v7, v8}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 218
    :cond_7
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    invoke-interface {v7}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    move-object v8, v3

    check-cast v8, Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    invoke-virtual {v7, v4, v8, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "message$iv":Ljava/lang/Object;
    .end local v4    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    if-ne v3, v2, :cond_8

    .line 131
    return-object v2

    .line 218
    :cond_8
    move v2, v6

    .line 219
    .end local v6    # "$i$f$respondWithType":I
    .restart local v2    # "$i$f$respondWithType":I
    :goto_3
    nop

    .line 159
    .end local v2    # "$i$f$respondWithType":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 162
    .local v3, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    .restart local v7    # "requestedResource":Ljava/lang/String;
    .local v8, "packageName":Ljava/lang/String;
    .restart local v11    # "contentType":Lkotlin/jvm/functions/Function1;
    .restart local v12    # "modifier":Lkotlin/jvm/functions/Function3;
    .restart local v13    # "exclude":Lkotlin/jvm/functions/Function1;
    .restart local v14    # "cacheControl":Lkotlin/jvm/functions/Function1;
    :cond_9
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v6

    .line 163
    nop

    .line 164
    .end local v7    # "requestedResource":Ljava/lang/String;
    nop

    .line 162
    .end local v8    # "packageName":Ljava/lang/String;
    nop

    .line 165
    nop

    .line 162
    .end local v11    # "contentType":Lkotlin/jvm/functions/Function1;
    const/16 v16, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p0, v6

    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-object/from16 p3, v18

    move-object/from16 p4, v11

    move/from16 p5, v16

    move-object/from16 p6, v17

    invoke-static/range {p0 .. p6}, Lio/ktor/server/http/content/StaticContentResolutionKt;->resolveResource$default(Lio/ktor/server/application/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 167
    .local v6, "content":Lkotlin/Pair;
    if-eqz v6, :cond_12

    .line 168
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v13, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 169
    .end local v6    # "content":Lkotlin/Pair;
    .end local v12    # "modifier":Lkotlin/jvm/functions/Function3;
    .end local v13    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v14    # "cacheControl":Lkotlin/jvm/functions/Function1;
    sget-object v5, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v5}, Lio/ktor/http/HttpStatusCode$Companion;->getForbidden()Lio/ktor/http/HttpStatusCode;

    move-result-object v5

    .local v3, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v5    # "message$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 220
    .local v6, "$i$f$respondWithType":I
    instance-of v7, v5, Lio/ktor/http/content/OutgoingContent;

    if-nez v7, :cond_a

    instance-of v7, v5, [B

    if-nez v7, :cond_a

    .line 221
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    const/4 v8, 0x0

    .local v8, "$i$f$typeInfo":I
    const-class v9, Lio/ktor/http/HttpStatusCode;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    .line 222
    nop

    .line 223
    .restart local v9    # "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v9}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 224
    .restart local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v11, Lio/ktor/http/HttpStatusCode;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    .line 221
    .end local v8    # "$i$f$typeInfo":I
    .end local v9    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v10    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v7, v8}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 225
    :cond_a
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v7

    invoke-interface {v7}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    check-cast v4, Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    invoke-virtual {v7, v3, v4, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v5    # "message$iv":Ljava/lang/Object;
    if-ne v3, v2, :cond_b

    .line 131
    return-object v2

    .line 225
    :cond_b
    move v2, v6

    .line 226
    .end local v6    # "$i$f$respondWithType":I
    .restart local v2    # "$i$f$respondWithType":I
    :goto_4
    nop

    .line 170
    .end local v2    # "$i$f$respondWithType":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 172
    .local v3, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    .local v6, "content":Lkotlin/Pair;
    .restart local v12    # "modifier":Lkotlin/jvm/functions/Function3;
    .restart local v14    # "cacheControl":Lkotlin/jvm/functions/Function1;
    :cond_c
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v14, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    move-object v8, v10

    check-cast v8, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 p0, v7

    move-object/from16 p1, v8

    move-object/from16 p2, v13

    move-object/from16 p3, v16

    move/from16 p4, v17

    move-object/from16 p5, v18

    move-object/from16 p6, v19

    move/from16 p7, v10

    move-object/from16 p8, v11

    invoke-static/range {p0 .. p8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .end local v14    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v7, "cacheControlValues":Ljava/lang/String;
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_d

    move v9, v15

    :cond_d
    if-eqz v9, :cond_e

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v8

    sget-object v9, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v9}, Lio/ktor/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v7    # "cacheControlValues":Ljava/lang/String;
    :cond_e
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    iput-object v3, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x5

    iput v8, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    invoke-interface {v12, v7, v3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v12    # "modifier":Lkotlin/jvm/functions/Function3;
    if-ne v7, v2, :cond_f

    .line 131
    return-object v2

    .line 174
    :cond_f
    move-object/from16 v20, v6

    move-object v6, v3

    move-object/from16 v3, v20

    .line 175
    .local v3, "content":Lkotlin/Pair;
    .local v6, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :goto_5
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    .local v3, "message$iv":Ljava/lang/Object;
    .local v6, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v7, 0x0

    .line 227
    .local v7, "$i$f$respondWithType":I
    instance-of v8, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v8, :cond_10

    instance-of v8, v3, [B

    if-nez v8, :cond_10

    .line 228
    invoke-interface {v6}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v8

    const/4 v9, 0x0

    .local v9, "$i$f$typeInfo":I
    const-class v10, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v10

    .line 229
    nop

    .line 230
    .local v10, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v10}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 231
    .local v11, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v12, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v9

    .line 228
    .end local v9    # "$i$f$typeInfo":I
    .end local v10    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v11    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v8, v9}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 232
    :cond_10
    invoke-interface {v6}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v8

    invoke-interface {v8}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v8

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$1;->label:I

    invoke-virtual {v8, v6, v3, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "message$iv":Ljava/lang/Object;
    .end local v6    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    if-ne v3, v2, :cond_11

    .line 131
    return-object v2

    .line 232
    :cond_11
    move v2, v7

    .line 233
    .end local v7    # "$i$f$respondWithType":I
    .restart local v2    # "$i$f$respondWithType":I
    :goto_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 177
    .end local v2    # "$i$f$respondWithType":I
    return-object v2

    :cond_12
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic respondStaticResource$default(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 131
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$2;->INSTANCE:Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v5, v0

    goto :goto_0

    .line 131
    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$3;->INSTANCE:Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v6, v0

    goto :goto_1

    .line 131
    :cond_1
    move-object v6, p5

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$4;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    move-object v7, v0

    goto :goto_2

    .line 131
    :cond_2
    move-object/from16 v7, p6

    :goto_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    .line 138
    sget-object v0, Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$5;->INSTANCE:Lio/ktor/server/http/content/PreCompressedKt$respondStaticResource$5;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v8, v0

    goto :goto_3

    .line 131
    :cond_3
    move-object/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
