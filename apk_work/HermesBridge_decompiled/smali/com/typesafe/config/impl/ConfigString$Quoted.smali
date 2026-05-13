.class final Lcom/typesafe/config/impl/ConfigString$Quoted;
.super Lcom/typesafe/config/impl/ConfigString;
.source "ConfigString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Quoted"
.end annotation


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/typesafe/config/impl/ConfigString;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigString$Quoted;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigString$Quoted;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigString$Quoted;
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 31
    new-instance v0, Lcom/typesafe/config/impl/ConfigString$Quoted;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigString$Quoted;->value:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/ConfigString$Quoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/typesafe/config/impl/ConfigString;->unwrapped()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
