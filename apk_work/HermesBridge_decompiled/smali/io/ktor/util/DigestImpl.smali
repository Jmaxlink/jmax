.class final Lio/ktor/util/DigestImpl;
.super Ljava/lang/Object;
.source "CryptoJvm.kt"

# interfaces
.implements Lio/ktor/util/Digest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0083@\u0018\u00002\u00020\u0001B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0008\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\tH\u0096\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0088\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\""
    }
    d2 = {
        "Lio/ktor/util/DigestImpl;",
        "Lio/ktor/util/Digest;",
        "delegate",
        "Ljava/security/MessageDigest;",
        "constructor-impl",
        "(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;",
        "getDelegate",
        "()Ljava/security/MessageDigest;",
        "build",
        "",
        "build-impl",
        "(Ljava/security/MessageDigest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "equals",
        "",
        "other",
        "",
        "equals-impl",
        "(Ljava/security/MessageDigest;Ljava/lang/Object;)Z",
        "hashCode",
        "",
        "hashCode-impl",
        "(Ljava/security/MessageDigest;)I",
        "plusAssign",
        "",
        "bytes",
        "plusAssign-impl",
        "(Ljava/security/MessageDigest;[B)V",
        "reset",
        "reset-impl",
        "(Ljava/security/MessageDigest;)V",
        "toString",
        "",
        "toString-impl",
        "(Ljava/security/MessageDigest;)Ljava/lang/String;",
        "ktor-utils"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final delegate:Ljava/security/MessageDigest;


# direct methods
.method private synthetic constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "delegate"    # Ljava/security/MessageDigest;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    return-void
.end method

.method public static final synthetic box-impl(Ljava/security/MessageDigest;)Lio/ktor/util/DigestImpl;
    .locals 1

    new-instance v0, Lio/ktor/util/DigestImpl;

    invoke-direct {v0, p0}, Lio/ktor/util/DigestImpl;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static build-impl(Ljava/security/MessageDigest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "arg0"    # Ljava/security/MessageDigest;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/MessageDigest;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, "delegate.digest()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructor-impl(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl(Ljava/security/MessageDigest;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/ktor/util/DigestImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/ktor/util/DigestImpl;

    invoke-virtual {v0}, Lio/ktor/util/DigestImpl;->unbox-impl()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(Ljava/security/MessageDigest;Ljava/security/MessageDigest;)Z
    .locals 1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hashCode-impl(Ljava/security/MessageDigest;)I
    .locals 1

    invoke-virtual {p0}, Ljava/security/MessageDigest;->hashCode()I

    move-result v0

    return v0
.end method

.method public static plusAssign-impl(Ljava/security/MessageDigest;[B)V
    .locals 1
    .param p0, "arg0"    # Ljava/security/MessageDigest;
    .param p1, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    return-void
.end method

.method public static reset-impl(Ljava/security/MessageDigest;)V
    .locals 0
    .param p0, "arg0"    # Ljava/security/MessageDigest;

    .line 47
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    .line 48
    return-void
.end method

.method public static toString-impl(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DigestImpl(delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lio/ktor/util/DigestImpl;->build-impl(Ljava/security/MessageDigest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lio/ktor/util/DigestImpl;->equals-impl(Ljava/security/MessageDigest;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getDelegate()Ljava/security/MessageDigest;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    invoke-static {v0}, Lio/ktor/util/DigestImpl;->hashCode-impl(Ljava/security/MessageDigest;)I

    move-result v0

    return v0
.end method

.method public plusAssign([B)V
    .locals 1
    .param p1, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lio/ktor/util/DigestImpl;->plusAssign-impl(Ljava/security/MessageDigest;[B)V

    .line 44
    return-void
.end method

.method public reset()V
    .locals 1

    .line 46
    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    invoke-static {v0}, Lio/ktor/util/DigestImpl;->reset-impl(Ljava/security/MessageDigest;)V

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    invoke-static {v0}, Lio/ktor/util/DigestImpl;->toString-impl(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/DigestImpl;->delegate:Ljava/security/MessageDigest;

    return-object v0
.end method
