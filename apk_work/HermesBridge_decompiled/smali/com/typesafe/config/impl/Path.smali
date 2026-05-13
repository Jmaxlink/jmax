.class final Lcom/typesafe/config/impl/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field private final first:Ljava/lang/String;

.field private final remainder:Lcom/typesafe/config/impl/Path;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)V
    .locals 0
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "remainder"    # Lcom/typesafe/config/impl/Path;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    .line 18
    return-void
.end method

.method constructor <init>(Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Path;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/Path;

    .line 46
    .local v0, "firstPath":Lcom/typesafe/config/impl/Path;
    iget-object v1, v0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    iput-object v1, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    .line 48
    new-instance v1, Lcom/typesafe/config/impl/PathBuilder;

    invoke-direct {v1}, Lcom/typesafe/config/impl/PathBuilder;-><init>()V

    .line 49
    .local v1, "pb":Lcom/typesafe/config/impl/PathBuilder;
    iget-object v2, v0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, v0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v1, v2}, Lcom/typesafe/config/impl/PathBuilder;->appendPath(Lcom/typesafe/config/impl/Path;)V

    .line 52
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/Path;

    invoke-virtual {v1, v2}, Lcom/typesafe/config/impl/PathBuilder;->appendPath(Lcom/typesafe/config/impl/Path;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/typesafe/config/impl/PathBuilder;->result()Lcom/typesafe/config/impl/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    .line 56
    return-void

    .line 43
    .end local v0    # "firstPath":Lcom/typesafe/config/impl/Path;
    .end local v1    # "pb":Lcom/typesafe/config/impl/PathBuilder;
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "empty path"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/Path;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "pathsToConcat":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Path;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Path;-><init>(Ljava/util/Iterator;)V

    .line 38
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "elements"    # [Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 23
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    .line 24
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 25
    new-instance v0, Lcom/typesafe/config/impl/PathBuilder;

    invoke-direct {v0}, Lcom/typesafe/config/impl/PathBuilder;-><init>()V

    .line 26
    .local v0, "pb":Lcom/typesafe/config/impl/PathBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 27
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/typesafe/config/impl/PathBuilder;->appendKey(Ljava/lang/String;)V

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/typesafe/config/impl/PathBuilder;->result()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    .line 30
    .end local v0    # "pb":Lcom/typesafe/config/impl/PathBuilder;
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    .line 33
    :goto_1
    return-void

    .line 22
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "empty path"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private appendToStringBuilder(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/Path;->hasFunkyChars(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    if-eqz v0, :cond_2

    .line 201
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/Path;->appendToStringBuilder(Ljava/lang/StringBuilder;)V

    .line 204
    :cond_2
    return-void
.end method

.method static hasFunkyChars(Ljava/lang/String;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 181
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 182
    return v1

    .line 184
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 185
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 187
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_1

    .line 188
    goto :goto_1

    .line 190
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 184
    .end local v3    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method static newKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/typesafe/config/impl/Path;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/typesafe/config/impl/Path;-><init>(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)V

    return-object v0
.end method

.method static newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 230
    invoke-static {p0}, Lcom/typesafe/config/impl/PathParser;->parsePath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 160
    instance-of v0, p1, Lcom/typesafe/config/impl/Path;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 161
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Path;

    .line 162
    .local v0, "that":Lcom/typesafe/config/impl/Path;
    iget-object v2, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    iget-object v3, v0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    iget-object v3, v0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    .line 163
    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 162
    :goto_0
    return v1

    .line 166
    .end local v0    # "that":Lcom/typesafe/config/impl/Path;
    :cond_1
    return v1
.end method

.method first()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    iget-object v1, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    .line 173
    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 172
    return v0
.end method

.method last()Ljava/lang/String;
    .locals 2

    .line 92
    move-object v0, p0

    .line 93
    .local v0, "p":Lcom/typesafe/config/impl/Path;
    :goto_0
    iget-object v1, v0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    if-eqz v1, :cond_0

    .line 94
    iget-object v0, v0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, v0, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    return-object v1
.end method

.method length()I
    .locals 2

    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, "count":I
    iget-object v1, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    .line 109
    .local v1, "p":Lcom/typesafe/config/impl/Path;
    :goto_0
    if-eqz v1, :cond_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    iget-object v1, v1, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    goto :goto_0

    .line 113
    :cond_0
    return v0
.end method

.method parent()Lcom/typesafe/config/impl/Path;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/PathBuilder;

    invoke-direct {v0}, Lcom/typesafe/config/impl/PathBuilder;-><init>()V

    .line 79
    .local v0, "pb":Lcom/typesafe/config/impl/PathBuilder;
    move-object v1, p0

    .line 80
    .local v1, "p":Lcom/typesafe/config/impl/Path;
    :goto_0
    iget-object v2, v1, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, v1, Lcom/typesafe/config/impl/Path;->first:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/typesafe/config/impl/PathBuilder;->appendKey(Ljava/lang/String;)V

    .line 82
    iget-object v1, v1, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/typesafe/config/impl/PathBuilder;->result()Lcom/typesafe/config/impl/Path;

    move-result-object v2

    return-object v2
.end method

.method prepend(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/Path;
    .locals 2
    .param p1, "toPrepend"    # Lcom/typesafe/config/impl/Path;

    .line 100
    new-instance v0, Lcom/typesafe/config/impl/PathBuilder;

    invoke-direct {v0}, Lcom/typesafe/config/impl/PathBuilder;-><init>()V

    .line 101
    .local v0, "pb":Lcom/typesafe/config/impl/PathBuilder;
    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/PathBuilder;->appendPath(Lcom/typesafe/config/impl/Path;)V

    .line 102
    invoke-virtual {v0, p0}, Lcom/typesafe/config/impl/PathBuilder;->appendPath(Lcom/typesafe/config/impl/Path;)V

    .line 103
    invoke-virtual {v0}, Lcom/typesafe/config/impl/PathBuilder;->result()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    return-object v1
.end method

.method remainder()Lcom/typesafe/config/impl/Path;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    return-object v0
.end method

.method render()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Path;->appendToStringBuilder(Ljava/lang/StringBuilder;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method startsWith(Lcom/typesafe/config/impl/Path;)Z
    .locals 5
    .param p1, "other"    # Lcom/typesafe/config/impl/Path;

    .line 144
    move-object v0, p0

    .line 145
    .local v0, "myRemainder":Lcom/typesafe/config/impl/Path;
    move-object v1, p1

    .line 146
    .local v1, "otherRemainder":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v2

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v3

    const/4 v4, 0x0

    if-gt v2, v3, :cond_2

    .line 147
    :goto_0
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    return v4

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 151
    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 155
    :cond_2
    return v4
.end method

.method subPath(I)Lcom/typesafe/config/impl/Path;
    .locals 2
    .param p1, "removeFromFront"    # I

    .line 117
    move v0, p1

    .line 118
    .local v0, "count":I
    move-object v1, p0

    .line 119
    .local v1, "p":Lcom/typesafe/config/impl/Path;
    :goto_0
    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 121
    iget-object v1, v1, Lcom/typesafe/config/impl/Path;->remainder:Lcom/typesafe/config/impl/Path;

    goto :goto_0

    .line 123
    :cond_0
    return-object v1
.end method

.method subPath(II)Lcom/typesafe/config/impl/Path;
    .locals 6
    .param p1, "firstIndex"    # I
    .param p2, "lastIndex"    # I

    .line 127
    if-lt p2, p1, :cond_2

    .line 130
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/Path;->subPath(I)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 131
    .local v0, "from":Lcom/typesafe/config/impl/Path;
    new-instance v1, Lcom/typesafe/config/impl/PathBuilder;

    invoke-direct {v1}, Lcom/typesafe/config/impl/PathBuilder;-><init>()V

    .line 132
    .local v1, "pb":Lcom/typesafe/config/impl/PathBuilder;
    sub-int v2, p2, p1

    .line 133
    .local v2, "count":I
    :goto_0
    if-lez v2, :cond_1

    .line 134
    add-int/lit8 v2, v2, -0x1

    .line 135
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/typesafe/config/impl/PathBuilder;->appendKey(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v3, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subPath lastIndex out of range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_1
    invoke-virtual {v1}, Lcom/typesafe/config/impl/PathBuilder;->result()Lcom/typesafe/config/impl/Path;

    move-result-object v3

    return-object v3

    .line 128
    .end local v0    # "from":Lcom/typesafe/config/impl/Path;
    .end local v1    # "pb":Lcom/typesafe/config/impl/PathBuilder;
    .end local v2    # "count":I
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "bad call to subPath"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Path("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Path;->appendToStringBuilder(Ljava/lang/StringBuilder;)V

    .line 211
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
