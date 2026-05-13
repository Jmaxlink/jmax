.class public final Lio/ktor/util/reflect/TypeInfoJvmKt;
.super Ljava/lang/Object;
.source "TypeInfoJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001a\u0011\u0010\u0008\u001a\u00020\t\"\u0006\u0008\u0000\u0010\n\u0018\u0001H\u0086\u0008\u001a(\u0010\u000b\u001a\u00020\t2\n\u0010\u000c\u001a\u00060\u0001j\u0002`\u00022\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u001a\u0016\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u000e\"\u001f\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002*\u00020\u00038F\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007*\n\u0010\u0014\"\u00020\u00012\u00020\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "platformType",
        "Ljava/lang/reflect/Type;",
        "Lio/ktor/util/reflect/Type;",
        "Lkotlin/reflect/KType;",
        "getPlatformType$annotations",
        "(Lkotlin/reflect/KType;)V",
        "getPlatformType",
        "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;",
        "typeInfo",
        "Lio/ktor/util/reflect/TypeInfo;",
        "T",
        "typeInfoImpl",
        "reifiedType",
        "kClass",
        "Lkotlin/reflect/KClass;",
        "kType",
        "instanceOf",
        "",
        "",
        "type",
        "Type",
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
.method public static final getPlatformType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "$this$platformType"    # Lkotlin/reflect/KType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPlatformType$annotations(Lkotlin/reflect/KType;)V
    .locals 0

    return-void
.end method

.method public static final instanceOf(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z
    .locals 1
    .param p0, "$this$instanceOf"    # Ljava/lang/Object;
    .param p1, "type"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KClass<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic typeInfo()Lio/ktor/util/reflect/TypeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/ktor/util/reflect/TypeInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$typeInfo":I
    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, "kType":Lkotlin/reflect/KType;
    invoke-static {v1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 19
    .local v3, "reifiedType":Ljava/lang/reflect/Type;
    const/4 v4, 0x4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v2

    return-object v2
.end method

.method public static final typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;
    .locals 1
    .param p0, "reifiedType"    # Ljava/lang/reflect/Type;
    .param p1, "kClass"    # Lkotlin/reflect/KClass;
    .param p2, "kType"    # Lkotlin/reflect/KType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lio/ktor/util/reflect/TypeInfo;"
        }
    .end annotation

    const-string v0, "reifiedType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lio/ktor/util/reflect/TypeInfo;

    invoke-direct {v0, p1, p0, p2}, Lio/ktor/util/reflect/TypeInfo;-><init>(Lkotlin/reflect/KClass;Ljava/lang/reflect/Type;Lkotlin/reflect/KType;)V

    return-object v0
.end method
