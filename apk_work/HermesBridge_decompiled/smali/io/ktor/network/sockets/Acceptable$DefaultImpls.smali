.class public final Lio/ktor/network/sockets/Acceptable$DefaultImpls;
.super Ljava/lang/Object;
.source "Sockets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/Acceptable;
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
.method public static dispose(Lio/ktor/network/sockets/Acceptable;)V
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/sockets/Acceptable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lio/ktor/network/sockets/ASocket;",
            ">(",
            "Lio/ktor/network/sockets/Acceptable<",
            "+TS;>;)V"
        }
    .end annotation

    .line 67
    move-object v0, p0

    check-cast v0, Lio/ktor/network/sockets/ASocket;

    invoke-static {v0}, Lio/ktor/network/sockets/ASocket$DefaultImpls;->dispose(Lio/ktor/network/sockets/ASocket;)V

    .line 73
    return-void
.end method
