.class public interface abstract Lcom/typesafe/config/ConfigOrigin;
.super Ljava/lang/Object;
.source "ConfigOrigin.java"


# virtual methods
.method public abstract comments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract filename()Ljava/lang/String;
.end method

.method public abstract lineNumber()I
.end method

.method public abstract resource()Ljava/lang/String;
.end method

.method public abstract url()Ljava/net/URL;
.end method

.method public abstract withComments(Ljava/util/List;)Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/typesafe/config/ConfigOrigin;"
        }
    .end annotation
.end method

.method public abstract withLineNumber(I)Lcom/typesafe/config/ConfigOrigin;
.end method
