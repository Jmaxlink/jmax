.class public final synthetic Lcom/typesafe/config/DefaultConfigLoadingStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/typesafe/config/ConfigParseOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/typesafe/config/DefaultConfigLoadingStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/typesafe/config/ConfigParseOptions;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/typesafe/config/DefaultConfigLoadingStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/typesafe/config/ConfigParseOptions;

    invoke-static {v0}, Lcom/typesafe/config/DefaultConfigLoadingStrategy;->lambda$parseApplicationConfig$0(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method
