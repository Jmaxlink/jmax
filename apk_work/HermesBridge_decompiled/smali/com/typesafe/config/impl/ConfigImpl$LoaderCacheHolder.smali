.class Lcom/typesafe/config/impl/ConfigImpl$LoaderCacheHolder;
.super Ljava/lang/Object;
.source "ConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderCacheHolder"
.end annotation


# static fields
.field static final cache:Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;

    invoke-direct {v0}, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;-><init>()V

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCacheHolder;->cache:Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
