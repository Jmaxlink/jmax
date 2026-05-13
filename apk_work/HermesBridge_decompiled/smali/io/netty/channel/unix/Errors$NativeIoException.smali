.class public final Lio/netty/channel/unix/Errors$NativeIoException;
.super Ljava/io/IOException;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/unix/Errors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x721afb2495c953a6L


# instance fields
.field private final expectedErr:I

.field private final fillInStackTrace:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "expectedErr"    # I

    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/unix/Errors$NativeIoException;-><init>(Ljava/lang/String;IZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "expectedErr"    # I
    .param p3, "fillInStackTrace"    # Z

    .line 87
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

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    iput p2, p0, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr:I

    .line 89
    iput-boolean p3, p0, Lio/netty/channel/unix/Errors$NativeIoException;->fillInStackTrace:Z

    .line 90
    return-void
.end method


# virtual methods
.method public expectedErr()I
    .locals 1

    .line 93
    iget v0, p0, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr:I

    return v0
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lio/netty/channel/unix/Errors$NativeIoException;->fillInStackTrace:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    .end local p0    # "this":Lio/netty/channel/unix/Errors$NativeIoException;
    :cond_0
    monitor-exit p0

    return-object p0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
