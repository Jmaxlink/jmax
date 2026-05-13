.class Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;
.super Ljava/lang/Object;
.source "SerializedConfigValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SerializedConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldOut"
.end annotation


# instance fields
.field final bytes:Ljava/io/ByteArrayOutputStream;

.field final code:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field final data:Ljava/io/DataOutput;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;)V
    .locals 2
    .param p1, "code"    # Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->code:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->bytes:Ljava/io/ByteArrayOutputStream;

    .line 162
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->bytes:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/SerializedConfigValue$FieldOut;->data:Ljava/io/DataOutput;

    .line 163
    return-void
.end method
