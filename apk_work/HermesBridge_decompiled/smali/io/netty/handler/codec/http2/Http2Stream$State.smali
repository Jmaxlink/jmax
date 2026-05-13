.class public final enum Lio/netty/handler/codec/http2/Http2Stream$State;
.super Ljava/lang/Enum;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2Stream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum HALF_CLOSED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum OPEN:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum RESERVED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum RESERVED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;


# instance fields
.field private final localSideOpen:Z

.field private final remoteSideOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 31
    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "RESERVED_LOCAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 32
    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "RESERVED_REMOTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 33
    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "OPEN"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3, v3}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->OPEN:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 34
    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "HALF_CLOSED_LOCAL"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 35
    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "HALF_CLOSED_REMOTE"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 36
    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "CLOSED"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    .line 29
    sget-object v4, Lio/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

    sget-object v5, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    sget-object v6, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    sget-object v7, Lio/netty/handler/codec/http2/Http2Stream$State;->OPEN:Lio/netty/handler/codec/http2/Http2Stream$State;

    sget-object v8, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    sget-object v9, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    sget-object v10, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    filled-new-array/range {v4 .. v10}, [Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->$VALUES:[Lio/netty/handler/codec/http2/Http2Stream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "localSideOpen"    # Z
    .param p4, "remoteSideOpen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->localSideOpen:Z

    .line 43
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->remoteSideOpen:Z

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Stream$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2Stream$State;
    .locals 1

    .line 29
    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->$VALUES:[Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2Stream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/Http2Stream$State;

    return-object v0
.end method


# virtual methods
.method public localSideOpen()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->localSideOpen:Z

    return v0
.end method

.method public remoteSideOpen()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->remoteSideOpen:Z

    return v0
.end method
