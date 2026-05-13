.class public final Lcom/typesafe/config/ConfigRenderOptions;
.super Ljava/lang/Object;
.source "ConfigRenderOptions.java"


# instance fields
.field private final comments:Z

.field private final formatted:Z

.field private final json:Z

.field private final originComments:Z


# direct methods
.method private constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "originComments"    # Z
    .param p2, "comments"    # Z
    .param p3, "formatted"    # Z
    .param p4, "json"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/typesafe/config/ConfigRenderOptions;->originComments:Z

    .line 28
    iput-boolean p2, p0, Lcom/typesafe/config/ConfigRenderOptions;->comments:Z

    .line 29
    iput-boolean p3, p0, Lcom/typesafe/config/ConfigRenderOptions;->formatted:Z

    .line 30
    iput-boolean p4, p0, Lcom/typesafe/config/ConfigRenderOptions;->json:Z

    .line 31
    return-void
.end method

.method public static concise()Lcom/typesafe/config/ConfigRenderOptions;
    .locals 3

    .line 51
    new-instance v0, Lcom/typesafe/config/ConfigRenderOptions;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/typesafe/config/ConfigRenderOptions;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static defaults()Lcom/typesafe/config/ConfigRenderOptions;
    .locals 2

    .line 41
    new-instance v0, Lcom/typesafe/config/ConfigRenderOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/typesafe/config/ConfigRenderOptions;-><init>(ZZZZ)V

    return-object v0
.end method


# virtual methods
.method public getComments()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->comments:Z

    return v0
.end method

.method public getFormatted()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->formatted:Z

    return v0
.end method

.method public getJson()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->json:Z

    return v0
.end method

.method public getOriginComments()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->originComments:Z

    return v0
.end method

.method public setComments(Z)Lcom/typesafe/config/ConfigRenderOptions;
    .locals 4
    .param p1, "value"    # Z

    .line 64
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->comments:Z

    if-ne p1, v0, :cond_0

    .line 65
    return-object p0

    .line 67
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigRenderOptions;

    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->originComments:Z

    iget-boolean v2, p0, Lcom/typesafe/config/ConfigRenderOptions;->formatted:Z

    iget-boolean v3, p0, Lcom/typesafe/config/ConfigRenderOptions;->json:Z

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/typesafe/config/ConfigRenderOptions;-><init>(ZZZZ)V

    return-object v0
.end method

.method public setFormatted(Z)Lcom/typesafe/config/ConfigRenderOptions;
    .locals 4
    .param p1, "value"    # Z

    .line 122
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->formatted:Z

    if-ne p1, v0, :cond_0

    .line 123
    return-object p0

    .line 125
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigRenderOptions;

    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->originComments:Z

    iget-boolean v2, p0, Lcom/typesafe/config/ConfigRenderOptions;->comments:Z

    iget-boolean v3, p0, Lcom/typesafe/config/ConfigRenderOptions;->json:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/typesafe/config/ConfigRenderOptions;-><init>(ZZZZ)V

    return-object v0
.end method

.method public setJson(Z)Lcom/typesafe/config/ConfigRenderOptions;
    .locals 4
    .param p1, "value"    # Z

    .line 150
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->json:Z

    if-ne p1, v0, :cond_0

    .line 151
    return-object p0

    .line 153
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigRenderOptions;

    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->originComments:Z

    iget-boolean v2, p0, Lcom/typesafe/config/ConfigRenderOptions;->comments:Z

    iget-boolean v3, p0, Lcom/typesafe/config/ConfigRenderOptions;->formatted:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/typesafe/config/ConfigRenderOptions;-><init>(ZZZZ)V

    return-object v0
.end method

.method public setOriginComments(Z)Lcom/typesafe/config/ConfigRenderOptions;
    .locals 4
    .param p1, "value"    # Z

    .line 97
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigRenderOptions;->originComments:Z

    if-ne p1, v0, :cond_0

    .line 98
    return-object p0

    .line 100
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigRenderOptions;

    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->comments:Z

    iget-boolean v2, p0, Lcom/typesafe/config/ConfigRenderOptions;->formatted:Z

    iget-boolean v3, p0, Lcom/typesafe/config/ConfigRenderOptions;->json:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/typesafe/config/ConfigRenderOptions;-><init>(ZZZZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigRenderOptions("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->originComments:Z

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "originComments,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->comments:Z

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "comments,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_1
    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->formatted:Z

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "formatted,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_2
    iget-boolean v1, p0, Lcom/typesafe/config/ConfigRenderOptions;->json:Z

    if-eqz v1, :cond_3

    .line 176
    const-string v1, "json,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 179
    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
