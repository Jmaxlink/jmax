.class abstract Lcom/typesafe/config/impl/ConfigString;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "ConfigString.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/ConfigString$Unquoted;,
        Lcom/typesafe/config/impl/ConfigString$Quoted;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "value"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 21
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigString;->value:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 84
    invoke-virtual {p4}, Lcom/typesafe/config/ConfigRenderOptions;->getJson()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigString;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rendered":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v0    # "rendered":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigString;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderStringUnquotedIfPossible(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "rendered":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    return-void
.end method

.method transformToString()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigString;->unwrapped()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapped()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 68
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method

.method wasQuoted()Z
    .locals 1

    .line 63
    instance-of v0, p0, Lcom/typesafe/config/impl/ConfigString$Quoted;

    return v0
.end method
