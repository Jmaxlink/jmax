.class final Lio/netty/handler/codec/http2/HpackStaticTable;
.super Ljava/lang/Object;
.source "HpackStaticTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;,
        Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    }
.end annotation


# static fields
.field private static final HEADERS_WITH_NON_EMPTY_VALUES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;

.field private static final HEADERS_WITH_NON_EMPTY_VALUES_TABLE_SHIFT:I

.field private static final HEADERS_WITH_NON_EMPTY_VALUES_TABLE_SIZE:I = 0x40

.field private static final HEADER_NAMES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

.field private static final HEADER_NAMES_TABLE_SHIFT:I

.field private static final HEADER_NAMES_TABLE_SIZE:I = 0x200

.field static final NOT_FOUND:I = -0x1

.field private static final STATIC_TABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/HpackHeaderField;",
            ">;"
        }
    .end annotation
.end field

.field static final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 63

    .line 48
    nop

    .line 49
    const-string v0, ":authority"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v1

    .line 50
    const-string v0, ":method"

    const-string v2, "GET"

    invoke-static {v0, v2}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v2

    .line 51
    const-string v3, "POST"

    invoke-static {v0, v3}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v3

    .line 52
    const-string v0, ":path"

    const-string v4, "/"

    invoke-static {v0, v4}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v4

    .line 53
    const-string v5, "/index.html"

    invoke-static {v0, v5}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v5

    .line 54
    const-string v0, ":scheme"

    const-string v6, "http"

    invoke-static {v0, v6}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v6

    .line 55
    const-string v7, "https"

    invoke-static {v0, v7}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v7

    .line 56
    const-string v0, ":status"

    const-string v8, "200"

    invoke-static {v0, v8}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v8

    .line 57
    const-string v9, "204"

    invoke-static {v0, v9}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v9

    .line 58
    const-string v10, "206"

    invoke-static {v0, v10}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v10

    .line 59
    const-string v11, "304"

    invoke-static {v0, v11}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v11

    .line 60
    const-string v12, "400"

    invoke-static {v0, v12}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v12

    .line 61
    const-string v13, "404"

    invoke-static {v0, v13}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v13

    .line 62
    const-string v14, "500"

    invoke-static {v0, v14}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v14

    .line 63
    const-string v0, "accept-charset"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v15

    .line 64
    const-string v0, "accept-encoding"

    move-object/from16 v62, v1

    const-string v1, "gzip, deflate"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v16

    .line 65
    const-string v0, "accept-language"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v17

    .line 66
    const-string v0, "accept-ranges"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v18

    .line 67
    const-string v0, "accept"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v19

    .line 68
    const-string v0, "access-control-allow-origin"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v20

    .line 69
    const-string v0, "age"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v21

    .line 70
    const-string v0, "allow"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v22

    .line 71
    const-string v0, "authorization"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v23

    .line 72
    const-string v0, "cache-control"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v24

    .line 73
    const-string v0, "content-disposition"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v25

    .line 74
    const-string v0, "content-encoding"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v26

    .line 75
    const-string v0, "content-language"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v27

    .line 76
    const-string v0, "content-length"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v28

    .line 77
    const-string v0, "content-location"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v29

    .line 78
    const-string v0, "content-range"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v30

    .line 79
    const-string v0, "content-type"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v31

    .line 80
    const-string v0, "cookie"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v32

    .line 81
    const-string v0, "date"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v33

    .line 82
    const-string v0, "etag"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v34

    .line 83
    const-string v0, "expect"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v35

    .line 84
    const-string v0, "expires"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v36

    .line 85
    const-string v0, "from"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v37

    .line 86
    const-string v0, "host"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v38

    .line 87
    const-string v0, "if-match"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v39

    .line 88
    const-string v0, "if-modified-since"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v40

    .line 89
    const-string v0, "if-none-match"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v41

    .line 90
    const-string v0, "if-range"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v42

    .line 91
    const-string v0, "if-unmodified-since"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v43

    .line 92
    const-string v0, "last-modified"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v44

    .line 93
    const-string v0, "link"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v45

    .line 94
    const-string v0, "location"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v46

    .line 95
    const-string v0, "max-forwards"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v47

    .line 96
    const-string v0, "proxy-authenticate"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v48

    .line 97
    const-string v0, "proxy-authorization"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v49

    .line 98
    const-string v0, "range"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v50

    .line 99
    const-string v0, "referer"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v51

    .line 100
    const-string v0, "refresh"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v52

    .line 101
    const-string v0, "retry-after"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v53

    .line 102
    const-string v0, "server"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v54

    .line 103
    const-string v0, "set-cookie"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v55

    .line 104
    const-string v0, "strict-transport-security"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v56

    .line 105
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v57

    .line 106
    const-string v0, "user-agent"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v58

    .line 107
    const-string v0, "vary"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v59

    .line 108
    const-string v0, "via"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v60

    .line 109
    const-string v0, "www-authenticate"

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v61

    move-object/from16 v1, v62

    filled-new-array/range {v1 .. v61}, [Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    .line 123
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    sput v0, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADER_NAMES_TABLE_SHIFT:I

    .line 126
    const/16 v0, 0x200

    new-array v0, v0, [Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    sput-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADER_NAMES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    .line 130
    sget-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "index":I
    :goto_1
    const-string v1, " and "

    const-string v2, "Hash bucket collision between "

    const/4 v3, 0x0

    if-lez v0, :cond_4

    .line 131
    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v4

    .line 132
    .local v4, "entry":Lio/netty/handler/codec/http2/HpackHeaderField;
    iget-object v5, v4, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    invoke-static {v5}, Lio/netty/handler/codec/http2/HpackStaticTable;->headerNameBucket(Ljava/lang/CharSequence;)I

    move-result v5

    .line 133
    .local v5, "bucket":I
    sget-object v6, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADER_NAMES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    aget-object v6, v6, v5

    .line 134
    .local v6, "tableEntry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    if-eqz v6, :cond_2

    iget-object v7, v6, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->name:Ljava/lang/CharSequence;

    iget-object v8, v4, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 136
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v6, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_2
    :goto_2
    sget-object v1, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADER_NAMES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    new-instance v2, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    iget-object v7, v4, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    iget-object v8, v4, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-direct {v2, v7, v0, v3}, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;-><init>(Ljava/lang/CharSequence;IZ)V

    aput-object v2, v1, v5

    .line 130
    .end local v4    # "entry":Lio/netty/handler/codec/http2/HpackHeaderField;
    .end local v5    # "bucket":I
    .end local v6    # "tableEntry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 146
    .end local v0    # "index":I
    :cond_4
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x6

    :goto_3
    sput v3, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADERS_WITH_NON_EMPTY_VALUES_TABLE_SHIFT:I

    .line 150
    const/16 v0, 0x40

    new-array v0, v0, [Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;

    sput-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADERS_WITH_NON_EMPTY_VALUES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;

    .line 153
    sget-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "index":I
    :goto_4
    if-lez v0, :cond_8

    .line 154
    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v3

    .line 155
    .local v3, "entry":Lio/netty/handler/codec/http2/HpackHeaderField;
    iget-object v4, v3, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 156
    iget-object v4, v3, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-static {v4}, Lio/netty/handler/codec/http2/HpackStaticTable;->headerBucket(Ljava/lang/CharSequence;)I

    move-result v4

    .line 157
    .local v4, "bucket":I
    sget-object v5, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADERS_WITH_NON_EMPTY_VALUES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;

    aget-object v5, v5, v4

    .line 158
    .local v5, "tableEntry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;
    if-nez v5, :cond_6

    .line 163
    sget-object v6, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADERS_WITH_NON_EMPTY_VALUES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;

    new-instance v7, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;

    iget-object v8, v3, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    iget-object v9, v3, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-direct {v7, v8, v9, v0}, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    aput-object v7, v6, v4

    goto :goto_5

    .line 160
    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v5, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;->value:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 153
    .end local v3    # "entry":Lio/netty/handler/codec/http2/HpackHeaderField;
    .end local v4    # "bucket":I
    .end local v5    # "tableEntry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 171
    .end local v0    # "index":I
    :cond_8
    sget-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method private static bucket(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "shift"    # I
    .param p2, "mask"    # I

    .line 227
    invoke-static {p0}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    shr-int/2addr v0, p1

    and-int/2addr v0, p2

    return v0
.end method

.method static getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 2
    .param p0, "index"    # I

    .line 177
    sget-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    add-int/lit8 v1, p0, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HpackHeaderField;

    return-object v0
.end method

.method private static getEntry(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    .locals 4
    .param p0, "name"    # Ljava/lang/CharSequence;

    .line 210
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackStaticTable;->headerNameBucket(Ljava/lang/CharSequence;)I

    move-result v0

    .line 211
    .local v0, "bucket":I
    sget-object v1, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADER_NAMES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    aget-object v1, v1, v0

    .line 212
    .local v1, "entry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 213
    return-object v2

    .line 215
    :cond_0
    iget-object v3, v1, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->name:Ljava/lang/CharSequence;

    invoke-static {v3, p0}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    return-object v2
.end method

.method static getIndex(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/CharSequence;

    .line 185
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    move-result-object v0

    .line 186
    .local v0, "entry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->index:I

    :goto_0
    return v1
.end method

.method static getIndexInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 195
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;

    move-result-object v0

    .line 196
    .local v0, "entry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->emptyValue:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;->index:I

    :cond_1
    :goto_0
    return v1

    .line 198
    .end local v0    # "entry":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderNameIndex;
    :cond_2
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->headerBucket(Ljava/lang/CharSequence;)I

    move-result v0

    .line 199
    .local v0, "bucket":I
    sget-object v2, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADERS_WITH_NON_EMPTY_VALUES:[Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;

    aget-object v2, v2, v0

    .line 200
    .local v2, "header":Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;
    if-nez v2, :cond_3

    .line 201
    return v1

    .line 203
    :cond_3
    iget-object v3, v2, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;->name:Ljava/lang/CharSequence;

    invoke-static {v3, p0}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;->value:Ljava/lang/CharSequence;

    invoke-static {v3, p1}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    iget v1, v2, Lio/netty/handler/codec/http2/HpackStaticTable$HeaderIndex;->index:I

    return v1

    .line 206
    :cond_4
    return v1
.end method

.method private static headerBucket(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 223
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADERS_WITH_NON_EMPTY_VALUES_TABLE_SHIFT:I

    const/16 v1, 0x3f

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->bucket(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static headerNameBucket(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/CharSequence;

    .line 219
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->HEADER_NAMES_TABLE_SHIFT:I

    const/16 v1, 0x1ff

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->bucket(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 113
    new-instance v0, Lio/netty/handler/codec/http2/HpackHeaderField;

    invoke-static {p0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v1

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 117
    new-instance v0, Lio/netty/handler/codec/http2/HpackHeaderField;

    invoke-static {p0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v1

    invoke-static {p1}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method
