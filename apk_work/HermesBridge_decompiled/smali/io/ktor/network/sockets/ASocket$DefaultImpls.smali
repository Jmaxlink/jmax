.class public final Lio/ktor/network/sockets/ASocket$DefaultImpls;
.super Ljava/lang/Object;
.source "Sockets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/ASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static dispose(Lio/ktor/network/sockets/ASocket;)V
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/sockets/ASocket;

    .line 22
    nop

    .line 23
    :try_start_0
    invoke-interface {p0}, Lio/ktor/network/sockets/ASocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 26
    :goto_0
    return-void
.end method
