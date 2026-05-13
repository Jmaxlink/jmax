.class public final Lio/ktor/util/AttributesJvmKt;
.super Ljava/lang/Object;
.source "AttributesJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Attributes",
        "Lio/ktor/util/Attributes;",
        "concurrent",
        "",
        "ktor-utils"
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
.method public static final Attributes(Z)Lio/ktor/util/Attributes;
    .locals 1
    .param p0, "concurrent"    # Z

    .line 13
    if-eqz p0, :cond_0

    new-instance v0, Lio/ktor/util/ConcurrentSafeAttributes;

    invoke-direct {v0}, Lio/ktor/util/ConcurrentSafeAttributes;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/util/HashMapAttributes;

    invoke-direct {v0}, Lio/ktor/util/HashMapAttributes;-><init>()V

    :goto_0
    check-cast v0, Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public static synthetic Attributes$default(ZILjava/lang/Object;)Lio/ktor/util/Attributes;
    .locals 0

    .line 12
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 43
    const/4 p0, 0x0

    .line 12
    :cond_0
    invoke-static {p0}, Lio/ktor/util/AttributesJvmKt;->Attributes(Z)Lio/ktor/util/Attributes;

    move-result-object p0

    return-object p0
.end method
