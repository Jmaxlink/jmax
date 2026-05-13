.class final Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
.super Ljava/lang/Object;
.source "HpackStaticTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackStaticTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderNameIndex"
.end annotation


# instance fields
.field final emptyValue:Z

.field final index:I

.field final name:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "emptyValue"    # Z

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->name:Ljava/lang/CharSequence;

    .line 237
    iput p2, p0, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->index:I

    .line 238
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->emptyValue:Z

    .line 239
    return-void
.end method
