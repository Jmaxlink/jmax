.class final synthetic Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "DefaultPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/pool/DefaultPool;
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
.field public static final INSTANCE:Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;

    invoke-direct {v0}, Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;->INSTANCE:Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lio/ktor/utils/io/pool/DefaultPool;

    const-string v1, "getTop()J"

    const/4 v2, 0x0

    const-string v3, "top"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "receiver0"    # Ljava/lang/Object;

    .line 111
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/pool/DefaultPool;

    invoke-static {v0}, Lio/ktor/utils/io/pool/DefaultPool;->access$getTop$p(Lio/ktor/utils/io/pool/DefaultPool;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "receiver0"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 111
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/pool/DefaultPool;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/ktor/utils/io/pool/DefaultPool;->access$setTop$p(Lio/ktor/utils/io/pool/DefaultPool;J)V

    return-void
.end method
