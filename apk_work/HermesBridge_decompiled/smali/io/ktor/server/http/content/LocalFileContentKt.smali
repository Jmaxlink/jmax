.class public final Lio/ktor/server/http/content/LocalFileContentKt;
.super Ljava/lang/Object;
.source "LocalFileContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "LocalFileContent",
        "Lio/ktor/server/http/content/LocalFileContent;",
        "baseDir",
        "Ljava/io/File;",
        "relativePath",
        "",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "Ljava/nio/file/Path;",
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
.method public static final LocalFileContent(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;)Lio/ktor/server/http/content/LocalFileContent;
    .locals 2
    .param p0, "baseDir"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "contentType"    # Lio/ktor/http/ContentType;

    const-string v0, "baseDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {p0, p1}, Lio/ktor/util/PathKt;->combineSafe(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/ktor/server/http/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;)V

    return-object v0
.end method

.method public static final LocalFileContent(Ljava/nio/file/Path;Ljava/nio/file/Path;Lio/ktor/http/ContentType;)Lio/ktor/server/http/content/LocalFileContent;
    .locals 2
    .param p0, "baseDir"    # Ljava/nio/file/Path;
    .param p1, "relativePath"    # Ljava/nio/file/Path;
    .param p2, "contentType"    # Lio/ktor/http/ContentType;

    const-string v0, "baseDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {p0, p1}, Lio/ktor/util/NioPathKt;->combineSafe(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/ktor/server/http/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;)V

    return-object v0
.end method

.method public static synthetic LocalFileContent$default(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;ILjava/lang/Object;)Lio/ktor/server/http/content/LocalFileContent;
    .locals 0

    .line 46
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 49
    sget-object p2, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-static {p2, p1}, Lio/ktor/http/FileContentTypeKt;->defaultForFilePath(Lio/ktor/http/ContentType$Companion;Ljava/lang/String;)Lio/ktor/http/ContentType;

    move-result-object p2

    .line 46
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/http/content/LocalFileContentKt;->LocalFileContent(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;)Lio/ktor/server/http/content/LocalFileContent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic LocalFileContent$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lio/ktor/http/ContentType;ILjava/lang/Object;)Lio/ktor/server/http/content/LocalFileContent;
    .locals 0

    .line 56
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 59
    sget-object p2, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-static {p2, p1}, Lio/ktor/http/FileContentTypeJvmKt;->defaultForFile(Lio/ktor/http/ContentType$Companion;Ljava/nio/file/Path;)Lio/ktor/http/ContentType;

    move-result-object p2

    .line 56
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/http/content/LocalFileContentKt;->LocalFileContent(Ljava/nio/file/Path;Ljava/nio/file/Path;Lio/ktor/http/ContentType;)Lio/ktor/server/http/content/LocalFileContent;

    move-result-object p0

    return-object p0
.end method
