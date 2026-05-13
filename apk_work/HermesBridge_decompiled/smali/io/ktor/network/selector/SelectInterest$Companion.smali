.class public final Lio/ktor/network/selector/SelectInterest$Companion;
.super Ljava/lang/Object;
.source "SelectorManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/SelectInterest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/ktor/network/selector/SelectInterest$Companion;",
        "",
        "()V",
        "AllInterests",
        "",
        "Lio/ktor/network/selector/SelectInterest;",
        "getAllInterests",
        "()[Lio/ktor/network/selector/SelectInterest;",
        "[Lio/ktor/network/selector/SelectInterest;",
        "flags",
        "",
        "getFlags",
        "()[I",
        "size",
        "",
        "getSize",
        "()I",
        "ktor-network"
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/network/selector/SelectInterest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllInterests()[Lio/ktor/network/selector/SelectInterest;
    .locals 1

    .line 75
    invoke-static {}, Lio/ktor/network/selector/SelectInterest;->access$getAllInterests$cp()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v0

    return-object v0
.end method

.method public final getFlags()[I
    .locals 1

    .line 77
    invoke-static {}, Lio/ktor/network/selector/SelectInterest;->access$getFlags$cp()[I

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 79
    invoke-static {}, Lio/ktor/network/selector/SelectInterest;->access$getSize$cp()I

    move-result v0

    return v0
.end method
