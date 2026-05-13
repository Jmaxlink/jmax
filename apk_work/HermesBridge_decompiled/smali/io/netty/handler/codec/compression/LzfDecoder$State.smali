.class final enum Lio/netty/handler/codec/compression/LzfDecoder$State;
.super Ljava/lang/Enum;
.source "LzfDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/LzfDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/compression/LzfDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/compression/LzfDecoder$State;

.field public static final enum CORRUPTED:Lio/netty/handler/codec/compression/LzfDecoder$State;

.field public static final enum DECOMPRESS_DATA:Lio/netty/handler/codec/compression/LzfDecoder$State;

.field public static final enum INIT_BLOCK:Lio/netty/handler/codec/compression/LzfDecoder$State;

.field public static final enum INIT_ORIGINAL_LENGTH:Lio/netty/handler/codec/compression/LzfDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lio/netty/handler/codec/compression/LzfDecoder$State;

    const-string v1, "INIT_BLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/LzfDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 46
    new-instance v0, Lio/netty/handler/codec/compression/LzfDecoder$State;

    const-string v1, "INIT_ORIGINAL_LENGTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/LzfDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_ORIGINAL_LENGTH:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 47
    new-instance v0, Lio/netty/handler/codec/compression/LzfDecoder$State;

    const-string v1, "DECOMPRESS_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/LzfDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 48
    new-instance v0, Lio/netty/handler/codec/compression/LzfDecoder$State;

    const-string v1, "CORRUPTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/LzfDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 44
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/LzfDecoder$State;

    sget-object v1, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_ORIGINAL_LENGTH:Lio/netty/handler/codec/compression/LzfDecoder$State;

    sget-object v2, Lio/netty/handler/codec/compression/LzfDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/LzfDecoder$State;

    sget-object v3, Lio/netty/handler/codec/compression/LzfDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/LzfDecoder$State;

    filled-new-array {v0, v1, v2, v3}, [Lio/netty/handler/codec/compression/LzfDecoder$State;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->$VALUES:[Lio/netty/handler/codec/compression/LzfDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/compression/LzfDecoder$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lio/netty/handler/codec/compression/LzfDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/compression/LzfDecoder$State;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/compression/LzfDecoder$State;
    .locals 1

    .line 44
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->$VALUES:[Lio/netty/handler/codec/compression/LzfDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/compression/LzfDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/compression/LzfDecoder$State;

    return-object v0
.end method
