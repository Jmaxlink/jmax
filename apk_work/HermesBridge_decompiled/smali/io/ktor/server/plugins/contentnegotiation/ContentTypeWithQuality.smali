.class public final Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
.super Ljava/lang/Object;
.source "ContentNegotiation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentNegotiation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentNegotiation.kt\nio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
        "",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "quality",
        "",
        "(Lio/ktor/http/ContentType;D)V",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "getQuality",
        "()D",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "ktor-server-content-negotiation"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final contentType:Lio/ktor/http/ContentType;

.field private final quality:D


# direct methods
.method public constructor <init>(Lio/ktor/http/ContentType;D)V
    .locals 6
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "quality"    # D

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    iput-wide p2, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    .line 37
    nop

    .line 38
    iget-wide v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    const-wide/16 v2, 0x0

    cmpg-double v2, v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 39
    nop

    .line 36
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 38
    .local v0, "$i$a$-require-ContentTypeWithQuality$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality should be in range [0, 1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ContentTypeWithQuality$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Lio/ktor/http/ContentType;DILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;-><init>(Lio/ktor/http/ContentType;D)V

    .line 40
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;Lio/ktor/http/ContentType;DILjava/lang/Object;)Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->copy(Lio/ktor/http/ContentType;D)Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ktor/http/ContentType;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    return-wide v0
.end method

.method public final copy(Lio/ktor/http/ContentType;D)Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;-><init>(Lio/ktor/http/ContentType;D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    iget-object v3, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    iget-object v4, v1, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    iget-wide v5, v1, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getQuality()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    invoke-virtual {v0}, Lio/ktor/http/ContentType;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentTypeWithQuality(contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->contentType:Lio/ktor/http/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->quality:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
