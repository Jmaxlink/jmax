.class public final enum Lio/ktor/utils/io/core/ByteOrder;
.super Ljava/lang/Enum;
.source "ByteOrderJVM.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/ByteOrder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/utils/io/core/ByteOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/utils/io/core/ByteOrder;",
        "",
        "nioOrder",
        "Ljava/nio/ByteOrder;",
        "(Ljava/lang/String;ILjava/nio/ByteOrder;)V",
        "getNioOrder",
        "()Ljava/nio/ByteOrder;",
        "BIG_ENDIAN",
        "LITTLE_ENDIAN",
        "Companion",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/ktor/utils/io/core/ByteOrder;

.field public static final enum BIG_ENDIAN:Lio/ktor/utils/io/core/ByteOrder;

.field public static final Companion:Lio/ktor/utils/io/core/ByteOrder$Companion;

.field public static final enum LITTLE_ENDIAN:Lio/ktor/utils/io/core/ByteOrder;

.field private static final native:Lio/ktor/utils/io/core/ByteOrder;


# instance fields
.field private final nioOrder:Ljava/nio/ByteOrder;


# direct methods
.method private static final synthetic $values()[Lio/ktor/utils/io/core/ByteOrder;
    .locals 2

    sget-object v0, Lio/ktor/utils/io/core/ByteOrder;->BIG_ENDIAN:Lio/ktor/utils/io/core/ByteOrder;

    sget-object v1, Lio/ktor/utils/io/core/ByteOrder;->LITTLE_ENDIAN:Lio/ktor/utils/io/core/ByteOrder;

    filled-new-array {v0, v1}, [Lio/ktor/utils/io/core/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lio/ktor/utils/io/core/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-string v2, "BIG_ENDIAN"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/ktor/utils/io/core/ByteOrder;-><init>(Ljava/lang/String;ILjava/nio/ByteOrder;)V

    sput-object v0, Lio/ktor/utils/io/core/ByteOrder;->BIG_ENDIAN:Lio/ktor/utils/io/core/ByteOrder;

    .line 5
    new-instance v0, Lio/ktor/utils/io/core/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-string v2, "LITTLE_ENDIAN"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lio/ktor/utils/io/core/ByteOrder;-><init>(Ljava/lang/String;ILjava/nio/ByteOrder;)V

    sput-object v0, Lio/ktor/utils/io/core/ByteOrder;->LITTLE_ENDIAN:Lio/ktor/utils/io/core/ByteOrder;

    invoke-static {}, Lio/ktor/utils/io/core/ByteOrder;->$values()[Lio/ktor/utils/io/core/ByteOrder;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/ByteOrder;->$VALUES:[Lio/ktor/utils/io/core/ByteOrder;

    new-instance v0, Lio/ktor/utils/io/core/ByteOrder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/ByteOrder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/ByteOrder;->Companion:Lio/ktor/utils/io/core/ByteOrder$Companion;

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v1, "nativeOrder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/utils/io/core/ByteOrderJVMKt;->access$orderOf(Ljava/nio/ByteOrder;)Lio/ktor/utils/io/core/ByteOrder;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/ByteOrder;->native:Lio/ktor/utils/io/core/ByteOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/nio/ByteOrder;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "nioOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/ktor/utils/io/core/ByteOrder;->nioOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public static final synthetic access$getNative$cp()Lio/ktor/utils/io/core/ByteOrder;
    .locals 1

    .line 3
    sget-object v0, Lio/ktor/utils/io/core/ByteOrder;->native:Lio/ktor/utils/io/core/ByteOrder;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/utils/io/core/ByteOrder;
    .locals 1

    const-class v0, Lio/ktor/utils/io/core/ByteOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/ByteOrder;

    return-object v0
.end method

.method public static values()[Lio/ktor/utils/io/core/ByteOrder;
    .locals 1

    sget-object v0, Lio/ktor/utils/io/core/ByteOrder;->$VALUES:[Lio/ktor/utils/io/core/ByteOrder;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/utils/io/core/ByteOrder;

    return-object v0
.end method


# virtual methods
.method public final getNioOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/ktor/utils/io/core/ByteOrder;->nioOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method
