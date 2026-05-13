.class final enum Lio/netty/channel/embedded/EmbeddedChannel$State;
.super Ljava/lang/Enum;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/embedded/EmbeddedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/channel/embedded/EmbeddedChannel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/channel/embedded/EmbeddedChannel$State;

.field public static final enum ACTIVE:Lio/netty/channel/embedded/EmbeddedChannel$State;

.field public static final enum CLOSED:Lio/netty/channel/embedded/EmbeddedChannel$State;

.field public static final enum OPEN:Lio/netty/channel/embedded/EmbeddedChannel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$State;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/channel/embedded/EmbeddedChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->OPEN:Lio/netty/channel/embedded/EmbeddedChannel$State;

    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/channel/embedded/EmbeddedChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->ACTIVE:Lio/netty/channel/embedded/EmbeddedChannel$State;

    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/embedded/EmbeddedChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->CLOSED:Lio/netty/channel/embedded/EmbeddedChannel$State;

    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->OPEN:Lio/netty/channel/embedded/EmbeddedChannel$State;

    sget-object v1, Lio/netty/channel/embedded/EmbeddedChannel$State;->ACTIVE:Lio/netty/channel/embedded/EmbeddedChannel$State;

    sget-object v2, Lio/netty/channel/embedded/EmbeddedChannel$State;->CLOSED:Lio/netty/channel/embedded/EmbeddedChannel$State;

    filled-new-array {v0, v1, v2}, [Lio/netty/channel/embedded/EmbeddedChannel$State;

    move-result-object v0

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->$VALUES:[Lio/netty/channel/embedded/EmbeddedChannel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/channel/embedded/EmbeddedChannel$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lio/netty/channel/embedded/EmbeddedChannel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/channel/embedded/EmbeddedChannel$State;

    return-object v0
.end method

.method public static values()[Lio/netty/channel/embedded/EmbeddedChannel$State;
    .locals 1

    .line 57
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->$VALUES:[Lio/netty/channel/embedded/EmbeddedChannel$State;

    invoke-virtual {v0}, [Lio/netty/channel/embedded/EmbeddedChannel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/channel/embedded/EmbeddedChannel$State;

    return-object v0
.end method
