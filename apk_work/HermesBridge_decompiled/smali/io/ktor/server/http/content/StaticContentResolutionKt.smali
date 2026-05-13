.class public final Lio/ktor/server/http/content/StaticContentResolutionKt;
.super Ljava/lang/Object;
.source "StaticContentResolution.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStaticContentResolution.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticContentResolution.kt\nio/ktor/server/http/content/StaticContentResolutionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1#2:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u001a\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002\u001a.\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000c0\u000bH\u0007\u001a\u000c\u0010\r\u001a\u00020\u0003*\u00020\u0003H\u0000\u001aL\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000f*\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000c0\u000bH\u0000\u001a@\u0010\u000e\u001a\u0004\u0018\u00010\u0008*\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c0\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "findContainingJarFile",
        "Ljava/io/File;",
        "url",
        "",
        "normalisedPath",
        "resourcePackage",
        "path",
        "resourceClasspathResource",
        "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "Ljava/net/URL;",
        "mimeResolve",
        "Lkotlin/Function1;",
        "Lio/ktor/http/ContentType;",
        "extension",
        "resolveResource",
        "Lkotlin/Pair;",
        "Lio/ktor/server/application/Application;",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "Lio/ktor/server/application/ApplicationCall;",
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
.method public static final extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "$this$extension"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 129
    .local v1, "it":I
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-takeIf-StaticContentResolutionKt$extension$indexOfName$1":I
    const/4 v3, 0x1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .end local v1    # "it":I
    .end local v2    # "$i$a$-takeIf-StaticContentResolutionKt$extension$indexOfName$1":I
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_2
    :goto_2
    move v7, v4

    goto :goto_4

    :cond_3
    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 129
    .restart local v1    # "it":I
    const/4 v6, 0x0

    .line 113
    .local v6, "$i$a$-takeIf-StaticContentResolutionKt$extension$indexOfName$2":I
    if-eq v1, v5, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    .end local v1    # "it":I
    .end local v6    # "$i$a$-takeIf-StaticContentResolutionKt$extension$indexOfName$2":I
    :goto_3
    if-eqz v3, :cond_5

    move-object v2, v0

    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 114
    .local v7, "indexOfName":I
    :goto_4
    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v6, 0x2e

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 115
    .local v0, "indexOfDot":I
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v1, ""

    :goto_5
    return-object v1
.end method

