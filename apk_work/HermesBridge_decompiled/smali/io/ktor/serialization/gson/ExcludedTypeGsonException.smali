.class public final Lio/ktor/serialization/gson/ExcludedTypeGsonException;
.super Ljava/lang/Exception;
.source "GsonConverter.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/serialization/gson/ExcludedTypeGsonException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\u0011\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0000H\u0016R\u0012\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/ktor/serialization/gson/ExcludedTypeGsonException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "type",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)V",
        "createCopy",
        "ktor-serialization-gson"
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
.field private final type:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 2
    .param p1, "type"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lkotlin/reflect/jvm/KClassesJvm;->getJvmName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is excluded so couldn\'t be used in receive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lio/ktor/serialization/gson/ExcludedTypeGsonException;->type:Lkotlin/reflect/KClass;

    .line 108
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/serialization/gson/ExcludedTypeGsonException;
    .locals 4

    .line 113
    new-instance v0, Lio/ktor/serialization/gson/ExcludedTypeGsonException;

    iget-object v1, p0, Lio/ktor/serialization/gson/ExcludedTypeGsonException;->type:Lkotlin/reflect/KClass;

    invoke-direct {v0, v1}, Lio/ktor/serialization/gson/ExcludedTypeGsonException;-><init>(Lkotlin/reflect/KClass;)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/serialization/gson/ExcludedTypeGsonException;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$a$-also-ExcludedTypeGsonException$createCopy$1":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lio/ktor/serialization/gson/ExcludedTypeGsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 115
    nop

    .line 113
    .end local v1    # "it":Lio/ktor/serialization/gson/ExcludedTypeGsonException;
    .end local v2    # "$i$a$-also-ExcludedTypeGsonException$createCopy$1":I
    nop

    .line 115
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lio/ktor/serialization/gson/ExcludedTypeGsonException;->createCopy()Lio/ktor/serialization/gson/ExcludedTypeGsonException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method
