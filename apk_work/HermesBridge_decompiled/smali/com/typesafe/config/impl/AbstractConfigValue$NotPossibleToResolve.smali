.class Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
.super Ljava/lang/Exception;
.source "AbstractConfigValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/AbstractConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotPossibleToResolve"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final traceString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/ResolveContext;)V
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;

    .line 57
    const-string v0, "was not possible to resolve"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->traceString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;->traceString:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method traceString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;->traceString:Ljava/lang/String;

    return-object v0
.end method
