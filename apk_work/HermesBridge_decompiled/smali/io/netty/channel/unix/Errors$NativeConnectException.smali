.class final Lio/netty/channel/unix/Errors$NativeConnectException;
.super Ljava/net/ConnectException;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/unix/Errors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NativeConnectException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4cc6c79d8a1f12d1L


# instance fields
.field private final expectedErr:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "expectedErr"    # I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(..) failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int v1, p2

    invoke-static {v1}, Lio/netty/channel/unix/Errors;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 110
    iput p2, p0, Lio/netty/channel/unix/Errors$NativeConnectException;->expectedErr:I

    .line 111
    return-void
.end method


# virtual methods
.method expectedErr()I
    .locals 1

    .line 114
    iget v0, p0, Lio/netty/channel/unix/Errors$NativeConnectException;->expectedErr:I

    return v0
.end method
