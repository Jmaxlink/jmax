.class public final enum Lio/ktor/websocket/FrameType;
.super Ljava/lang/Enum;
.source "FrameType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/FrameType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/websocket/FrameType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameType.kt\nio/ktor/websocket/FrameType\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,50:1\n14166#2,14:51\n3133#2,11:65\n*S KotlinDebug\n*F\n+ 1 FrameType.kt\nio/ktor/websocket/FrameType\n*L\n39#1:51,14\n41#1:65,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/ktor/websocket/FrameType;",
        "",
        "controlFrame",
        "",
        "opcode",
        "",
        "(Ljava/lang/String;IZI)V",
        "getControlFrame",
        "()Z",
        "getOpcode",
        "()I",
        "TEXT",
        "BINARY",
        "CLOSE",
        "PING",
        "PONG",
        "Companion",
        "ktor-websockets"
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
.field private static final synthetic $VALUES:[Lio/ktor/websocket/FrameType;

.field public static final enum BINARY:Lio/ktor/websocket/FrameType;

.field public static final enum CLOSE:Lio/ktor/websocket/FrameType;

.field public static final Companion:Lio/ktor/websocket/FrameType$Companion;

.field public static final enum PING:Lio/ktor/websocket/FrameType;

.field public static final enum PONG:Lio/ktor/websocket/FrameType;

.field public static final enum TEXT:Lio/ktor/websocket/FrameType;

.field private static final byOpcodeArray:[Lio/ktor/websocket/FrameType;

.field private static final maxOpcode:I


# instance fields
.field private final controlFrame:Z

.field private final opcode:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/websocket/FrameType;
    .locals 5

    sget-object v0, Lio/ktor/websocket/FrameType;->TEXT:Lio/ktor/websocket/FrameType;

    sget-object v1, Lio/ktor/websocket/FrameType;->BINARY:Lio/ktor/websocket/FrameType;

    sget-object v2, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    sget-object v3, Lio/ktor/websocket/FrameType;->PING:Lio/ktor/websocket/FrameType;

    sget-object v4, Lio/ktor/websocket/FrameType;->PONG:Lio/ktor/websocket/FrameType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/ktor/websocket/FrameType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lio/ktor/websocket/FrameType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->TEXT:Lio/ktor/websocket/FrameType;

    .line 21
    new-instance v0, Lio/ktor/websocket/FrameType;

    const-string v1, "BINARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->BINARY:Lio/ktor/websocket/FrameType;

    .line 26
    new-instance v0, Lio/ktor/websocket/FrameType;

    const-string v1, "CLOSE"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v4, v3, v5}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    .line 31
    new-instance v0, Lio/ktor/websocket/FrameType;

    const/4 v1, 0x3

    const/16 v4, 0x9

    const-string v5, "PING"

    invoke-direct {v0, v5, v1, v3, v4}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->PING:Lio/ktor/websocket/FrameType;

    .line 36
    new-instance v0, Lio/ktor/websocket/FrameType;

    const/4 v1, 0x4

    const/16 v4, 0xa

    const-string v5, "PONG"

    invoke-direct {v0, v5, v1, v3, v4}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->PONG:Lio/ktor/websocket/FrameType;

    invoke-static {}, Lio/ktor/websocket/FrameType;->$values()[Lio/ktor/websocket/FrameType;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/FrameType;->$VALUES:[Lio/ktor/websocket/FrameType;

    new-instance v0, Lio/ktor/websocket/FrameType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/websocket/FrameType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/websocket/FrameType;->Companion:Lio/ktor/websocket/FrameType$Companion;

    .line 39
    invoke-static {}, Lio/ktor/websocket/FrameType;->values()[Lio/ktor/websocket/FrameType;

    move-result-object v0

    .local v0, "$this$maxByOrNull$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$f$maxByOrNull":I
    array-length v5, v0

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    if-eqz v5, :cond_1

    move-object v5, v1

    goto :goto_2

    .line 52
    :cond_1
    aget-object v5, v0, v2

    .line 53
    .local v5, "maxElem$iv":Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v6

    .line 54
    .local v6, "lastIndex$iv":I
    if-nez v6, :cond_2

    goto :goto_2

    .line 55
    :cond_2
    move-object v7, v5

    .local v7, "it":Lio/ktor/websocket/FrameType;
    const/4 v8, 0x0

    .line 39
    .local v8, "$i$a$-maxByOrNull-FrameType$Companion$maxOpcode$1":I
    iget v7, v7, Lio/ktor/websocket/FrameType;->opcode:I

    .line 55
    .end local v7    # "it":Lio/ktor/websocket/FrameType;
    .end local v8    # "$i$a$-maxByOrNull-FrameType$Companion$maxOpcode$1":I
    nop

    .line 56
    .local v7, "maxValue$iv":I
    new-instance v8, Lkotlin/ranges/IntRange;

    invoke-direct {v8, v3, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v8}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    .line 57
    .local v9, "i$iv":I
    aget-object v10, v0, v9

    .line 58
    .local v10, "e$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Lio/ktor/websocket/FrameType;
    const/4 v12, 0x0

    .line 39
    .local v12, "$i$a$-maxByOrNull-FrameType$Companion$maxOpcode$1":I
    iget v11, v11, Lio/ktor/websocket/FrameType;->opcode:I

    .line 58
    .end local v11    # "it":Lio/ktor/websocket/FrameType;
    .end local v12    # "$i$a$-maxByOrNull-FrameType$Companion$maxOpcode$1":I
    nop

    .line 59
    .local v11, "v$iv":I
    if-ge v7, v11, :cond_3

    .line 60
    move-object v5, v10

    .line 61
    move v7, v11

    .end local v9    # "i$iv":I
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "v$iv":I
    goto :goto_1

    .line 64
    :cond_4
    nop

    .end local v0    # "$this$maxByOrNull$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$maxByOrNull":I
    .end local v5    # "maxElem$iv":Ljava/lang/Object;
    .end local v6    # "lastIndex$iv":I
    .end local v7    # "maxValue$iv":I
    :goto_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v5, Lio/ktor/websocket/FrameType;->opcode:I

    .line 39
    sput v0, Lio/ktor/websocket/FrameType;->maxOpcode:I

    .line 41
    sget v0, Lio/ktor/websocket/FrameType;->maxOpcode:I

    add-int/2addr v0, v3

    new-array v4, v0, [Lio/ktor/websocket/FrameType;

    move v5, v2

    :goto_3
    if-ge v5, v0, :cond_a

    invoke-static {}, Lio/ktor/websocket/FrameType;->values()[Lio/ktor/websocket/FrameType;

    move-result-object v6

    .local v6, "$this$singleOrNull$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 65
    .local v7, "$i$f$singleOrNull":I
    const/4 v8, 0x0

    .line 66
    .local v8, "single$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 67
    .local v9, "found$iv":Z
    array-length v10, v6

    move v11, v2

    :goto_4
    if-ge v11, v10, :cond_8

    aget-object v12, v6, v11

    .line 68
    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it":Lio/ktor/websocket/FrameType;
    const/4 v14, 0x0

    .line 41
    .local v14, "$i$a$-singleOrNull-FrameType$Companion$byOpcodeArray$1$1":I
    iget v15, v13, Lio/ktor/websocket/FrameType;->opcode:I

    if-ne v15, v5, :cond_5

    move v13, v3

    goto :goto_5

    :cond_5
    move v13, v2

    .line 68
    .end local v13    # "it":Lio/ktor/websocket/FrameType;
    .end local v14    # "$i$a$-singleOrNull-FrameType$Companion$byOpcodeArray$1$1":I
    :goto_5
    if-eqz v13, :cond_7

    .line 69
    if-eqz v9, :cond_6

    move-object v8, v1

    goto :goto_6

    .line 70
    :cond_6
    move-object v8, v12

    .line 71
    const/4 v9, 0x1

    .line 67
    .end local v12    # "element$iv":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 74
    :cond_8
    if-nez v9, :cond_9

    move-object v8, v1

    goto :goto_6

    .line 75
    :cond_9
    nop

    .end local v6    # "$this$singleOrNull$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$singleOrNull":I
    .end local v8    # "single$iv":Ljava/lang/Object;
    .end local v9    # "found$iv":Z
    :goto_6
    aput-object v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 41
    goto :goto_3

    :cond_a
    sput-object v4, Lio/ktor/websocket/FrameType;->byOpcodeArray:[Lio/ktor/websocket/FrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "controlFrame"    # Z
    .param p4, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lio/ktor/websocket/FrameType;->controlFrame:Z

    iput p4, p0, Lio/ktor/websocket/FrameType;->opcode:I

    return-void
.end method

.method public static final synthetic access$getByOpcodeArray$cp()[Lio/ktor/websocket/FrameType;
    .locals 1

    .line 12
    sget-object v0, Lio/ktor/websocket/FrameType;->byOpcodeArray:[Lio/ktor/websocket/FrameType;

    return-object v0
.end method

.method public static final synthetic access$getMaxOpcode$cp()I
    .locals 1

    .line 12
    sget v0, Lio/ktor/websocket/FrameType;->maxOpcode:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/websocket/FrameType;
    .locals 1

    const-class v0, Lio/ktor/websocket/FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/FrameType;

    return-object v0
.end method

.method public static values()[Lio/ktor/websocket/FrameType;
    .locals 1

    sget-object v0, Lio/ktor/websocket/FrameType;->$VALUES:[Lio/ktor/websocket/FrameType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/websocket/FrameType;

    return-object v0
.end method


# virtual methods
.method public final getControlFrame()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lio/ktor/websocket/FrameType;->controlFrame:Z

    return v0
.end method

.method public final getOpcode()I
    .locals 1

    .line 12
    iget v0, p0, Lio/ktor/websocket/FrameType;->opcode:I

    return v0
.end method
