.class final synthetic Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "InterestSuspensionsMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/InterestSuspensionsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$1;

    invoke-direct {v0}, Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$1;-><init>()V

    sput-object v0, Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$1;->INSTANCE:Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$1;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lio/ktor/network/selector/InterestSuspensionsMap;

    const-string v1, "getReadHandlerReference()Lkotlinx/coroutines/CancellableContinuation;"

    const/4 v2, 0x0

    const-string v3, "readHandlerReference"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "receiver0"    # Ljava/lang/Object;

    .line 66
    move-object v0, p1

    check-cast v0, Lio/ktor/network/selector/InterestSuspensionsMap;

    invoke-static {v0}, Lio/ktor/network/selector/InterestSuspensionsMap;->access$getReadHandlerReference$p(Lio/ktor/network/selector/InterestSuspensionsMap;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "receiver0"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 66
    move-object v0, p1

    check-cast v0, Lio/ktor/network/selector/InterestSuspensionsMap;

    move-object v1, p2

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v0, v1}, Lio/ktor/network/selector/InterestSuspensionsMap;->access$setReadHandlerReference$p(Lio/ktor/network/selector/InterestSuspensionsMap;Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method
