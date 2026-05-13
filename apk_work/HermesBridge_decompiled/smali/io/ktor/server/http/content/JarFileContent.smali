.class public final Lio/ktor/server/http/content/JarFileContent;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "JarFileContent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJarFileContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JarFileContent.kt\nio/ktor/server/http/content/JarFileContent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001d\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010&\u001a\u00020\'H\u0016R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0014R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u001c\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0016\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lio/ktor/server/http/content/JarFileContent;",
        "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "zipFilePath",
        "Ljava/nio/file/Path;",
        "resourcePath",
        "",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "(Ljava/nio/file/Path;Ljava/lang/String;Lio/ktor/http/ContentType;)V",
        "jarFile",
        "Ljava/io/File;",
        "(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;)V",
        "contentLength",
        "",
        "getContentLength",
        "()Ljava/lang/Long;",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "isFile",
        "",
        "()Z",
        "isFile$delegate",
        "Lkotlin/Lazy;",
        "jar",
        "Ljava/util/jar/JarFile;",
        "getJar",
        "()Ljava/util/jar/JarFile;",
        "jar$delegate",
        "jarEntry",
        "Ljava/util/jar/JarEntry;",
        "getJarEntry",
        "()Ljava/util/jar/JarEntry;",
        "jarEntry$delegate",
        "getJarFile",
        "()Ljava/io/File;",
        "normalized",
        "getResourcePath",
        "()Ljava/lang/String;",
        "readFrom",
        "Lio/ktor/utils/io/ByteReadChannel;",
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


# instance fields
.field private final contentType:Lio/ktor/http/ContentType;

.field private final isFile$delegate:Lkotlin/Lazy;

.field private final jar$delegate:Lkotlin/Lazy;

.field private final jarEntry$delegate:Lkotlin/Lazy;

.field private final jarFile:Ljava/io/File;

.field private final normalized:Ljava/lang/String;

.field private final resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;)V
    .locals 7
    .param p1, "jarFile"    # Ljava/io/File;
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "contentType"    # Lio/ktor/http/ContentType;

    const-string v0, "jarFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourcePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    .line 23
    iput-object p1, p0, Lio/ktor/server/http/content/JarFileContent;->jarFile:Ljava/io/File;

    .line 24
    iput-object p2, p0, Lio/ktor/server/http/content/JarFileContent;->resourcePath:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lio/ktor/server/http/content/JarFileContent;->contentType:Lio/ktor/http/ContentType;

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/ktor/server/http/content/JarFileContent;->resourcePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/io/FilesKt;->normalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "File(resourcePath).normalize().toString()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->normalized:Ljava/lang/String;

    .line 29
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/ktor/server/http/content/JarFileContent$jarEntry$2;

    invoke-direct {v1, p0}, Lio/ktor/server/http/content/JarFileContent$jarEntry$2;-><init>(Lio/ktor/server/http/content/JarFileContent;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->jarEntry$delegate:Lkotlin/Lazy;

    .line 30
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/ktor/server/http/content/JarFileContent$jar$2;

    invoke-direct {v1, p0}, Lio/ktor/server/http/content/JarFileContent$jar$2;-><init>(Lio/ktor/server/http/content/JarFileContent;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->jar$delegate:Lkotlin/Lazy;

    .line 32
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/ktor/server/http/content/JarFileContent$isFile$2;

    invoke-direct {v1, p0}, Lio/ktor/server/http/content/JarFileContent$isFile$2;-><init>(Lio/ktor/server/http/content/JarFileContent;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->isFile$delegate:Lkotlin/Lazy;

    .line 40
    nop

    .line 41
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->normalized:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ".."

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0}, Lio/ktor/server/http/content/JarFileContent;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    .local v0, "it":Ljava/util/jar/JarEntry;
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$a$-let-JarFileContent$2":I
    move-object v2, p0

    check-cast v2, Lio/ktor/http/content/OutgoingContent;

    move-object v3, p0

    check-cast v3, Lio/ktor/http/content/OutgoingContent;

    invoke-static {v3}, Lio/ktor/http/content/VersionsKt;->getVersions(Lio/ktor/http/content/OutgoingContent;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    const-string v5, "it.lastModifiedTime"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lio/ktor/server/http/content/LastModifiedJavaTimeKt;->LastModifiedVersion(Ljava/nio/file/attribute/FileTime;)Lio/ktor/http/content/LastModifiedVersion;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lio/ktor/http/content/VersionsKt;->setVersions(Lio/ktor/http/content/OutgoingContent;Ljava/util/List;)V

    .line 43
    .end local v0    # "it":Ljava/util/jar/JarEntry;
    .end local v1    # "$i$a$-let-JarFileContent$2":I
    :cond_0
    nop

    .line 22
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 41
    .local v0, "$i$a$-require-JarFileContent$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad resource relative path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/server/http/content/JarFileContent;->resourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-JarFileContent$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;Lio/ktor/http/ContentType;)V
    .locals 2
    .param p1, "zipFilePath"    # Ljava/nio/file/Path;
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "contentType"    # Lio/ktor/http/ContentType;

    const-string v0, "zipFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourcePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 35
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "zipFilePath.toFile()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 37
    nop

    .line 34
    invoke-direct {p0, v0, p2, p3}, Lio/ktor/server/http/content/JarFileContent;-><init>(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;)V

    .line 38
    return-void
.end method

.method public static final synthetic access$getJar(Lio/ktor/server/http/content/JarFileContent;)Ljava/util/jar/JarFile;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/http/content/JarFileContent;

    .line 22
    invoke-direct {p0}, Lio/ktor/server/http/content/JarFileContent;->getJar()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getJarEntry(Lio/ktor/server/http/content/JarFileContent;)Ljava/util/jar/JarEntry;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/http/content/JarFileContent;

    .line 22
    invoke-direct {p0}, Lio/ktor/server/http/content/JarFileContent;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method private final getJar()Ljava/util/jar/JarFile;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->jar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    return-object v0
.end method

.method private final getJarEntry()Ljava/util/jar/JarEntry;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->jarEntry$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 2

    .line 45
    invoke-direct {p0}, Lio/ktor/server/http/content/JarFileContent;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getJarFile()Ljava/io/File;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->jarFile:Ljava/io/File;

    return-object v0
.end method

.method public final getResourcePath()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public final isFile()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent;->isFile$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 8

    .line 47
    invoke-direct {p0}, Lio/ktor/server/http/content/JarFileContent;->getJar()Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-direct {p0}, Lio/ktor/server/http/content/JarFileContent;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lio/ktor/util/cio/InputStreamAdaptersKt;->toByteReadChannel$default(Ljava/io/InputStream;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/server/http/content/JarFileContent;->normalized:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
