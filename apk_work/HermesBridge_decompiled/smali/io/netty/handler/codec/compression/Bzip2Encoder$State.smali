.class final enum Lio/netty/handler/codec/compression/Bzip2Encoder$State;
.super Ljava/lang/Enum;
.source "Bzip2Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/Bzip2Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/compression/Bzip2Encoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/compression/Bzip2Encoder$State;

.field public static final enum CLOSE_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

.field public static final enum INIT:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

.field public static final enum INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

.field public static final enum WRITE_DATA:Lio/netty/handler/codec/compression/Bzip2Encoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/Bzip2Encoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->INIT:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 45
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    const-string v1, "INIT_BLOCK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/Bzip2Encoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 46
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    const-string v1, "WRITE_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/Bzip2Encoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->WRITE_DATA:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 47
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    const-string v1, "CLOSE_BLOCK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/Bzip2Encoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->CLOSE_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 43
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->INIT:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    sget-object v1, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    sget-object v2, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->WRITE_DATA:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->CLOSE_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    filled-new-array {v0, v1, v2, v3}, [Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->$VALUES:[Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/compression/Bzip2Encoder$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/compression/Bzip2Encoder$State;
    .locals 1

    .line 43
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->$VALUES:[Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/compression/Bzip2Encoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    return-object v0
.end method
