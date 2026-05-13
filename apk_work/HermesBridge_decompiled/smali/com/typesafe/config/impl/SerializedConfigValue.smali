.class Lcom/typesafe/config/impl/SerializedConfigValue;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "SerializedConfigValue.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;,
        Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;,
        Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private value:Lcom/typesafe/config/ConfigValue;

.field private wasConfig:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 132
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/Config;)V
    .locals 1
    .param p1, "conf"    # Lcom/typesafe/config/Config;

    .line 141
    invoke-interface {p1}, Lcom/typesafe/config/Config;->root()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    .line 143
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/ConfigValue;)V
    .locals 1
    .param p1, "value"    # Lcom/typesafe/config/ConfigValue;

    .line 135
    invoke-direct {p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    .line 138
    return-void
.end method

.method private fieldIn(Ljava/io/ObjectInput;)Ljava/io/DataInput;
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 483
    .local v0, "bytes":[B
    invoke-interface {p1, v0}, Ljava/io/ObjectInput;->readFully([B)V

    .line 484
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method private static readCode(Ljava/io/DataInput;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 432
    .local v0, "c":I
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->UNKNOWN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 434
    invoke-static {v0}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->forInt(I)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    move-result-object v1

    return-object v1

    .line 433
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supposed to be on the wire"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readOrigin(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 7
    .param p0, "in"    # Ljava/io/DataInput;
    .param p1, "baseOrigin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 231
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    :goto_0
    const/4 v1, 0x0

    .line 232
    .local v1, "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/typesafe/config/impl/SerializedConfigValue;->readCode(Ljava/io/DataInput;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    move-result-object v2

    .line 233
    .local v2, "field":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    sget-object v3, Lcom/typesafe/config/impl/SerializedConfigValue$1;->$SwitchMap$com$typesafe$config$impl$SerializedConfigValue$SerializedField:[I

    invoke-virtual {v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 283
    :pswitch_0
    invoke-static {p0}, Lcom/typesafe/config/impl/SerializedConfigValue;->skipField(Ljava/io/DataInput;)V

    goto/16 :goto_2

    .line 280
    :pswitch_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not expecting this field here: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :pswitch_2
    invoke-static {p1, v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->fromBase(Lcom/typesafe/config/impl/SimpleConfigOrigin;Ljava/util/Map;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    return-object v3

    .line 273
    :pswitch_3
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 274
    const-string v1, ""

    .line 275
    goto :goto_2

    .line 261
    :pswitch_4
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 262
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 263
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 265
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    .end local v5    # "i":I
    :cond_0
    move-object v1, v4

    .line 268
    goto :goto_2

    .line 257
    .end local v3    # "size":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 258
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 259
    goto :goto_2

    .line 253
    :pswitch_6
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 254
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 255
    goto :goto_2

    .line 249
    :pswitch_7
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 250
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 251
    goto :goto_2

    .line 245
    :pswitch_8
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 246
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 247
    goto :goto_2

    .line 241
    :pswitch_9
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 242
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 243
    goto :goto_2

    .line 237
    :pswitch_a
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 238
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 239
    nop

    .line 286
    :goto_2
    if-eqz v1, :cond_1

    .line 287
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v1    # "v":Ljava/lang/Object;
    .end local v2    # "field":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    :cond_1
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    check-cast v0, Lcom/typesafe/config/ConfigObject;

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    return-object v0
.end method

.method private static readValue(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;
    .param p1, "baseOrigin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    const/4 v1, 0x0

    .line 399
    .local v1, "origin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    :goto_0
    invoke-static {p0}, Lcom/typesafe/config/impl/SerializedConfigValue;->readCode(Ljava/io/DataInput;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    move-result-object v2

    .line 400
    .local v2, "code":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    sget-object v3, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->END_MARKER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    if-ne v2, v3, :cond_1

    .line 401
    if-eqz v0, :cond_0

    .line 403
    return-object v0

    .line 402
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "No value data found in serialization of value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_1
    sget-object v3, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_DATA:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    if-ne v2, v3, :cond_3

    .line 405
    if-eqz v1, :cond_2

    .line 407
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 408
    invoke-static {p0, v1}, Lcom/typesafe/config/impl/SerializedConfigValue;->readValueData(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    goto :goto_1

    .line 406
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Origin must be stored before value data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 409
    :cond_3
    sget-object v3, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_ORIGIN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    if-ne v2, v3, :cond_4

    .line 410
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 411
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->readOrigin(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    goto :goto_1

    .line 414
    :cond_4
    invoke-static {p0}, Lcom/typesafe/config/impl/SerializedConfigValue;->skipField(Ljava/io/DataInput;)V

    .line 416
    .end local v2    # "code":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    :goto_1
    goto :goto_0
.end method

.method private static readValueData(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 7
    .param p0, "in"    # Ljava/io/DataInput;
    .param p1, "origin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 337
    .local v0, "stb":I
    invoke-static {v0}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->forInt(I)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    move-result-object v1

    .line 338
    .local v1, "st":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    if-eqz v1, :cond_2

    .line 340
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$1;->$SwitchMap$com$typesafe$config$impl$SerializedConfigValue$SerializedValueType:[I

    invoke-virtual {v1}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 377
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled serialized value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :pswitch_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 369
    .local v2, "mapSize":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 370
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 371
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "key":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->readValue(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v6

    .line 373
    .local v6, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-direct {v4, p1, v3}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    return-object v4

    .line 360
    .end local v2    # "mapSize":I
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :pswitch_1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 361
    .local v2, "listSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 363
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->readValue(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v5

    .line 364
    .local v5, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v5    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 366
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-direct {v4, p1, v3}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v4

    .line 358
    .end local v2    # "listSize":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :pswitch_2
    new-instance v2, Lcom/typesafe/config/impl/ConfigString$Quoted;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/typesafe/config/impl/ConfigString$Quoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v2

    .line 354
    :pswitch_3
    invoke-interface {p0}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    .line 355
    .local v2, "vd":D
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "sd":Ljava/lang/String;
    new-instance v5, Lcom/typesafe/config/impl/ConfigDouble;

    invoke-direct {v5, p1, v2, v3, v4}, Lcom/typesafe/config/impl/ConfigDouble;-><init>(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)V

    return-object v5

    .line 350
    .end local v2    # "vd":D
    .end local v4    # "sd":Ljava/lang/String;
    :pswitch_4
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 351
    .local v2, "vl":J
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "sl":Ljava/lang/String;
    new-instance v5, Lcom/typesafe/config/impl/ConfigLong;

    invoke-direct {v5, p1, v2, v3, v4}, Lcom/typesafe/config/impl/ConfigLong;-><init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V

    return-object v5

    .line 346
    .end local v2    # "vl":J
    .end local v4    # "sl":Ljava/lang/String;
    :pswitch_5
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 347
    .local v2, "vi":I
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "si":Ljava/lang/String;
    new-instance v4, Lcom/typesafe/config/impl/ConfigInt;

    invoke-direct {v4, p1, v2, v3}, Lcom/typesafe/config/impl/ConfigInt;-><init>(Lcom/typesafe/config/ConfigOrigin;ILjava/lang/String;)V

    return-object v4

    .line 344
    .end local v2    # "vi":I
    .end local v3    # "si":Ljava/lang/String;
    :pswitch_6
    new-instance v2, Lcom/typesafe/config/impl/ConfigNull;

    invoke-direct {v2, p1}, Lcom/typesafe/config/impl/ConfigNull;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    return-object v2

    .line 342
    :pswitch_7
    new-instance v2, Lcom/typesafe/config/impl/ConfigBoolean;

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    return-object v2

    .line 339
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown serialized value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shouldNotBeUsed()Lcom/typesafe/config/ConfigException;
    .locals 3

    .line 488
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not exist outside of serialization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static skipField(Ljava/io/DataInput;)V
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 440
    .local v0, "len":I
    invoke-interface {p0, v0}, Ljava/io/DataInput;->skipBytes(I)I

    move-result v1

    .line 441
    .local v1, "skipped":I
    if-ge v1, v0, :cond_0

    .line 443
    sub-int v2, v0, v1

    new-array v2, v2, [B

    .line 444
    .local v2, "bytes":[B
    invoke-interface {p0, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 446
    .end local v2    # "bytes":[B
    :cond_0
    return-void
.end method

.method private static writeEndMarker(Ljava/io/DataOutput;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->END_MARKER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ordinal()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 428
    return-void
.end method

.method private static writeField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;)V
    .locals 2
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "field"    # Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-object v0, p1, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->bytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 421
    .local v0, "bytes":[B
    iget-object v1, p1, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->code:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ordinal()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 422
    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 423
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    .line 424
    return-void
.end method

.method static writeOrigin(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)V
    .locals 7
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "origin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .param p2, "baseOrigin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1, p2}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->toFieldsDelta(Lcom/typesafe/config/impl/SimpleConfigOrigin;)Ljava/util/Map;

    move-result-object v0

    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    goto :goto_0

    .line 216
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 217
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 218
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    new-instance v3, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-direct {v3, v4}, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;-><init>(Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;)V

    .line 219
    .local v3, "field":Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 220
    .local v4, "v":Ljava/lang/Object;
    iget-object v5, v3, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->data:Ljava/io/DataOutput;

    iget-object v6, v3, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->code:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-static {v5, v6, v4}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeOriginField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;)V

    .line 221
    invoke-static {p0, v3}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;)V

    .line 222
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    .end local v3    # "field":Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
    .end local v4    # "v":Ljava/lang/Object;
    goto :goto_1

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeEndMarker(Ljava/io/DataOutput;)V

    .line 224
    return-void
.end method

.method private static writeOriginField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "code"    # Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$1;->$SwitchMap$com$typesafe$config$impl$SerializedConfigValue$SerializedField:[I

    invoke-virtual {p1}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field from origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :pswitch_0
    goto :goto_1

    .line 191
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 192
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 193
    .local v1, "size":I
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    .local v3, "s":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 196
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 197
    :cond_0
    goto :goto_1

    .line 187
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "size":I
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 188
    goto :goto_1

    .line 184
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 185
    goto :goto_1

    .line 181
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 182
    goto :goto_1

    .line 178
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 179
    goto :goto_1

    .line 175
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 176
    goto :goto_1

    .line 172
    :pswitch_7
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 173
    nop

    .line 206
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static writeValue(Ljava/io/DataOutput;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/SimpleConfigOrigin;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "value"    # Lcom/typesafe/config/ConfigValue;
    .param p2, "baseOrigin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;

    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_ORIGIN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;-><init>(Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;)V

    .line 383
    .local v0, "origin":Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
    iget-object v1, v0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->data:Ljava/io/DataOutput;

    invoke-interface {p1}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-static {v1, v2, p2}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeOrigin(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)V

    .line 385
    invoke-static {p0, v0}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;)V

    .line 387
    new-instance v1, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;

    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_DATA:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;-><init>(Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;)V

    .line 388
    .local v1, "data":Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
    iget-object v2, v1, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->data:Ljava/io/DataOutput;

    invoke-static {v2, p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeValueData(Ljava/io/DataOutput;Lcom/typesafe/config/ConfigValue;)V

    .line 389
    invoke-static {p0, v1}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;)V

    .line 391
    invoke-static {p0}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeEndMarker(Ljava/io/DataOutput;)V

    .line 392
    return-void
.end method

.method private static writeValueData(Ljava/io/DataOutput;Lcom/typesafe/config/ConfigValue;)V
    .locals 6
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "value"    # Lcom/typesafe/config/ConfigValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {p1}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->forValue(Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    move-result-object v0

    .line 293
    .local v0, "st":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    invoke-virtual {v0}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->ordinal()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 294
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$1;->$SwitchMap$com$typesafe$config$impl$SerializedConfigValue$SerializedValueType:[I

    invoke-virtual {v0}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 324
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/ConfigObject;

    .line 325
    .local v1, "obj":Lcom/typesafe/config/ConfigObject;
    invoke-interface {v1}, Lcom/typesafe/config/ConfigObject;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 326
    invoke-interface {v1}, Lcom/typesafe/config/ConfigObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 327
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 328
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/ConfigValue;

    invoke-interface {v1}, Lcom/typesafe/config/ConfigObject;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-static {p0, v4, v5}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeValue(Ljava/io/DataOutput;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/SimpleConfigOrigin;)V

    .line 329
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    goto :goto_0

    .line 317
    .end local v1    # "obj":Lcom/typesafe/config/ConfigObject;
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/ConfigList;

    .line 318
    .local v1, "list":Lcom/typesafe/config/ConfigList;
    invoke-interface {v1}, Lcom/typesafe/config/ConfigList;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 319
    invoke-interface {v1}, Lcom/typesafe/config/ConfigList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigValue;

    .line 320
    .local v3, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v1}, Lcom/typesafe/config/ConfigList;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-static {p0, v3, v4}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeValue(Ljava/io/DataOutput;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/SimpleConfigOrigin;)V

    .line 321
    .end local v3    # "v":Lcom/typesafe/config/ConfigValue;
    goto :goto_1

    .line 322
    :cond_0
    goto :goto_2

    .line 314
    .end local v1    # "list":Lcom/typesafe/config/ConfigList;
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigString;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigString;->unwrapped()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 315
    goto :goto_2

    .line 310
    :pswitch_3
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigDouble;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigDouble;->unwrapped()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 311
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNumber;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigNumber;->transformToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 312
    goto :goto_2

    .line 306
    :pswitch_4
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigLong;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigLong;->unwrapped()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 307
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNumber;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigNumber;->transformToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 308
    goto :goto_2

    .line 302
    :pswitch_5
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigInt;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigInt;->unwrapped()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 303
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNumber;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigNumber;->transformToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 304
    goto :goto_2

    .line 299
    :pswitch_6
    goto :goto_2

    .line 296
    :pswitch_7
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigBoolean;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigBoolean;->unwrapped()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 297
    nop

    .line 332
    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 519
    instance-of v0, p1, Lcom/typesafe/config/impl/SerializedConfigValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/SerializedConfigValue;

    iget-boolean v2, v2, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/SerializedConfigValue;

    iget-object v2, v2, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 520
    :goto_0
    return v1

    .line 524
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    .line 531
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    .line 532
    .end local v0    # "h":I
    .local v1, "h":I
    return v1
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SerializedConfigValue;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SerializedConfigValue;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 504
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue;->shouldNotBeUsed()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 467
    nop

    :goto_0
    invoke-static {p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->readCode(Ljava/io/DataInput;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    move-result-object v0

    .line 468
    .local v0, "code":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->END_MARKER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    if-ne v0, v1, :cond_0

    .line 469
    return-void

    .line 472
    :cond_0
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->fieldIn(Ljava/io/ObjectInput;)Ljava/io/DataInput;

    move-result-object v1

    .line 473
    .local v1, "input":Ljava/io/DataInput;
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_VALUE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    if-ne v0, v2, :cond_1

    .line 474
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue;->readValue(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    iput-object v2, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    goto :goto_1

    .line 475
    :cond_1
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_WAS_CONFIG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    if-ne v0, v2, :cond_2

    .line 476
    invoke-interface {v1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    .line 478
    .end local v0    # "code":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    .end local v1    # "input":Ljava/io/DataInput;
    :cond_2
    :goto_1
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",wasConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapped()Ljava/lang/Object;
    .locals 1

    .line 499
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue;->shouldNotBeUsed()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 494
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue;->shouldNotBeUsed()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v0, v1, :cond_0

    .line 453
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;

    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_VALUE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;-><init>(Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;)V

    .line 454
    .local v0, "field":Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
    iget-object v1, v0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->data:Ljava/io/DataOutput;

    iget-object v2, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->value:Lcom/typesafe/config/ConfigValue;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeValue(Ljava/io/DataOutput;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/SimpleConfigOrigin;)V

    .line 455
    invoke-static {p1, v0}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;)V

    .line 457
    new-instance v1, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;

    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_WAS_CONFIG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;-><init>(Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;)V

    move-object v0, v1

    .line 458
    iget-object v1, v0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->data:Ljava/io/DataOutput;

    iget-boolean v2, p0, Lcom/typesafe/config/impl/SerializedConfigValue;->wasConfig:Z

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 459
    invoke-static {p1, v0}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeField(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;)V

    .line 461
    invoke-static {p1}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeEndMarker(Ljava/io/DataOutput;)V

    .line 462
    return-void

    .line 451
    .end local v0    # "field":Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "tried to serialize a value with unresolved substitutions, need to Config#resolve() first, see API docs"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
