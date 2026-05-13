.class public final Lio/ktor/server/application/internal/TypeUtilsJvmKt;
.super Ljava/lang/Object;
.source "TypeUtilsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "starProjectedTypeBridge",
        "Lkotlin/reflect/KType;",
        "T",
        "",
        "klass",
        "Lkotlin/reflect/KClass;",
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
.method public static final starProjectedTypeBridge(Lkotlin/reflect/KClass;)Lkotlin/reflect/KType;
    .locals 1
    .param p0, "klass"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KClassifier;

    invoke-static {v0}, Lkotlin/reflect/full/KClassifiers;->getStarProjectedType(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method
