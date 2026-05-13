.class public final Lio/ktor/server/http/content/StaticContentConfig;
.super Ljava/lang/Object;
.source "StaticContent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0006\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0003J \u0010\n\u001a\u00020)2\u0018\u00103\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000bJ\u001c\u0010\u0012\u001a\u00020)2\u0014\u00103\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000bJ\u0010\u00104\u001a\u00020)2\u0008\u00105\u001a\u0004\u0018\u00010\u0018J\u0006\u00106\u001a\u00020)J\u001a\u0010\u001d\u001a\u00020)2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u000bJ\u001f\u0010 \u001a\u00020)2\u0012\u0010 \u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001807\"\u00020\u0018\u00a2\u0006\u0002\u00108J8\u00109\u001a\u00020)2(\u00103\u001a$\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\'\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0(\u0012\u0006\u0012\u0004\u0018\u00010\u00020&\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-J\u001f\u0010:\u001a\u00020)2\u0012\u0010;\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020007\"\u000200\u00a2\u0006\u0002\u0010<R\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR,\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R&\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000f\"\u0004\u0008\u001f\u0010\u0011R \u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$RA\u0010%\u001a$\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\'\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0(\u0012\u0006\u0012\u0004\u0018\u00010\u00020&X\u0080\u000e\u00f8\u0001\u0000\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R \u0010/\u001a\u0008\u0012\u0004\u0012\u0002000\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\"\"\u0004\u00082\u0010$\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006="
    }
    d2 = {
        "Lio/ktor/server/http/content/StaticContentConfig;",
        "Resource",
        "",
        "()V",
        "autoHeadResponse",
        "",
        "getAutoHeadResponse$ktor_server_core",
        "()Z",
        "setAutoHeadResponse$ktor_server_core",
        "(Z)V",
        "cacheControl",
        "Lkotlin/Function1;",
        "",
        "Lio/ktor/http/CacheControl;",
        "getCacheControl$ktor_server_core",
        "()Lkotlin/jvm/functions/Function1;",
        "setCacheControl$ktor_server_core",
        "(Lkotlin/jvm/functions/Function1;)V",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "getContentType$ktor_server_core",
        "setContentType$ktor_server_core",
        "defaultContentType",
        "defaultPath",
        "",
        "getDefaultPath$ktor_server_core",
        "()Ljava/lang/String;",
        "setDefaultPath$ktor_server_core",
        "(Ljava/lang/String;)V",
        "exclude",
        "getExclude$ktor_server_core",
        "setExclude$ktor_server_core",
        "extensions",
        "getExtensions$ktor_server_core",
        "()Ljava/util/List;",
        "setExtensions$ktor_server_core",
        "(Ljava/util/List;)V",
        "modifier",
        "Lkotlin/Function3;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "getModifier$ktor_server_core",
        "()Lkotlin/jvm/functions/Function3;",
        "setModifier$ktor_server_core",
        "(Lkotlin/jvm/functions/Function3;)V",
        "Lkotlin/jvm/functions/Function3;",
        "preCompressedFileTypes",
        "Lio/ktor/server/http/content/CompressedFileType;",
        "getPreCompressedFileTypes$ktor_server_core",
        "setPreCompressedFileTypes$ktor_server_core",
        "block",
        "default",
        "path",
        "enableAutoHeadResponse",
        "",
        "([Ljava/lang/String;)V",
        "modify",
        "preCompressed",
        "types",
        "([Lio/ktor/server/http/content/CompressedFileType;)V",
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
.field private autoHeadResponse:Z

.field private cacheControl:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;"
        }
    .end annotation
.end field

.field private contentType:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultContentType:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TResource;",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPath:Ljava/lang/String;

