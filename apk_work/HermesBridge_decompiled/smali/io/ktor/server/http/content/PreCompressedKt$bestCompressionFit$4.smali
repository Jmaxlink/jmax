.class final Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PreCompressed.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/PreCompressedKt;->bestCompressionFit(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/http/content/CompressedResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/http/content/CompressedFileType;",
        "Lio/ktor/server/http/content/CompressedResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/server/http/content/CompressedResource;",
        "it",
        "Lio/ktor/server/http/content/CompressedFileType;",
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
.field final synthetic $call:Lio/ktor/server/application/ApplicationCall;

.field final synthetic $contentType:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/net/URL;",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Lio/ktor/http/ContentType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$resource:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$call:Lio/ktor/server/application/ApplicationCall;

    iput-object p3, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$contentType:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/http/content/CompressedFileType;)Lio/ktor/server/http/content/CompressedResource;
    .locals 8
    .param p1, "it"    # Lio/ktor/server/http/content/CompressedFileType;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/server/http/content/CompressedFileType;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "compressed":Ljava/lang/String;
    iget-object v1, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    iget-object v3, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$packageName:Ljava/lang/String;

    new-instance v2, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4$resolved$1;

    iget-object v4, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$resource:Ljava/lang/String;

    iget-object v5, p0, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->$contentType:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v0, v4, v5}, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4$resolved$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lio/ktor/server/http/content/StaticContentResolutionKt;->resolveResource$default(Lio/ktor/server/application/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    return-object v1

    .line 98
    .local v1, "resolved":Lkotlin/Pair;
    :cond_0
    new-instance v2, Lio/ktor/server/http/content/CompressedResource;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-direct {v2, v3, v4, p1}, Lio/ktor/server/http/content/CompressedResource;-><init>(Ljava/net/URL;Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Lio/ktor/server/http/content/CompressedFileType;)V

    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 89
    move-object v0, p1

    check-cast v0, Lio/ktor/server/http/content/CompressedFileType;

    invoke-virtual {p0, v0}, Lio/ktor/server/http/content/PreCompressedKt$bestCompressionFit$4;->invoke(Lio/ktor/server/http/content/CompressedFileType;)Lio/ktor/server/http/content/CompressedResource;

    move-result-object v0

    return-object v0
.end method
