.class public final Lio/ktor/network/selector/SelectorManagerSupportKt;
.super Ljava/lang/Object;
.source "SelectorManagerSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "selectableIsClosed",
        "",
        "selectableIsInvalid",
        "interestedOps",
        "",
        "flag",
        "ktor-network"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$selectableIsClosed()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lio/ktor/network/selector/SelectorManagerSupportKt;->selectableIsClosed()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$selectableIsInvalid(II)Ljava/lang/Void;
    .locals 1
    .param p0, "interestedOps"    # I
    .param p1, "flag"    # I

    .line 1
    invoke-static {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupportKt;->selectableIsInvalid(II)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static final selectableIsClosed()Ljava/lang/Void;
    .locals 2

    .line 179
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selectable is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final selectableIsInvalid(II)Ljava/lang/Void;
    .locals 3
    .param p0, "interestedOps"    # I
    .param p1, "flag"    # I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selectable is invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
