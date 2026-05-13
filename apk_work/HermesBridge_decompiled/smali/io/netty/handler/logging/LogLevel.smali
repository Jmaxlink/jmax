.class public final enum Lio/netty/handler/logging/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/logging/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/logging/LogLevel;

.field public static final enum DEBUG:Lio/netty/handler/logging/LogLevel;

.field public static final enum ERROR:Lio/netty/handler/logging/LogLevel;

.field public static final enum INFO:Lio/netty/handler/logging/LogLevel;

.field public static final enum TRACE:Lio/netty/handler/logging/LogLevel;

.field public static final enum WARN:Lio/netty/handler/logging/LogLevel;


# instance fields
.field private final internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lio/netty/handler/logging/LogLevel;

    const/4 v1, 0x0

    sget-object v2, Lio/netty/util/internal/logging/InternalLogLevel;->TRACE:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v3, "TRACE"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v0, Lio/netty/handler/logging/LogLevel;->TRACE:Lio/netty/handler/logging/LogLevel;

    .line 25
    new-instance v0, Lio/netty/handler/logging/LogLevel;

    const/4 v1, 0x1

    sget-object v2, Lio/netty/util/internal/logging/InternalLogLevel;->DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v3, "DEBUG"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v0, Lio/netty/handler/logging/LogLevel;->DEBUG:Lio/netty/handler/logging/LogLevel;

    .line 26
    new-instance v0, Lio/netty/handler/logging/LogLevel;

    const/4 v1, 0x2

    sget-object v2, Lio/netty/util/internal/logging/InternalLogLevel;->INFO:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v3, "INFO"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v0, Lio/netty/handler/logging/LogLevel;->INFO:Lio/netty/handler/logging/LogLevel;

    .line 27
    new-instance v0, Lio/netty/handler/logging/LogLevel;

    const/4 v1, 0x3

    sget-object v2, Lio/netty/util/internal/logging/InternalLogLevel;->WARN:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v3, "WARN"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v0, Lio/netty/handler/logging/LogLevel;->WARN:Lio/netty/handler/logging/LogLevel;

    .line 28
    new-instance v0, Lio/netty/handler/logging/LogLevel;

    const/4 v1, 0x4

    sget-object v2, Lio/netty/util/internal/logging/InternalLogLevel;->ERROR:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v0, Lio/netty/handler/logging/LogLevel;->ERROR:Lio/netty/handler/logging/LogLevel;

    .line 23
    sget-object v0, Lio/netty/handler/logging/LogLevel;->TRACE:Lio/netty/handler/logging/LogLevel;

    sget-object v1, Lio/netty/handler/logging/LogLevel;->DEBUG:Lio/netty/handler/logging/LogLevel;

    sget-object v2, Lio/netty/handler/logging/LogLevel;->INFO:Lio/netty/handler/logging/LogLevel;

    sget-object v3, Lio/netty/handler/logging/LogLevel;->WARN:Lio/netty/handler/logging/LogLevel;

    sget-object v4, Lio/netty/handler/logging/LogLevel;->ERROR:Lio/netty/handler/logging/LogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/netty/handler/logging/LogLevel;

    move-result-object v0

    sput-object v0, Lio/netty/handler/logging/LogLevel;->$VALUES:[Lio/netty/handler/logging/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V
    .locals 0
    .param p3, "internalLevel"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/logging/InternalLogLevel;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lio/netty/handler/logging/LogLevel;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/logging/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lio/netty/handler/logging/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/logging/LogLevel;
    .locals 1

    .line 23
    sget-object v0, Lio/netty/handler/logging/LogLevel;->$VALUES:[Lio/netty/handler/logging/LogLevel;

    invoke-virtual {v0}, [Lio/netty/handler/logging/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/logging/LogLevel;

    return-object v0
.end method


# virtual methods
.method public toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/netty/handler/logging/LogLevel;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    return-object v0
.end method
