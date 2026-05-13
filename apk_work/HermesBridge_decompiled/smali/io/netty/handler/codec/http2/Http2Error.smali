.class public final enum Lio/netty/handler/codec/http2/Http2Error;
.super Ljava/lang/Enum;
.source "Http2Error.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum CANCEL:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum CONNECT_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum FRAME_SIZE_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum HTTP_1_1_REQUIRED:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum INADEQUATE_SECURITY:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field private static final INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum SETTINGS_TIMEOUT:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;


# instance fields
.field private final code:J


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 25
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const-wide/16 v1, 0x0

    const-string v3, "NO_ERROR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 26
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v5, "PROTOCOL_ERROR"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 27
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v5, "INTERNAL_ERROR"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 28
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-string v5, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 29
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x4

    const-wide/16 v2, 0x4

    const-string v5, "SETTINGS_TIMEOUT"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->SETTINGS_TIMEOUT:Lio/netty/handler/codec/http2/Http2Error;

    .line 30
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    const-string v5, "STREAM_CLOSED"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 31
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x6

    const-wide/16 v2, 0x6

    const-string v5, "FRAME_SIZE_ERROR"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 32
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x7

    const-wide/16 v2, 0x7

    const-string v5, "REFUSED_STREAM"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

    .line 33
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/16 v1, 0x8

    const-wide/16 v2, 0x8

    const-string v5, "CANCEL"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    .line 34
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/16 v1, 0x9

    const-wide/16 v2, 0x9

    const-string v5, "COMPRESSION_ERROR"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 35
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/16 v1, 0xa

    const-wide/16 v2, 0xa

    const-string v5, "CONNECT_ERROR"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->CONNECT_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 36
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/16 v1, 0xb

    const-wide/16 v2, 0xb

    const-string v5, "ENHANCE_YOUR_CALM"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    .line 37
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/16 v1, 0xc

    const-wide/16 v2, 0xc

    const-string v5, "INADEQUATE_SECURITY"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->INADEQUATE_SECURITY:Lio/netty/handler/codec/http2/Http2Error;

    .line 38
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const/16 v1, 0xd

    const-wide/16 v2, 0xd

    const-string v5, "HTTP_1_1_REQUIRED"

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->HTTP_1_1_REQUIRED:Lio/netty/handler/codec/http2/Http2Error;

    .line 23
    sget-object v6, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v7, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v8, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v9, Lio/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v10, Lio/netty/handler/codec/http2/Http2Error;->SETTINGS_TIMEOUT:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v11, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v12, Lio/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v13, Lio/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v14, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v15, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v16, Lio/netty/handler/codec/http2/Http2Error;->CONNECT_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v17, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v18, Lio/netty/handler/codec/http2/Http2Error;->INADEQUATE_SECURITY:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v19, Lio/netty/handler/codec/http2/Http2Error;->HTTP_1_1_REQUIRED:Lio/netty/handler/codec/http2/Http2Error;

    filled-new-array/range {v6 .. v19}, [Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->$VALUES:[Lio/netty/handler/codec/http2/Http2Error;

    .line 43
    invoke-static {}, Lio/netty/handler/codec/http2/Http2Error;->values()[Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    .line 44
    .local v0, "errors":[Lio/netty/handler/codec/http2/Http2Error;
    array-length v1, v0

    new-array v1, v1, [Lio/netty/handler/codec/http2/Http2Error;

    .line 45
    .local v1, "map":[Lio/netty/handler/codec/http2/Http2Error;
    array-length v2, v0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v3, v0, v4

    .line 46
    .local v3, "error":Lio/netty/handler/codec/http2/Http2Error;
    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v5

    long-to-int v5, v5

    aput-object v3, v1, v5

    .line 45
    .end local v3    # "error":Lio/netty/handler/codec/http2/Http2Error;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_0
    sput-object v1, Lio/netty/handler/codec/http2/Http2Error;->INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

    .line 49
    .end local v0    # "errors":[Lio/netty/handler/codec/http2/Http2Error;
    .end local v1    # "map":[Lio/netty/handler/codec/http2/Http2Error;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .param p3, "code"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-wide p3, p0, Lio/netty/handler/codec/http2/Http2Error;->code:J

    .line 53
    return-void
.end method

.method public static valueOf(J)Lio/netty/handler/codec/http2/Http2Error;
    .locals 2
    .param p0, "value"    # J

    .line 63
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

    long-to-int v1, p0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    .line 23
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->$VALUES:[Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method


# virtual methods
.method public code()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lio/netty/handler/codec/http2/Http2Error;->code:J

    return-wide v0
.end method
