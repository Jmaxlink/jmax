.class final Lcom/typesafe/config/impl/PropertiesParser$1;
.super Ljava/lang/Object;
.source "PropertiesParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/typesafe/config/impl/PropertiesParser;->fromPathMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Z)Lcom/typesafe/config/impl/AbstractConfigObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/typesafe/config/impl/Path;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/Path;)I
    .locals 2
    .param p1, "a"    # Lcom/typesafe/config/impl/Path;
    .param p2, "b"    # Lcom/typesafe/config/impl/Path;

    .line 185
    invoke-virtual {p2}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 179
    check-cast p1, Lcom/typesafe/config/impl/Path;

    check-cast p2, Lcom/typesafe/config/impl/Path;

    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/PropertiesParser$1;->compare(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/Path;)I

    move-result p1

    return p1
.end method
