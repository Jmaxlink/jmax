.class public final enum Lio/ktor/http/RangeUnits;
.super Ljava/lang/Enum;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/http/RangeUnits;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ktor/http/RangeUnits;",
        "",
        "unitToken",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getUnitToken",
        "()Ljava/lang/String;",
        "Bytes",
        "None",
        "ktor-http"
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
.field private static final synthetic $VALUES:[Lio/ktor/http/RangeUnits;

.field public static final enum Bytes:Lio/ktor/http/RangeUnits;

.field public static final enum None:Lio/ktor/http/RangeUnits;


# instance fields
.field private final unitToken:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/ktor/http/RangeUnits;
    .locals 2

    sget-object v0, Lio/ktor/http/RangeUnits;->Bytes:Lio/ktor/http/RangeUnits;

    sget-object v1, Lio/ktor/http/RangeUnits;->None:Lio/ktor/http/RangeUnits;

    filled-new-array {v0, v1}, [Lio/ktor/http/RangeUnits;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lio/ktor/http/RangeUnits;

    const/4 v1, 0x0

    const-string v2, "bytes"

    const-string v3, "Bytes"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/http/RangeUnits;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/RangeUnits;->Bytes:Lio/ktor/http/RangeUnits;

    .line 23
    new-instance v0, Lio/ktor/http/RangeUnits;

    const/4 v1, 0x1

    const-string v2, "none"

    const-string v3, "None"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/http/RangeUnits;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/RangeUnits;->None:Lio/ktor/http/RangeUnits;

    invoke-static {}, Lio/ktor/http/RangeUnits;->$values()[Lio/ktor/http/RangeUnits;

    move-result-object v0

    sput-object v0, Lio/ktor/http/RangeUnits;->$VALUES:[Lio/ktor/http/RangeUnits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "unitToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/ktor/http/RangeUnits;->unitToken:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/http/RangeUnits;
    .locals 1

    const-class v0, Lio/ktor/http/RangeUnits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ktor/http/RangeUnits;

    return-object v0
.end method

.method public static values()[Lio/ktor/http/RangeUnits;
    .locals 1

    sget-object v0, Lio/ktor/http/RangeUnits;->$VALUES:[Lio/ktor/http/RangeUnits;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/http/RangeUnits;

    return-object v0
.end method


# virtual methods
.method public final getUnitToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/ktor/http/RangeUnits;->unitToken:Ljava/lang/String;

    return-object v0
.end method
