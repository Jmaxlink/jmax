.class final Lcom/typesafe/config/impl/Parseable$2;
.super Ljava/io/FilterReader;
.source "Parseable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/typesafe/config/impl/Parseable;->doNotClose(Ljava/io/Reader;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Reader;

    .line 347
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 351
    return-void
.end method
