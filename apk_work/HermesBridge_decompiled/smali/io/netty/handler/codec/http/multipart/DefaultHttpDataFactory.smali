.class public Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;
.super Ljava/lang/Object;
.source "DefaultHttpDataFactory.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/HttpDataFactory;


# static fields
.field public static final MAXSIZE:J = -0x1L

.field public static final MINSIZE:J = 0x4000L


# instance fields
.field private baseDir:Ljava/lang/String;

.field private charset:Ljava/nio/charset/Charset;

.field private final checkSize:Z

.field private deleteOnExit:Z

.field private maxSize:J

.field private minSize:J

.field private final requestFileDeleteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/handler/codec/http/HttpRequest;",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/HttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useDisk:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 69
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 82
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 92
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    .line 93
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "minSize"    # J

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 69
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 82
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 119
    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    .line 120
    return-void
.end method

.method public constructor <init>(JLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "minSize"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 123
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    .line 124
    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 96
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>()V

    .line 97
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 98
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "useDisk"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 69
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 82
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    .line 104
    iput-boolean p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 106
    return-void
.end method

.method public constructor <init>(ZLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "useDisk"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 109
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(Z)V

    .line 110
    iput-object p2, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 111
    return-void
.end method

.method private static checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V
    .locals 3
    .param p0, "data"    # Lio/netty/handler/codec/http/multipart/HttpData;

    .line 210
    :try_start_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/HttpData;->checkSize(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attribute bigger than maxSize allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;
    .locals 2
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpRequest;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/HttpData;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    if-nez v0, :cond_0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 158
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cleanAllHttpData()V
    .locals 5

    .line 323
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 324
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 331
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/codec/http/multipart/HttpData;

    .line 332
    .local v4, "data":Lio/netty/handler/codec/http/multipart/HttpData;
    invoke-interface {v4}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 333
    .end local v4    # "data":Lio/netty/handler/codec/http/multipart/HttpData;
    goto :goto_1

    .line 335
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 336
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    goto :goto_0

    .line 337
    :cond_1
    return-void
.end method

.method public cleanAllHttpDatas()V
    .locals 0

    .line 346
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->cleanAllHttpData()V

    .line 347
    return-void
.end method

.method public cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 3
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 313
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 314
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/multipart/HttpData;

    .line 316
    .local v2, "data":Lio/netty/handler/codec/http/multipart/HttpData;
    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 317
    .end local v2    # "data":Lio/netty/handler/codec/http/multipart/HttpData;
    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public cleanRequestHttpDatas(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 341
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V

    .line 342
    return-void
.end method

.method public createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 8
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;

    .line 165
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v3, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    invoke-direct {v0, p2, v1, v2, v3}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 167
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 168
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-object v0

    .line 172
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v3, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v7, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 174
    .restart local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 175
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 176
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-object v0

    .line 179
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setMaxSize(J)V

    .line 181
    return-object v0
.end method

.method public createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;J)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 10
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "definedSize"    # J

    .line 186
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v7, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v1, v0

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v1 .. v7}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 188
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 189
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 190
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-object v0

    .line 193
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v5, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v9, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v1, v0

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v1 .. v9}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 195
    .restart local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 196
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 197
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-object v0

    .line 200
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2, p3, p4}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;J)V

    .line 201
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setMaxSize(J)V

    .line 202
    return-object v0
.end method

.method public createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 10
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 218
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v6, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 222
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 223
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v8, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 226
    .local v1, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    move-object v0, v1

    .line 228
    .end local v1    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    :goto_0
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 229
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 230
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-object v0

    .line 233
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v8, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 235
    .restart local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 236
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 237
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 238
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object v0

    .line 242
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    :try_start_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, p3, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 243
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setMaxSize(J)V

    .line 244
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    return-object v0

    .line 246
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFileUpload(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 14
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "contentTransferEncoding"    # Ljava/lang/String;
    .param p6, "charset"    # Ljava/nio/charset/Charset;
    .param p7, "size"    # J

    .line 255
    move-object v0, p0

    iget-boolean v1, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v10, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v11, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v11}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JLjava/lang/String;Z)V

    .line 258
    .local v1, "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    iget-wide v2, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    .line 259
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 260
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-object v1

    .line 264
    .end local v1    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v1, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v1, :cond_1

    .line 265
    new-instance v1, Lio/netty/handler/codec/http/multipart/MixedFileUpload;

    iget-wide v10, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v12, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    iget-boolean v13, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v13}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJLjava/lang/String;Z)V

    .line 267
    .restart local v1    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    iget-wide v2, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    .line 268
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 269
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v2

    .line 270
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object v1

    .line 273
    .end local v1    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v3, v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v3 .. v10}, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 275
    .local v1, "fileUpload":Lio/netty/handler/codec/http/multipart/MemoryFileUpload;
    iget-wide v2, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;->setMaxSize(J)V

    .line 276
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 277
    return-object v1
.end method

.method public removeHttpDataFromClean(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 4
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "data"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 282
    instance-of v0, p2, Lio/netty/handler/codec/http/multipart/HttpData;

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 289
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    if-nez v0, :cond_1

    .line 290
    return-void

    .line 295
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 296
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/multipart/HttpData;

    .line 298
    .local v2, "n":Lio/netty/handler/codec/http/multipart/HttpData;
    if-ne v2, p2, :cond_3

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 302
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_2
    return-void

    .line 308
    .end local v2    # "n":Lio/netty/handler/codec/http/multipart/HttpData;
    :cond_3
    goto :goto_0

    .line 309
    :cond_4
    return-void
.end method

.method public setBaseDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseDir"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->baseDir:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDeleteOnExit(Z)V
    .locals 0
    .param p1, "deleteOnExit"    # Z

    .line 143
    iput-boolean p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->deleteOnExit:Z

    .line 144
    return-void
.end method

.method public setMaxLimit(J)V
    .locals 0
    .param p1, "maxSize"    # J

    .line 148
    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 149
    return-void
.end method
