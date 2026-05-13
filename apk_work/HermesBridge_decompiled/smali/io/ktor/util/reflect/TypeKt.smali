.class public final Lio/ktor/util/reflect/TypeKt;
.super Ljava/lang/Object;
.source "Type.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001H\u0081\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "tryGetType",
        "Lkotlin/reflect/KType;",
        "T",
        "ktor-utils"
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
.method public static final synthetic tryGetType()Lkotlin/reflect/KType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    .local v0, "$i$f$tryGetType":I
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "T"

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v1

    check-cast v3, Lkotlin/reflect/KType;

    .line 44
    .end local v2    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method
