.class public Lio/ktor/util/StringValuesSingleImpl;
.super Ljava/lang/Object;
.source "StringValues.kt"

# interfaces
.implements Lio/ktor/util/StringValues;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0002J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J \u0010\u0011\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00070\u00130\u0012H\u0016J\u0013\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J(\u0010\u0017\u001a\u00020\u00182\u001e\u0010\u0019\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0004\u0012\u00020\u00180\u001aH\u0016J\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0002J\u0018\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0003H\u0016J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0012H\u0016J\u0008\u0010!\u001a\u00020\u0005H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lio/ktor/util/StringValuesSingleImpl;",
        "Lio/ktor/util/StringValues;",
        "caseInsensitiveName",
        "",
        "name",
        "",
        "values",
        "",
        "(ZLjava/lang/String;Ljava/util/List;)V",
        "getCaseInsensitiveName",
        "()Z",
        "getName",
        "()Ljava/lang/String;",
        "getValues",
        "()Ljava/util/List;",
        "contains",
        "value",
        "entries",
        "",
        "",
        "equals",
        "other",
        "",
        "forEach",
        "",
        "body",
        "Lkotlin/Function2;",
        "get",
        "getAll",
        "hashCode",
        "",
        "isEmpty",
        "names",
        "toString",
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


# instance fields
.field private final caseInsensitiveName:Z

.field private final name:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "caseInsensitiveName"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean p1, p0, Lio/ktor/util/StringValuesSingleImpl;->caseInsensitiveName:Z

    .line 106
    iput-object p2, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lio/ktor/util/StringValuesSingleImpl;->values:Ljava/util/List;

    .line 104
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->getCaseInsensitiveName()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->getCaseInsensitiveName()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lio/ktor/util/StringValuesSingleImpl$entries$1;

    invoke-direct {v0, p0}, Lio/ktor/util/StringValuesSingleImpl$entries$1;-><init>(Lio/ktor/util/StringValuesSingleImpl;)V

    .line 112
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 136
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    instance-of v0, p1, Lio/ktor/util/StringValues;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 138
    :cond_1
    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->getCaseInsensitiveName()Z

    move-result v0

    move-object v2, p1

    check-cast v2, Lio/ktor/util/StringValues;

    invoke-interface {v2}, Lio/ktor/util/StringValues;->getCaseInsensitiveName()Z

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 139
    :cond_2
    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->entries()Ljava/util/Set;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lio/ktor/util/StringValues;

    invoke-interface {v1}, Lio/ktor/util/StringValues;->entries()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lio/ktor/util/StringValuesKt;->access$entriesEquals(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    iget-object v1, p0, Lio/ktor/util/StringValuesSingleImpl;->values:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->getCaseInsensitiveName()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->values:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->getCaseInsensitiveName()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->values:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCaseInsensitiveName()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lio/ktor/util/StringValuesSingleImpl;->caseInsensitiveName:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->values:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->getCaseInsensitiveName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v0, v1}, Lio/ktor/util/StringValuesKt;->access$entriesHashCode(Ljava/util/Set;I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public names()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lio/ktor/util/StringValuesSingleImpl;->name:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringValues(case="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->getCaseInsensitiveName()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/util/StringValuesSingleImpl;->entries()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
