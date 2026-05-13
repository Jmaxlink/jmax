.class public final Lio/ktor/websocket/Frame$Companion;
.super Ljava/lang/Object;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/Frame$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/websocket/Frame$Companion;",
        "",
        "()V",
        "Empty",
        "",
        "byType",
        "Lio/ktor/websocket/Frame;",
        "fin",
        "",
        "frameType",
        "Lio/ktor/websocket/FrameType;",
        "data",
        "rsv1",
        "rsv2",
        "rsv3",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/websocket/Frame$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byType(ZLio/ktor/websocket/FrameType;[BZZZ)Lio/ktor/websocket/Frame;
    .locals 7
    .param p1, "fin"    # Z
    .param p2, "frameType"    # Lio/ktor/websocket/FrameType;
    .param p3, "data"    # [B
    .param p4, "rsv1"    # Z
    .param p5, "rsv2"    # Z
    .param p6, "rsv3"    # Z

    const-string v0, "frameType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lio/ktor/websocket/Frame$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/websocket/FrameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lio/ktor/websocket/Frame$Pong;

    sget-object v1, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    invoke-direct {v0, p3, v1}, Lio/ktor/websocket/Frame$Pong;-><init>([BLkotlinx/coroutines/DisposableHandle;)V

    check-cast v0, Lio/ktor/websocket/Frame;

    goto :goto_0

    .line 151
    :pswitch_1
    new-instance v0, Lio/ktor/websocket/Frame$Ping;

    invoke-direct {v0, p3}, Lio/ktor/websocket/Frame$Ping;-><init>([B)V

    check-cast v0, Lio/ktor/websocket/Frame;

    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v0, Lio/ktor/websocket/Frame$Close;

    invoke-direct {v0, p3}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    check-cast v0, Lio/ktor/websocket/Frame;

    goto :goto_0

    .line 149
    :pswitch_3
    new-instance v0, Lio/ktor/websocket/Frame$Text;

    move-object v1, v0

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lio/ktor/websocket/Frame$Text;-><init>(Z[BZZZ)V

    check-cast v0, Lio/ktor/websocket/Frame;

    goto :goto_0

    .line 148
    :pswitch_4
    new-instance v0, Lio/ktor/websocket/Frame$Binary;

    move-object v1, v0

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lio/ktor/websocket/Frame$Binary;-><init>(Z[BZZZ)V

    check-cast v0, Lio/ktor/websocket/Frame;

    .line 153
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
