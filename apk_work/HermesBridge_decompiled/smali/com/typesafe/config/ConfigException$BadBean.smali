.class public Lcom/typesafe/config/ConfigException$BadBean;
.super Lcom/typesafe/config/ConfigException$BugOrBroken;
.source "ConfigException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/ConfigException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    return-void
.end method
