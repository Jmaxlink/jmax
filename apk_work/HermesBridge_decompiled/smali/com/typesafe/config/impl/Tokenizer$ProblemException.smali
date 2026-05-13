.class Lcom/typesafe/config/impl/Tokenizer$ProblemException;
.super Ljava/lang/Exception;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProblemException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final problem:Lcom/typesafe/config/impl/Token;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/Token;)V
    .locals 0
    .param p1, "problem"    # Lcom/typesafe/config/impl/Token;

    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/typesafe/config/impl/Tokenizer$ProblemException;->problem:Lcom/typesafe/config/impl/Token;

    .line 27
    return-void
.end method


# virtual methods
.method problem()Lcom/typesafe/config/impl/Token;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$ProblemException;->problem:Lcom/typesafe/config/impl/Token;

    return-object v0
.end method
