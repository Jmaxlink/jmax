.class final Lio/ktor/server/http/content/JarFileContent$jarEntry$2;
.super Lkotlin/jvm/internal/Lambda;
.source "JarFileContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/JarFileContent;-><init>(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/jar/JarEntry;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/server/http/content/JarFileContent;


# direct methods
.method constructor <init>(Lio/ktor/server/http/content/JarFileContent;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/http/content/JarFileContent$jarEntry$2;->this$0:Lio/ktor/server/http/content/JarFileContent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/ktor/server/http/content/JarFileContent$jarEntry$2;->invoke()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/jar/JarEntry;
    .locals 2

    .line 29
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent$jarEntry$2;->this$0:Lio/ktor/server/http/content/JarFileContent;

    invoke-static {v0}, Lio/ktor/server/http/content/JarFileContent;->access$getJar(Lio/ktor/server/http/content/JarFileContent;)Ljava/util/jar/JarFile;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/http/content/JarFileContent$jarEntry$2;->this$0:Lio/ktor/server/http/content/JarFileContent;

    invoke-virtual {v1}, Lio/ktor/server/http/content/JarFileContent;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method
