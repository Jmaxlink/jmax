.class public interface abstract Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;
.super Ljava/lang/Object;
.source "AbstractConfigValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/AbstractConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Modifier"
.end annotation


# virtual methods
.method public abstract modifyChildMayThrow(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
