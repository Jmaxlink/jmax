.class final Lio/ktor/server/http/content/JarFileContent$isFile$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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

    iput-object p1, p0, Lio/ktor/server/http/content/JarFileContent$isFile$2;->this$0:Lio/ktor/server/http/content/JarFileContent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    .line 32
    iget-object v0, p0, Lio/ktor/server/http/content/JarFileContent$isFile$2;->this$0:Lio/ktor/server/http/content/JarFileContent;

    invoke-static {v0}, Lio/ktor/server/http/content/JarFileContent;->access$getJarEntry(Lio/ktor/server/http/content/JarFileContent;)Ljava/util/jar/JarEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/ktor/server/http/content/JarFileContent$isFile$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
