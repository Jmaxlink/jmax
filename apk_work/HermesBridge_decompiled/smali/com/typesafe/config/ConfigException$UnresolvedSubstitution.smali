.class public Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;
.super Lcom/typesafe/config/ConfigException$Parse;
.source "ConfigException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/ConfigException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnresolvedSubstitution"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final detail:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "message"    # Ljava/lang/String;

    .line 299
    invoke-direct {p0, p2, p3, p1}, Lcom/typesafe/config/ConfigException$Parse;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    iget-object v0, p1, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;->detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;->detail:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "detail"    # Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve substitution to a value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/typesafe/config/ConfigException$Parse;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    iput-object p2, p0, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;->detail:Ljava/lang/String;

    .line 292
    return-void
.end method


# virtual methods
.method public addExtraDetail(Ljava/lang/String;)Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;
    .locals 3
    .param p1, "extra"    # Ljava/lang/String;

    .line 304
    new-instance v0, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;

    invoke-virtual {p0}, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;->detail:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;-><init>(Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0
.end method
