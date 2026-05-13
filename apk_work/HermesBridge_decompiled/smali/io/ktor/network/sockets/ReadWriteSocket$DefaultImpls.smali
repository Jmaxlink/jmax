.class public final Lio/ktor/network/sockets/ReadWriteSocket$DefaultImpls;
.super Ljava/lang/Object;
.source "Sockets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/ReadWriteSocket;
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
.method public static dispose(Lio/ktor/network/sockets/ReadWriteSocket;)V
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/sockets/ReadWriteSocket;

    .line 104
    move-object v0, p0

    check-cast v0, Lio/ktor/network/sockets/ASocket;

    invoke-static {v0}, Lio/ktor/network/sockets/ASocket$DefaultImpls;->dispose(Lio/ktor/network/sockets/ASocket;)V

    return-void
.end method
