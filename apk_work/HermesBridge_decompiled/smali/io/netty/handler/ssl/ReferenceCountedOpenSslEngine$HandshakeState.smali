.class final enum Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
.super Ljava/lang/Enum;
.source "ReferenceCountedOpenSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HandshakeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 140
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 144
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v1, "STARTED_IMPLICITLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 148
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v1, "STARTED_EXPLICITLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 152
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v1, "FINISHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 136
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    filled-new-array {v0, v1, v2, v3}, [Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->$VALUES:[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 136
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .locals 1

    .line 136
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->$VALUES:[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-object v0
.end method
