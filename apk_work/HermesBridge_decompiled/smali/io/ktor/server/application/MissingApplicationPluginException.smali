.class public final Lio/ktor/server/application/MissingApplicationPluginException;
.super Ljava/lang/IllegalStateException;
.source "ApplicationPlugin.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/IllegalStateException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/server/application/MissingApplicationPluginException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\u0011\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u0000H\u0016R\u0015\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/server/application/MissingApplicationPluginException;",
        "Ljava/lang/IllegalStateException;",
        "Lkotlin/IllegalStateException;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "(Lio/ktor/util/AttributeKey;)V",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "createCopy",
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
.field private final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/util/AttributeKey;)V
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/AttributeKey<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 254
    iput-object p1, p0, Lio/ktor/server/application/MissingApplicationPluginException;->key:Lio/ktor/util/AttributeKey;

    .line 253
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/server/application/MissingApplicationPluginException;
    .locals 5

    .line 258
    new-instance v0, Lio/ktor/server/application/MissingApplicationPluginException;

    iget-object v1, p0, Lio/ktor/server/application/MissingApplicationPluginException;->key:Lio/ktor/util/AttributeKey;

    invoke-direct {v0, v1}, Lio/ktor/server/application/MissingApplicationPluginException;-><init>(Lio/ktor/util/AttributeKey;)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/server/application/MissingApplicationPluginException;
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$a$-also-MissingApplicationPluginException$createCopy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 260
    nop

    .line 258
    .end local v1    # "it":Lio/ktor/server/application/MissingApplicationPluginException;
    .end local v2    # "$i$a$-also-MissingApplicationPluginException$createCopy$1":I
    nop

    .line 260
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lio/ktor/server/application/MissingApplicationPluginException;->createCopy()Lio/ktor/server/application/MissingApplicationPluginException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "*>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lio/ktor/server/application/MissingApplicationPluginException;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/application/MissingApplicationPluginException;->key:Lio/ktor/util/AttributeKey;

    invoke-virtual {v1}, Lio/ktor/util/AttributeKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