.field private exclude:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifier:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-TResource;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private preCompressedFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lio/ktor/server/http/content/StaticContentConfig$defaultContentType$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentConfig$defaultContentType$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->defaultContentType:Lkotlin/jvm/functions/Function1;

    .line 53
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->defaultContentType:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->contentType:Lkotlin/jvm/functions/Function1;

    .line 54
    sget-object v0, Lio/ktor/server/http/content/StaticContentConfig$cacheControl$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentConfig$cacheControl$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->cacheControl:Lkotlin/jvm/functions/Function1;

    .line 55
    new-instance v0, Lio/ktor/server/http/content/StaticContentConfig$modifier$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/http/content/StaticContentConfig$modifier$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->modifier:Lkotlin/jvm/functions/Function3;

    .line 56
    sget-object v0, Lio/ktor/server/http/content/StaticContentConfig$exclude$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentConfig$exclude$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->exclude:Lkotlin/jvm/functions/Function1;

    .line 57
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->extensions:Ljava/util/List;

    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->preCompressedFileTypes:Ljava/util/List;

    .line 44
    return-void
.end method

.method public static final synthetic access$getDefaultContentType$p(Lio/ktor/server/http/content/StaticContentConfig;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/http/content/StaticContentConfig;

    .line 44
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->defaultContentType:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public final cacheControl(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->cacheControl:Lkotlin/jvm/functions/Function1;

    .line 108
    return-void
.end method

.method public final contentType(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;",
            "Lio/ktor/http/ContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lio/ktor/server/http/content/StaticContentConfig$contentType$1;

    invoke-direct {v0, p1, p0}, Lio/ktor/server/http/content/StaticContentConfig$contentType$1;-><init>(Lkotlin/jvm/functions/Function1;Lio/ktor/server/http/content/StaticContentConfig;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->contentType:Lkotlin/jvm/functions/Function1;

    .line 99
    return-void
.end method

.method public final default(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->defaultPath:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final enableAutoHeadResponse()V
    .locals 1

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->autoHeadResponse:Z

    .line 82
    return-void
.end method

.method public final exclude(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->exclude:Lkotlin/jvm/functions/Function1;

    .line 129
    .local v0, "oldBlock":Lkotlin/jvm/functions/Function1;
    new-instance v1, Lio/ktor/server/http/content/StaticContentConfig$exclude$2;

    invoke-direct {v1, v0, p1}, Lio/ktor/server/http/content/StaticContentConfig$exclude$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lio/ktor/server/http/content/StaticContentConfig;->exclude:Lkotlin/jvm/functions/Function1;

    .line 136
    return-void
.end method

.method public final varargs extensions([Ljava/lang/String;)V
    .locals 1
    .param p1, "extensions"    # [Ljava/lang/String;

    const-string v0, "extensions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->extensions:Ljava/util/List;

    .line 145
    return-void
.end method

.method public final getAutoHeadResponse$ktor_server_core()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->autoHeadResponse:Z

    return v0
.end method

.method public final getCacheControl$ktor_server_core()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TResource;",
            "Ljava/util/List<",
            "Lio/ktor/http/CacheControl;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->cacheControl:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getContentType$ktor_server_core()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TResource;",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->contentType:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getDefaultPath$ktor_server_core()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->defaultPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getExclude$ktor_server_core()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TResource;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->exclude:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getExtensions$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public final getModifier$ktor_server_core()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "TResource;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->modifier:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getPreCompressedFileTypes$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->preCompressedFileTypes:Ljava/util/List;

    return-object v0
.end method

.method public final modify(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-TResource;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->modifier:Lkotlin/jvm/functions/Function3;

    .line 118
    return-void
.end method

.method public final varargs preCompressed([Lio/ktor/server/http/content/CompressedFileType;)V
    .locals 1
    .param p1, "types"    # [Lio/ktor/server/http/content/CompressedFileType;

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig;->preCompressedFileTypes:Ljava/util/List;

    .line 75
    return-void
.end method

.method public final setAutoHeadResponse$ktor_server_core(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 60
    iput-boolean p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->autoHeadResponse:Z

    return-void
.end method

.method public final setCacheControl$ktor_server_core(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->cacheControl:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setContentType$ktor_server_core(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;",
            "Lio/ktor/http/ContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->contentType:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setDefaultPath$ktor_server_core(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->defaultPath:Ljava/lang/String;

    return-void
.end method

.method public final setExclude$ktor_server_core(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->exclude:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setExtensions$ktor_server_core(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->extensions:Ljava/util/List;

    return-void
.end method

.method public final setModifier$ktor_server_core(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-TResource;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->modifier:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setPreCompressedFileTypes$ktor_server_core(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig;->preCompressedFileTypes:Ljava/util/List;

    return-void
.end method
