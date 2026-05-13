.class final Lcom/typesafe/config/impl/Tokens$Comment$DoubleSlashComment;
.super Lcom/typesafe/config/impl/Tokens$Comment;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokens$Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleSlashComment"
.end annotation


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "text"    # Ljava/lang/String;

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/typesafe/config/impl/Tokens$Comment;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method public tokenText()Ljava/lang/String;
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens$Comment;->access$000(Lcom/typesafe/config/impl/Tokens$Comment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
