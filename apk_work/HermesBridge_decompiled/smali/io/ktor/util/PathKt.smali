.class public final Lio/ktor/util/PathKt;
.super Ljava/lang/Object;
.source "Path.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nio/ktor/util/PathKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,98:1\n1#2:99\n408#3,4:100\n*S KotlinDebug\n*F\n+ 1 Path.kt\nio/ktor/util/PathKt\n*L\n42#1:100,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000c\n\u0002\u0008\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0007\u001a\u000c\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0002\u001a\u000c\u0010\u0008\u001a\u00020\t*\u00020\nH\u0002\u001a\u000c\u0010\u000b\u001a\u00020\t*\u00020\nH\u0002\u001a\n\u0010\u000c\u001a\u00020\u0001*\u00020\u0001\u001a\u000c\u0010\r\u001a\u00020\u0001*\u00020\u0001H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "combineSafe",
        "Ljava/io/File;",
        "dir",
        "relativePath",
        "dropLeadingTopDirs",
        "",
        "path",
        "",
        "isPathSeparator",
        "",
        "",
        "isPathSeparatorOrDot",
        "normalizeAndRelativize",
        "notRooted",
        "ktor-utils"
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
.method private static final combineSafe(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/io/File;

    .line 21
    invoke-static {p1}, Lio/ktor/util/PathKt;->normalizeAndRelativize(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 22
    .local v0, "normalized":Ljava/io/File;
    const-string v1, ".."

    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->startsWith(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Bad relative path "

    if-nez v1, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 25
    .local v1, "$i$a$-check-PathKt$combineSafe$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check-PathKt$combineSafe$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final combineSafe(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "$this$combineSafe"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/ktor/util/PathKt;->combineSafe(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final dropLeadingTopDirs(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 53
    .local v1, "lastIndex":I
    :goto_0
    if-gt v0, v1, :cond_7

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 55
    .local v2, "first":C
    invoke-static {v2}, Lio/ktor/util/PathKt;->isPathSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    .line 60
    goto :goto_1

    .line 63
    :cond_1
    if-ne v0, v1, :cond_2

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 69
    .local v4, "second":C
    invoke-static {v4}, Lio/ktor/util/PathKt;->isPathSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    if-ne v4, v3, :cond_6

    .line 72
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_4

    add-int/lit8 v0, v0, 0x2

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/ktor/util/PathKt;->isPathSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x3

    .line 75
    goto :goto_0

    .line 77
    :cond_5
    goto :goto_1

    .line 80
    :cond_6
    nop

    .line 84
    .end local v2    # "first":C
    .end local v4    # "second":C
    :cond_7
    :goto_1
    return v0
.end method

.method private static final dropLeadingTopDirs(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "$this$dropLeadingTopDirs"    # Ljava/io/File;

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lio/ktor/util/PathKt;->dropLeadingTopDirs(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "startIndex":I
    if-nez v0, :cond_1

    return-object p0

    .line 94
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 96
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static final isPathSeparator(C)Z
    .locals 1
    .param p0, "$this$isPathSeparator"    # C

    .line 87
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final isPathSeparatorOrDot(C)Z
    .locals 1
    .param p0, "$this$isPathSeparatorOrDot"    # C

    .line 88
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lio/ktor/util/PathKt;->isPathSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final normalizeAndRelativize(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "$this$normalizeAndRelativize"    # Ljava/io/File;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lkotlin/io/FilesKt;->normalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/util/PathKt;->notRooted(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/util/PathKt;->dropLeadingTopDirs(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static final notRooted(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p0, "$this$notRooted"    # Ljava/io/File;

    .line 31
    invoke-static {p0}, Lkotlin/io/FilesKt;->isRooted(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 33
    :cond_0
    move-object v0, p0

    .line 35
    .local v0, "current":Ljava/io/File;
    :goto_0
    nop

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_5

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "$this$dropWhile$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 100
    .local v2, "$i$f$dropWhile":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, "it":C
    const/4 v6, 0x0

    .line 42
    .local v6, "$i$a$-dropWhile-PathKt$notRooted$1":I
    const/16 v7, 0x5c

    if-eq v5, v7, :cond_2

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, 0x1

    .line 101
    .end local v5    # "it":C
    .end local v6    # "$i$a$-dropWhile-PathKt$notRooted$1":I
    :goto_3
    if-nez v7, :cond_3

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 100
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v3    # "index$iv":I
    :cond_4
    const-string v4, ""

    .line 42
    .end local v1    # "$this$dropWhile$iv":Ljava/lang/String;
    .end local v2    # "$i$f$dropWhile":I
    :goto_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 37
    .local v1, "parent":Ljava/io/File;
    :cond_5
    move-object v0, v1

    .end local v1    # "parent":Ljava/io/File;
    goto :goto_0
.end method
