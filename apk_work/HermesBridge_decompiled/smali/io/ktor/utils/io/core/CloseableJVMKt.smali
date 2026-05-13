.class public final Lio/ktor/utils/io/core/CloseableJVMKt;
.super Ljava/lang/Object;
.source "CloseableJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0001\"\u001d\u0010\u0000\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003*\n\u0010\n\"\u00020\u000b2\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "AddSuppressedMethod",
        "Ljava/lang/reflect/Method;",
        "getAddSuppressedMethod",
        "()Ljava/lang/reflect/Method;",
        "AddSuppressedMethod$delegate",
        "Lkotlin/Lazy;",
        "addSuppressedInternal",
        "",
        "",
        "other",
        "Closeable",
        "Ljava/io/Closeable;",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AddSuppressedMethod$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Lio/ktor/utils/io/core/CloseableJVMKt$AddSuppressedMethod$2;->INSTANCE:Lio/ktor/utils/io/core/CloseableJVMKt$AddSuppressedMethod$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/CloseableJVMKt;->AddSuppressedMethod$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "$this$addSuppressedInternal"    # Ljava/lang/Throwable;
    .param p1, "other"    # Ljava/lang/Throwable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lio/ktor/utils/io/core/CloseableJVMKt;->getAddSuppressedMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    return-void
.end method

.method private static final getAddSuppressedMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 12
    sget-object v0, Lio/ktor/utils/io/core/CloseableJVMKt;->AddSuppressedMethod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method
