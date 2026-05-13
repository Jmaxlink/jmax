.class public final Lio/ktor/server/application/PluginExceptionsKt;
.super Ljava/lang/Object;
.source "PluginExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginExceptions.kt\nio/ktor/server/application/PluginExceptionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "noBinaryDataException",
        "Lio/ktor/server/application/InvalidBodyException;",
        "expectedTypeName",
        "",
        "subject",
        "",
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
.method public static final noBinaryDataException(Ljava/lang/String;Ljava/lang/Object;)Lio/ktor/server/application/InvalidBodyException;
    .locals 4
    .param p0, "expectedTypeName"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/Object;

    const-string v0, "expectedTypeName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 20
    move-object v1, p1

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 16
    .local v2, "$i$a$-let-PluginExceptionsKt$noBinaryDataException$message$1":I
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-PluginExceptionsKt$noBinaryDataException$message$1":I
    if-nez v1, :cond_1

    :cond_0
    const-string v1, "null"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lio/ktor/server/application/InvalidBodyException;

    invoke-direct {v1, v0}, Lio/ktor/server/application/InvalidBodyException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
