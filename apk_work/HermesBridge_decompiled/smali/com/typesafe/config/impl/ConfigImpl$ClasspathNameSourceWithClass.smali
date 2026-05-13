.class Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSourceWithClass;
.super Ljava/lang/Object;
.source "ConfigImpl.java"

# interfaces
.implements Lcom/typesafe/config/impl/SimpleIncluder$NameSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClasspathNameSourceWithClass"
.end annotation


# instance fields
.field private final klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 114
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSourceWithClass;->klass:Ljava/lang/Class;

    .line 116
    return-void
.end method


# virtual methods
.method public nameToParseable(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 120
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSourceWithClass;->klass:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lcom/typesafe/config/impl/Parseable;->newResources(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0
.end method