.method public static final findContainingJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "jar:file:"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "!"

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 104
    .local v0, "jarPathSeparator":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 106
    new-instance v1, Ljava/io/File;

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 129
    :cond_1
    const/4 v1, 0x0

    .line 104
    .local v1, "$i$a$-require-StaticContentResolutionKt$findContainingJarFile$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jar path requires !/ separator but it is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-StaticContentResolutionKt$findContainingJarFile$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v0    # "jarPathSeparator":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only local jars are supported (jar:file:)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final normalisedPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "resourcePackage"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 120
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    new-array v1, v6, [C

    fill-array-data v1, :array_0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "pathComponents":Ljava/util/List;
    const-string v1, ".."

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v1, 0x3

    new-array v3, v1, [C

    fill-array-data v3, :array_1

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lio/ktor/server/util/PathsKt;->normalizePathComponents(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 126
    const-string v1, "/"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    return-object v1

    .line 122
    :cond_1
    new-instance v1, Lio/ktor/server/plugins/BadRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Relative path should not contain path traversing characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v6, v3}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    nop

    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data

    :array_1
    .array-data 2
        0x2es
        0x2fs
        0x5cs
    .end array-data
.end method

.method public static final resolveResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .locals 5
    .param p0, "$this$resolveResource"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resourcePackage"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mimeResolve"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lio/ktor/http/ContentType;",
            ">;)",
            "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeResolve"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-string v0, "/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\\"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p2, p1}, Lio/ktor/server/http/content/StaticContentResolutionKt;->normalisedPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "normalizedPath":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    const-string v2, "classLoader.getResources(normalizedPath)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 37
    .local v2, "url":Ljava/net/URL;
    const-string v4, "url"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lio/ktor/server/http/content/StaticContentResolutionKt$resolveResource$2;

    invoke-direct {v4, p4}, Lio/ktor/server/http/content/StaticContentResolutionKt$resolveResource$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v0, v4}, Lio/ktor/server/http/content/StaticContentResolutionKt;->resourceClasspathResource(Ljava/net/URL;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v1, v4

    .local v1, "content":Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-let-StaticContentResolutionKt$resolveResource$3":I
    return-object v1

    .line 42
    .end local v1    # "content":Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "$i$a$-let-StaticContentResolutionKt$resolveResource$3":I
    :cond_2
    return-object v3

    .line 31
    .end local v0    # "normalizedPath":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v3
.end method

.method public static final resolveResource(Lio/ktor/server/application/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 5
    .param p0, "$this$resolveResource"    # Lio/ktor/server/application/Application;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resourcePackage"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mimeResolve"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/Application;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Lio/ktor/http/ContentType;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/net/URL;",
            "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeResolve"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-string v0, "/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\\"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p2, p1}, Lio/ktor/server/http/content/StaticContentResolutionKt;->normalisedPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "normalizedPath":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    const-string v2, "classLoader.getResources(normalizedPath)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 59
    .local v2, "url":Ljava/net/URL;
    const-string v4, "url"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, p4}, Lio/ktor/server/http/content/StaticContentResolutionKt;->resourceClasspathResource(Ljava/net/URL;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v1, v4

    .local v1, "content":Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    const/4 v3, 0x0

    .line 60
    .local v3, "$i$a$-let-StaticContentResolutionKt$resolveResource$4":I
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    return-object v4

    .line 64
    .end local v1    # "content":Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "$i$a$-let-StaticContentResolutionKt$resolveResource$4":I
    :cond_2
    return-object v3

    .line 53
    .end local v0    # "normalizedPath":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v3
.end method

.method public static synthetic resolveResource$default(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .locals 0

    .line 24
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 26
    const/4 p2, 0x0

    .line 24
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 27
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object p3

    invoke-virtual {p3}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object p3

    invoke-interface {p3}, Lio/ktor/server/application/ApplicationEnvironment;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 24
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 28
    sget-object p4, Lio/ktor/server/http/content/StaticContentResolutionKt$resolveResource$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentResolutionKt$resolveResource$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 24
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/http/content/StaticContentResolutionKt;->resolveResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolveResource$default(Lio/ktor/server/application/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    .line 46
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 48
    const/4 p2, 0x0

    .line 46
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 49
    invoke-virtual {p0}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object p3

    invoke-interface {p3}, Lio/ktor/server/application/ApplicationEnvironment;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 46
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/http/content/StaticContentResolutionKt;->resolveResource(Lio/ktor/server/application/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final resourceClasspathResource(Ljava/net/URL;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .locals 8
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeResolve"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Lio/ktor/http/ContentType;",
            ">;)",
            "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeResolve"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 79
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url.path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lio/ktor/server/http/content/LocalFileContent;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/http/ContentType;

    invoke-direct {v1, v0, v2}, Lio/ktor/server/http/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;)V

    .end local v0    # "file":Ljava/io/File;
    :cond_1
    check-cast v1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    goto :goto_2

    .line 77
    :sswitch_1
    const-string v2, "jrt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :sswitch_2
    const-string v2, "jar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x2

    const-string v3, "/"

    invoke-static {p1, v3, v0, v2, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "url.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/server/http/content/StaticContentResolutionKt;->findContainingJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, "zipFile":Ljava/io/File;
    new-instance v2, Lio/ktor/server/http/content/JarFileContent;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/http/ContentType;

    invoke-direct {v2, v0, p1, v3}, Lio/ktor/server/http/content/JarFileContent;-><init>(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;)V

    .line 89
    .local v2, "content":Lio/ktor/server/http/content/JarFileContent;
    invoke-virtual {v2}, Lio/ktor/server/http/content/JarFileContent;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    .end local v0    # "zipFile":Ljava/io/File;
    .end local v2    # "content":Lio/ktor/server/http/content/JarFileContent;
    :cond_4
    :goto_0
    check-cast v1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    goto :goto_2

    .line 77
    :sswitch_3
    const-string v2, "resource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 94
    :cond_5
    new-instance v0, Lio/ktor/http/content/URIFileContent;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/http/ContentType;

    invoke-direct {v0, p0, v1}, Lio/ktor/http/content/URIFileContent;-><init>(Ljava/net/URL;Lio/ktor/http/ContentType;)V

    move-object v1, v0

    check-cast v1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    goto :goto_2

    .line 97
    :cond_6
    :goto_1
    nop

    .line 77
    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14543bf2 -> :sswitch_3
        0x19a1b -> :sswitch_2
        0x19c2c -> :sswitch_1
        0x2ff57c -> :sswitch_0
    .end sparse-switch
.end method
