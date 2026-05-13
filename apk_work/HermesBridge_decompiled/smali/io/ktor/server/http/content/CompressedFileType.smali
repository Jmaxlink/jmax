.class public final enum Lio/ktor/server/http/content/CompressedFileType;
.super Ljava/lang/Enum;
.source "PreCompressed.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/server/http/content/CompressedFileType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/server/http/content/CompressedFileType;",
        "",
        "extension",
        "",
        "encoding",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getEncoding",
        "()Ljava/lang/String;",
        "getExtension",
        "file",
        "Ljava/io/File;",
        "plain",
        "BROTLI",
        "GZIP",
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
.field private static final synthetic $VALUES:[Lio/ktor/server/http/content/CompressedFileType;

.field public static final enum BROTLI:Lio/ktor/server/http/content/CompressedFileType;

.field public static final enum GZIP:Lio/ktor/server/http/content/CompressedFileType;


# instance fields
.field private final encoding:Ljava/lang/String;

.field private final extension:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/ktor/server/http/content/CompressedFileType;
    .locals 2

    sget-object v0, Lio/ktor/server/http/content/CompressedFileType;->BROTLI:Lio/ktor/server/http/content/CompressedFileType;

    sget-object v1, Lio/ktor/server/http/content/CompressedFileType;->GZIP:Lio/ktor/server/http/content/CompressedFileType;

    filled-new-array {v0, v1}, [Lio/ktor/server/http/content/CompressedFileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v7, Lio/ktor/server/http/content/CompressedFileType;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v1, "BROTLI"

    const/4 v2, 0x0

    const-string v3, "br"

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/ktor/server/http/content/CompressedFileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lio/ktor/server/http/content/CompressedFileType;->BROTLI:Lio/ktor/server/http/content/CompressedFileType;

    .line 24
    new-instance v0, Lio/ktor/server/http/content/CompressedFileType;

    const-string v1, "gz"

    const-string v2, "gzip"

    const-string v3, "GZIP"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lio/ktor/server/http/content/CompressedFileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/http/content/CompressedFileType;->GZIP:Lio/ktor/server/http/content/CompressedFileType;

    invoke-static {}, Lio/ktor/server/http/content/CompressedFileType;->$values()[Lio/ktor/server/http/content/CompressedFileType;

    move-result-object v0

    sput-object v0, Lio/ktor/server/http/content/CompressedFileType;->$VALUES:[Lio/ktor/server/http/content/CompressedFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "extension"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/ktor/server/http/content/CompressedFileType;->extension:Ljava/lang/String;

    iput-object p4, p0, Lio/ktor/server/http/content/CompressedFileType;->encoding:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move-object p4, p3

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/http/content/CompressedFileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/server/http/content/CompressedFileType;
    .locals 1

    const-class v0, Lio/ktor/server/http/content/CompressedFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ktor/server/http/content/CompressedFileType;

    return-object v0
.end method

.method public static values()[Lio/ktor/server/http/content/CompressedFileType;
    .locals 1

    sget-object v0, Lio/ktor/server/http/content/CompressedFileType;->$VALUES:[Lio/ktor/server/http/content/CompressedFileType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/server/http/content/CompressedFileType;

    return-object v0
.end method


# virtual methods
.method public final file(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "plain"    # Ljava/io/File;
    .annotation runtime Lkotlin/Deprecated;
        message = "This will become internal"
    .end annotation

    const-string v0, "plain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/server/http/content/CompressedFileType;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/server/http/content/CompressedFileType;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtension()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/server/http/content/CompressedFileType;->extension:Ljava/lang/String;

    return-object v0
.end method
