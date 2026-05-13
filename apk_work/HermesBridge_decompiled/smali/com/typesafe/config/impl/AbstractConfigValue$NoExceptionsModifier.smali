.class public abstract Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;
.super Ljava/lang/Object;
.source "AbstractConfigValue.java"

# interfaces
.implements Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/AbstractConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "NoExceptionsModifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/typesafe/config/impl/AbstractConfigValue;


# direct methods
.method protected constructor <init>(Lcom/typesafe/config/impl/AbstractConfigValue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 138
    iput-object p1, p0, Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;->this$0:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract modifyChild(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
.end method

.method public final modifyChildMayThrow(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .param p1, "keyOrNull"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;->modifyChild(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
.end method
