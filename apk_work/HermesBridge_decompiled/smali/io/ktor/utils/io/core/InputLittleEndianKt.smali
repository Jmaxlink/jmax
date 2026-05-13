.class public final Lio/ktor/utils/io/core/InputLittleEndianKt;
.super Ljava/lang/Object;
.source "InputLittleEndian.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputLittleEndian.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputLittleEndian.kt\nio/ktor/utils/io/core/InputLittleEndianKt\n+ 2 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n*L\n1#1,349:1\n344#1,3:350\n344#1,3:354\n344#1,3:358\n344#1,3:362\n344#1,3:372\n336#1:382\n336#1:384\n336#1:386\n336#1:388\n336#1:396\n336#1:404\n336#1:406\n336#1:408\n336#1:410\n336#1:418\n9#2:353\n15#2:357\n21#2:361\n30#2:365\n29#2:366\n28#2,5:367\n41#2:375\n40#2:376\n39#2,5:377\n9#2:383\n15#2:385\n21#2:387\n30#2:389\n29#2:390\n28#2,5:391\n41#2:397\n40#2:398\n39#2,5:399\n9#2:405\n15#2:407\n21#2:409\n30#2:411\n29#2:412\n28#2,5:413\n41#2:419\n40#2:420\n39#2,5:421\n9#2:426\n15#2:427\n21#2:428\n30#2:429\n29#2:430\n28#2,5:431\n41#2:436\n40#2:437\n39#2,5:438\n9#2:443\n15#2:444\n21#2:445\n30#2:446\n29#2:447\n28#2,5:448\n41#2:453\n40#2:454\n39#2,5:455\n9#2:460\n15#2:461\n21#2:462\n30#2:463\n29#2:464\n28#2,5:465\n41#2:470\n40#2:471\n39#2,5:472\n9#2:477\n15#2:478\n21#2:479\n30#2:480\n29#2:481\n28#2,5:482\n41#2:487\n40#2:488\n39#2,5:489\n*S KotlinDebug\n*F\n+ 1 InputLittleEndian.kt\nio/ktor/utils/io/core/InputLittleEndianKt\n*L\n9#1:350,3\n13#1:354,3\n17#1:358,3\n21#1:362,3\n25#1:372,3\n28#1:382\n31#1:384\n34#1:386\n37#1:388\n40#1:396\n43#1:404\n46#1:406\n49#1:408\n52#1:410\n55#1:418\n9#1:353\n13#1:357\n17#1:361\n21#1:365\n21#1:366\n21#1:367,5\n25#1:375\n25#1:376\n25#1:377,5\n28#1:383\n31#1:385\n34#1:387\n37#1:389\n37#1:390\n37#1:391,5\n40#1:397\n40#1:398\n40#1:399,5\n43#1:405\n46#1:407\n49#1:409\n52#1:411\n52#1:412\n52#1:413,5\n55#1:419\n55#1:420\n55#1:421,5\n68#1:426\n83#1:427\n98#1:428\n107#1:429\n107#1:430\n107#1:431,5\n116#1:436\n116#1:437\n116#1:438,5\n132#1:443\n150#1:444\n168#1:445\n180#1:446\n180#1:447\n180#1:448,5\n192#1:453\n192#1:454\n192#1:455,5\n209#1:460\n224#1:461\n239#1:462\n248#1:463\n248#1:464\n248#1:465,5\n257#1:470\n257#1:471\n257#1:472,5\n272#1:477\n288#1:478\n305#1:479\n317#1:480\n317#1:481\n317#1:482,5\n329#1:487\n329#1:488\n329#1:489,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a?\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0082\u0008\u00a2\u0006\u0002\u0010\u0008\u001aG\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0082\u0008\u00a2\u0006\u0002\u0010\u000b\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a3\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a3\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010!\u001a3\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\"\u001a3\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010#\u001a\u0012\u0010$\u001a\u00020%*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u0010&\u001a\u00020%*\u00020\u000e\u001a\n\u0010&\u001a\u00020%*\u00020 \u001a\u0012\u0010\'\u001a\u00020(*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u0010)\u001a\u00020(*\u00020\u000e\u001a\n\u0010)\u001a\u00020(*\u00020 \u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008,\u0010-\u001a3\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/\u001a3\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00080\u00101\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008,\u00102\u001a3\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u00103\u001a3\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00080\u00104\u001a\u0012\u00105\u001a\u00020\r*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u00106\u001a\u00020\r*\u00020\u000e\u001a\n\u00106\u001a\u00020\r*\u00020 \u001a\u0012\u00107\u001a\u000208*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u00109\u001a\u000208*\u00020\u000e\u001a\n\u00109\u001a\u000208*\u00020 \u001a\u0012\u0010:\u001a\u00020;*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u0010<\u001a\u00020;*\u00020\u000e\u001a\n\u0010<\u001a\u00020;*\u00020 \u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006="
    }
    d2 = {
        "readPrimitiveTemplate",
        "T",
        "",
        "read",
        "Lkotlin/Function0;",
        "reverse",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "byteOrder",
        "Lio/ktor/utils/io/core/ByteOrder;",
        "(Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "readAvailableLittleEndian",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "dst",
        "",
        "offset",
        "length",
        "",
        "",
        "",
        "",
        "Lkotlin/UIntArray;",
        "readAvailableLittleEndian-o2ZM2JE",
        "(Lio/ktor/utils/io/core/Buffer;[III)I",
        "Lkotlin/ULongArray;",
        "readAvailableLittleEndian-pqYNikA",
        "(Lio/ktor/utils/io/core/Buffer;[JII)I",
        "Lkotlin/UShortArray;",
        "readAvailableLittleEndian-Wt3Bwxc",
        "(Lio/ktor/utils/io/core/Buffer;[SII)I",
        "Lio/ktor/utils/io/core/Input;",
        "(Lio/ktor/utils/io/core/Input;[III)I",
        "(Lio/ktor/utils/io/core/Input;[JII)I",
        "(Lio/ktor/utils/io/core/Input;[SII)I",
        "readDouble",
        "",
        "readDoubleLittleEndian",
        "readFloat",
        "",
        "readFloatLittleEndian",
        "readFullyLittleEndian",
        "",
        "readFullyLittleEndian-o2ZM2JE",
        "(Lio/ktor/utils/io/core/Buffer;[III)V",
        "readFullyLittleEndian-pqYNikA",
        "(Lio/ktor/utils/io/core/Buffer;[JII)V",
        "readFullyLittleEndian-Wt3Bwxc",
        "(Lio/ktor/utils/io/core/Buffer;[SII)V",
        "(Lio/ktor/utils/io/core/Input;[III)V",
        "(Lio/ktor/utils/io/core/Input;[JII)V",
        "(Lio/ktor/utils/io/core/Input;[SII)V",
        "readInt",
        "readIntLittleEndian",
        "readLong",
        "",
        "readLongLittleEndian",
        "readShort",
        "",
        "readShortLittleEndian",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)I
    .locals 8
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[DII)I

    move-result v0

    .line 326
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 327
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 328
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 329
    :goto_0
    aget-wide v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":D
    const/4 v5, 0x0

    .line 487
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 488
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    .line 489
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 493
    nop

    .end local v3    # "$this$reverseByteOrder$iv":D
    .end local v5    # "$i$f$reverseByteOrder":I
    aput-wide v6, p1, v2

    .line 328
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)I
    .locals 6
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[FII)I

    move-result v0

    .line 314
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 315
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 316
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 317
    :goto_0
    aget v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":F
    const/4 v4, 0x0

    .line 480
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 481
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 482
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 486
    nop

    .end local v3    # "$this$reverseByteOrder$iv":F
    .end local v4    # "$i$f$reverseByteOrder":I
    aput v5, p1, v2

    .line 316
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)I
    .locals 5
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result v0

    .line 286
    .local v0, "result":I
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 287
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 288
    :goto_0
    aget v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":I
    const/4 v4, 0x0

    .line 478
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .end local v3    # "$this$reverseByteOrder$iv":I
    .end local v4    # "$i$f$reverseByteOrder":I
    aput v3, p1, v2

    .line 287
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)I
    .locals 6
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result v0

    .line 302
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 303
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 304
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 305
    :goto_0
    aget-wide v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":J
    const/4 v5, 0x0

    .line 479
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v3, v4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3

    .end local v3    # "$this$reverseByteOrder$iv":J
    .end local v5    # "$i$f$reverseByteOrder":I
    aput-wide v3, p1, v2

    .line 304
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)I
    .locals 5
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result v0

    .line 270
    .local v0, "result":I
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 271
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 272
    :goto_0
    aget-short v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":S
    const/4 v4, 0x0

    .line 477
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    .end local v3    # "$this$reverseByteOrder$iv":S
    .end local v4    # "$i$f$reverseByteOrder":I
    aput-short v3, p1, v2

    .line 271
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[DII)I
    .locals 8
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[DII)I

    move-result v0

    .line 189
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 190
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 191
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 192
    :goto_0
    aget-wide v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":D
    const/4 v5, 0x0

    .line 453
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 454
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    .line 455
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 459
    nop

    .end local v3    # "$this$reverseByteOrder$iv":D
    .end local v5    # "$i$f$reverseByteOrder":I
    aput-wide v6, p1, v2

    .line 191
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[FII)I
    .locals 6
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[FII)I

    move-result v0

    .line 177
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 178
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 179
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 180
    :goto_0
    aget v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":F
    const/4 v4, 0x0

    .line 446
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 447
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 448
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 452
    nop

    .end local v3    # "$this$reverseByteOrder$iv":F
    .end local v4    # "$i$f$reverseByteOrder":I
    aput v5, p1, v2

    .line 179
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[III)I
    .locals 5
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[III)I

    move-result v0

    .line 147
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 148
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 149
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 150
    :goto_0
    aget v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":I
    const/4 v4, 0x0

    .line 444
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .end local v3    # "$this$reverseByteOrder$iv":I
    .end local v4    # "$i$f$reverseByteOrder":I
    aput v3, p1, v2

    .line 149
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[JII)I
    .locals 6
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[JII)I

    move-result v0

    .line 165
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 166
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 167
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 168
    :goto_0
    aget-wide v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":J
    const/4 v5, 0x0

    .line 445
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v3, v4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3

    .end local v3    # "$this$reverseByteOrder$iv":J
    .end local v5    # "$i$f$reverseByteOrder":I
    aput-wide v3, p1, v2

    .line 167
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[SII)I
    .locals 5
    .param p0, "$this$readAvailableLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[SII)I

    move-result v0

    .line 129
    .local v0, "result":I
    if-lez v0, :cond_0

    .line 130
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    .line 131
    .local v1, "lastIndex":I
    move v2, p2

    .local v2, "index":I
    if-gt v2, v1, :cond_0

    .line 132
    :goto_0
    aget-short v3, p1, v2

    .local v3, "$this$reverseByteOrder$iv":S
    const/4 v4, 0x0

    .line 443
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    .end local v3    # "$this$reverseByteOrder$iv":S
    .end local v4    # "$i$f$reverseByteOrder":I
    aput-short v3, p1, v2

    .line 131
    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)I
    .locals 0

    .line 324
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)I
    .locals 0

    .line 312
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)I
    .locals 0

    .line 284
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)I
    .locals 0

    .line 300
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)I
    .locals 0

    .line 268
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)I
    .locals 0

    .line 187
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[DII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)I
    .locals 0

    .line 175
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[FII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)I
    .locals 0

    .line 145
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)I
    .locals 0

    .line 163
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)I
    .locals 0

    .line 127
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)I
    .locals 1
    .param p0, "$this$readAvailableLittleEndian_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result v0

    return v0
.end method

.method public static final readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)I
    .locals 1
    .param p0, "$this$readAvailableLittleEndian_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[SII)I

    move-result v0

    return v0
.end method

.method public static synthetic readAvailableLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)I
    .locals 0

    .line 263
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)I
    .locals 0

    .line 122
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)I
    .locals 1
    .param p0, "$this$readAvailableLittleEndian_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result v0

    return v0
.end method

.method public static final readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)I
    .locals 1
    .param p0, "$this$readAvailableLittleEndian_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[III)I

    move-result v0

    return v0
.end method

.method public static synthetic readAvailableLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)I
    .locals 0

    .line 279
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)I
    .locals 0

    .line 140
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)I
    .locals 1
    .param p0, "$this$readAvailableLittleEndian_u2dpqYNikA"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result v0

    return v0
.end method

.method public static final readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)I
    .locals 1
    .param p0, "$this$readAvailableLittleEndian_u2dpqYNikA"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[JII)I

    move-result v0

    return v0
.end method

.method public static synthetic readAvailableLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)I
    .locals 0

    .line 295
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)I
    .locals 0

    .line 158
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    return p0
.end method

.method public static final readDouble(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)D
    .locals 9
    .param p0, "$this$readDouble"    # Lio/ktor/utils/io/core/Input;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 372
    .local v0, "$i$f$readPrimitiveTemplate":I
    sget-object v1, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 373
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 25
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDouble$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide v1

    .line 373
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDouble$1":I
    goto :goto_0

    .line 374
    :cond_0
    const/4 v1, 0x0

    .line 25
    .restart local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDouble$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide v1

    .line 374
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDouble$1":I
    nop

    .local v1, "$this$readDouble_u24lambda_u249":D
    const/4 v3, 0x0

    .line 25
    .local v3, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDouble$2":I
    move-wide v4, v1

    .local v4, "$this$reverseByteOrder$iv":D
    const/4 v6, 0x0

    .line 375
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 376
    invoke-static {v7, v8}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v7

    .line 377
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 381
    nop

    .line 25
    .end local v4    # "$this$reverseByteOrder$iv":D
    .end local v6    # "$i$f$reverseByteOrder":I
    move-wide v1, v7

    .line 374
    .end local v1    # "$this$readDouble_u24lambda_u249":D
    .end local v3    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDouble$2":I
    :goto_0
    nop

    .line 372
    nop

    .line 25
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return-wide v1
.end method

.method public static final readDoubleLittleEndian(Lio/ktor/utils/io/core/Buffer;)D
    .locals 9
    .param p0, "$this$readDoubleLittleEndian"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .line 418
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$3":I
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Buffer;)D

    move-result-wide v1

    .line 418
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$3":I
    nop

    .local v1, "$this$readDoubleLittleEndian_u24lambda_u2429":D
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$4":I
    move-wide v4, v1

    .local v4, "$this$reverseByteOrder$iv":D
    const/4 v6, 0x0

    .line 419
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 420
    invoke-static {v7, v8}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v7

    .line 421
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 425
    nop

    .line 55
    .end local v4    # "$this$reverseByteOrder$iv":D
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .line 418
    .end local v1    # "$this$readDoubleLittleEndian_u24lambda_u2429":D
    .end local v3    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$4":I
    nop

    .line 55
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return-wide v7
.end method

.method public static final readDoubleLittleEndian(Lio/ktor/utils/io/core/Input;)D
    .locals 9
    .param p0, "$this$readDoubleLittleEndian"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 396
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 40
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide v1

    .line 396
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$1":I
    nop

    .local v1, "$this$readDoubleLittleEndian_u24lambda_u2419":D
    const/4 v3, 0x0

    .line 40
    .local v3, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$2":I
    move-wide v4, v1

    .local v4, "$this$reverseByteOrder$iv":D
    const/4 v6, 0x0

    .line 397
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 398
    invoke-static {v7, v8}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v7

    .line 399
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 403
    nop

    .line 40
    .end local v4    # "$this$reverseByteOrder$iv":D
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .line 396
    .end local v1    # "$this$readDoubleLittleEndian_u24lambda_u2419":D
    .end local v3    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readDoubleLittleEndian$2":I
    nop

    .line 40
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return-wide v7
.end method

.method public static final readFloat(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)F
    .locals 6
    .param p0, "$this$readFloat"    # Lio/ktor/utils/io/core/Input;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 362
    .local v0, "$i$f$readPrimitiveTemplate":I
    sget-object v1, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 363
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 21
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloat$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result v1

    .line 363
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloat$1":I
    goto :goto_0

    .line 364
    :cond_0
    const/4 v1, 0x0

    .line 21
    .restart local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloat$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result v1

    .line 364
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloat$1":I
    nop

    .local v1, "$this$readFloat_u24lambda_u247":F
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloat$2":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":F
    const/4 v4, 0x0

    .line 365
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 366
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 367
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 371
    nop

    .line 21
    .end local v3    # "$this$reverseByteOrder$iv":F
    .end local v4    # "$i$f$reverseByteOrder":I
    move v1, v5

    .line 364
    .end local v1    # "$this$readFloat_u24lambda_u247":F
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloat$2":I
    :goto_0
    nop

    .line 362
    nop

    .line 21
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v1
.end method

.method public static final readFloatLittleEndian(Lio/ktor/utils/io/core/Buffer;)F
    .locals 6
    .param p0, "$this$readFloatLittleEndian"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    .line 410
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$3":I
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Buffer;)F

    move-result v1

    .line 410
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$3":I
    nop

    .local v1, "$this$readFloatLittleEndian_u24lambda_u2427":F
    const/4 v2, 0x0

    .line 52
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$4":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":F
    const/4 v4, 0x0

    .line 411
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 412
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 413
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 417
    nop

    .line 52
    .end local v3    # "$this$reverseByteOrder$iv":F
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .line 410
    .end local v1    # "$this$readFloatLittleEndian_u24lambda_u2427":F
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$4":I
    nop

    .line 52
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v5
.end method

.method public static final readFloatLittleEndian(Lio/ktor/utils/io/core/Input;)F
    .locals 6
    .param p0, "$this$readFloatLittleEndian"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    .line 388
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 37
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result v1

    .line 388
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$1":I
    nop

    .local v1, "$this$readFloatLittleEndian_u24lambda_u2417":F
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$2":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":F
    const/4 v4, 0x0

    .line 389
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 391
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 395
    nop

    .line 37
    .end local v3    # "$this$reverseByteOrder$iv":F
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .line 388
    .end local v1    # "$this$readFloatLittleEndian_u24lambda_u2417":F
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readFloatLittleEndian$2":I
    nop

    .line 37
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v5
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)V
    .locals 7
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V

    .line 255
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 256
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 257
    :goto_0
    aget-wide v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":D
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 471
    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    .line 472
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 476
    nop

    .end local v2    # "$this$reverseByteOrder$iv":D
    .end local v4    # "$i$f$reverseByteOrder":I
    aput-wide v5, p1, v1

    .line 256
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)V
    .locals 5
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V

    .line 246
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 247
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 248
    :goto_0
    aget v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":F
    const/4 v3, 0x0

    .line 463
    .local v3, "$i$f$reverseByteOrder":I
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 464
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 465
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 469
    nop

    .end local v2    # "$this$reverseByteOrder$iv":F
    .end local v3    # "$i$f$reverseByteOrder":I
    aput v4, p1, v1

    .line 247
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 4
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V

    .line 222
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 223
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 224
    :goto_0
    aget v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":I
    const/4 v3, 0x0

    .line 461
    .local v3, "$i$f$reverseByteOrder":I
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .end local v2    # "$this$reverseByteOrder$iv":I
    .end local v3    # "$i$f$reverseByteOrder":I
    aput v2, p1, v1

    .line 223
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 5
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    .line 237
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 238
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 239
    :goto_0
    aget-wide v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":J
    const/4 v4, 0x0

    .line 462
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    .end local v2    # "$this$reverseByteOrder$iv":J
    .end local v4    # "$i$f$reverseByteOrder":I
    aput-wide v2, p1, v1

    .line 238
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 4
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    .line 207
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 208
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 209
    :goto_0
    aget-short v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":S
    const/4 v3, 0x0

    .line 460
    .local v3, "$i$f$reverseByteOrder":I
    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    .end local v2    # "$this$reverseByteOrder$iv":S
    .end local v3    # "$i$f$reverseByteOrder":I
    aput-short v2, p1, v1

    .line 208
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[DII)V
    .locals 7
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[DII)V

    .line 114
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 115
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 116
    :goto_0
    aget-wide v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":D
    const/4 v4, 0x0

    .line 436
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 437
    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    .line 438
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 442
    nop

    .end local v2    # "$this$reverseByteOrder$iv":D
    .end local v4    # "$i$f$reverseByteOrder":I
    aput-wide v5, p1, v1

    .line 115
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[FII)V
    .locals 5
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[FII)V

    .line 105
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 106
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 107
    :goto_0
    aget v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":F
    const/4 v3, 0x0

    .line 429
    .local v3, "$i$f$reverseByteOrder":I
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 430
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 431
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 435
    nop

    .end local v2    # "$this$reverseByteOrder$iv":F
    .end local v3    # "$i$f$reverseByteOrder":I
    aput v4, p1, v1

    .line 106
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[III)V
    .locals 4
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[III)V

    .line 81
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 82
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 83
    :goto_0
    aget v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":I
    const/4 v3, 0x0

    .line 427
    .local v3, "$i$f$reverseByteOrder":I
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .end local v2    # "$this$reverseByteOrder$iv":I
    .end local v3    # "$i$f$reverseByteOrder":I
    aput v2, p1, v1

    .line 82
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[JII)V
    .locals 5
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[JII)V

    .line 96
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 97
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 98
    :goto_0
    aget-wide v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":J
    const/4 v4, 0x0

    .line 428
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    .end local v2    # "$this$reverseByteOrder$iv":J
    .end local v4    # "$i$f$reverseByteOrder":I
    aput-wide v2, p1, v1

    .line 97
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[SII)V
    .locals 4
    .param p0, "$this$readFullyLittleEndian"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[SII)V

    .line 66
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 67
    .local v0, "lastIndex":I
    move v1, p2

    .local v1, "index":I
    if-gt v1, v0, :cond_0

    .line 68
    :goto_0
    aget-short v2, p1, v1

    .local v2, "$this$reverseByteOrder$iv":S
    const/4 v3, 0x0

    .line 426
    .local v3, "$i$f$reverseByteOrder":I
    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    .end local v2    # "$this$reverseByteOrder$iv":S
    .end local v3    # "$i$f$reverseByteOrder":I
    aput-short v2, p1, v1

    .line 67
    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)V
    .locals 0

    .line 253
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)V
    .locals 0

    .line 244
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 220
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 235
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 205
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)V
    .locals 0

    .line 112
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[DII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)V
    .locals 0

    .line 103
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[FII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)V
    .locals 0

    .line 79
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[III)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)V
    .locals 0

    .line 94
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[JII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)V
    .locals 0

    .line 64
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[SII)V

    return-void
.end method

.method public static final readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 1
    .param p0, "$this$readFullyLittleEndian_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V

    .line 202
    return-void
.end method

.method public static final readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)V
    .locals 1
    .param p0, "$this$readFullyLittleEndian_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[SII)V

    .line 61
    return-void
.end method

.method public static synthetic readFullyLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 200
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)V
    .locals 0

    .line 59
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)V

    return-void
.end method

.method public static final readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 1
    .param p0, "$this$readFullyLittleEndian_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V

    .line 217
    return-void
.end method

.method public static final readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)V
    .locals 1
    .param p0, "$this$readFullyLittleEndian_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[III)V

    .line 76
    return-void
.end method

.method public static synthetic readFullyLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 215
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)V
    .locals 0

    .line 74
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)V

    return-void
.end method

.method public static final readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 1
    .param p0, "$this$readFullyLittleEndian_u2dpqYNikA"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V

    .line 232
    return-void
.end method

.method public static final readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)V
    .locals 1
    .param p0, "$this$readFullyLittleEndian_u2dpqYNikA"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[JII)V

    .line 91
    return-void
.end method

.method public static synthetic readFullyLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 230
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)V
    .locals 0

    .line 89
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)V

    return-void
.end method

.method public static final readInt(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)I
    .locals 5
    .param p0, "$this$readInt"    # Lio/ktor/utils/io/core/Input;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 354
    .local v0, "$i$f$readPrimitiveTemplate":I
    sget-object v1, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 355
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 13
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readInt$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result v1

    .line 355
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readInt$1":I
    goto :goto_0

    .line 356
    :cond_0
    const/4 v1, 0x0

    .line 13
    .restart local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readInt$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result v1

    .line 356
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readInt$1":I
    nop

    .local v1, "$this$readInt_u24lambda_u243":I
    const/4 v2, 0x0

    .line 13
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readInt$2":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":I
    const/4 v4, 0x0

    .line 357
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .line 13
    .end local v3    # "$this$reverseByteOrder$iv":I
    .end local v4    # "$i$f$reverseByteOrder":I
    move v1, v3

    .line 356
    .end local v1    # "$this$readInt_u24lambda_u243":I
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readInt$2":I
    :goto_0
    nop

    .line 354
    nop

    .line 13
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v1
.end method

.method public static final readIntLittleEndian(Lio/ktor/utils/io/core/Buffer;)I
    .locals 5
    .param p0, "$this$readIntLittleEndian"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    .line 406
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$3":I
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Buffer;)I

    move-result v1

    .line 406
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$3":I
    nop

    .local v1, "$this$readIntLittleEndian_u24lambda_u2423":I
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$4":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":I
    const/4 v4, 0x0

    .line 407
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .line 46
    .end local v3    # "$this$reverseByteOrder$iv":I
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .line 406
    .end local v1    # "$this$readIntLittleEndian_u24lambda_u2423":I
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$4":I
    nop

    .line 46
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v3
.end method

.method public static final readIntLittleEndian(Lio/ktor/utils/io/core/Input;)I
    .locals 5
    .param p0, "$this$readIntLittleEndian"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .line 384
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 31
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result v1

    .line 384
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$1":I
    nop

    .local v1, "$this$readIntLittleEndian_u24lambda_u2413":I
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$2":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":I
    const/4 v4, 0x0

    .line 385
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .line 31
    .end local v3    # "$this$reverseByteOrder$iv":I
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .line 384
    .end local v1    # "$this$readIntLittleEndian_u24lambda_u2413":I
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readIntLittleEndian$2":I
    nop

    .line 31
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v3
.end method

.method public static final readLong(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)J
    .locals 7
    .param p0, "$this$readLong"    # Lio/ktor/utils/io/core/Input;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    .line 358
    .local v0, "$i$f$readPrimitiveTemplate":I
    sget-object v1, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 359
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 17
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLong$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v1

    .line 359
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLong$1":I
    goto :goto_0

    .line 360
    :cond_0
    const/4 v1, 0x0

    .line 17
    .restart local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLong$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v1

    .line 360
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLong$1":I
    nop

    .local v1, "$this$readLong_u24lambda_u245":J
    const/4 v3, 0x0

    .line 17
    .local v3, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLong$2":I
    move-wide v4, v1

    .local v4, "$this$reverseByteOrder$iv":J
    const/4 v6, 0x0

    .line 361
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    .line 17
    .end local v4    # "$this$reverseByteOrder$iv":J
    .end local v6    # "$i$f$reverseByteOrder":I
    move-wide v1, v4

    .line 360
    .end local v1    # "$this$readLong_u24lambda_u245":J
    .end local v3    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLong$2":I
    :goto_0
    nop

    .line 358
    nop

    .line 17
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return-wide v1
.end method

.method public static final readLongLittleEndian(Lio/ktor/utils/io/core/Buffer;)J
    .locals 7
    .param p0, "$this$readLongLittleEndian"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    .line 408
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 49
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$3":I
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Buffer;)J

    move-result-wide v1

    .line 408
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$3":I
    nop

    .local v1, "$this$readLongLittleEndian_u24lambda_u2425":J
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$4":I
    move-wide v4, v1

    .local v4, "$this$reverseByteOrder$iv":J
    const/4 v6, 0x0

    .line 409
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    .line 49
    .end local v4    # "$this$reverseByteOrder$iv":J
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .line 408
    .end local v1    # "$this$readLongLittleEndian_u24lambda_u2425":J
    .end local v3    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$4":I
    nop

    .line 49
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return-wide v4
.end method

.method public static final readLongLittleEndian(Lio/ktor/utils/io/core/Input;)J
    .locals 7
    .param p0, "$this$readLongLittleEndian"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .line 386
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 34
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v1

    .line 386
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$1":I
    nop

    .local v1, "$this$readLongLittleEndian_u24lambda_u2415":J
    const/4 v3, 0x0

    .line 34
    .local v3, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$2":I
    move-wide v4, v1

    .local v4, "$this$reverseByteOrder$iv":J
    const/4 v6, 0x0

    .line 387
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    .line 34
    .end local v4    # "$this$reverseByteOrder$iv":J
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .line 386
    .end local v1    # "$this$readLongLittleEndian_u24lambda_u2415":J
    .end local v3    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readLongLittleEndian$2":I
    nop

    .line 34
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return-wide v4
.end method

.method private static final readPrimitiveTemplate(Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p0, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p1, "read"    # Lkotlin/jvm/functions/Function0;
    .param p2, "reverse"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 344
    .local v0, "$i$f$readPrimitiveTemplate":I
    sget-object v1, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 345
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 344
    :goto_0
    return-object v1
.end method

.method private static final readPrimitiveTemplate(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0, "read"    # Lkotlin/jvm/functions/Function0;
    .param p1, "reverse"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 336
    .local v0, "$i$f$readPrimitiveTemplate":I
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final readShort(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)S
    .locals 5
    .param p0, "$this$readShort"    # Lio/ktor/utils/io/core/Input;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    .line 350
    .local v0, "$i$f$readPrimitiveTemplate":I
    sget-object v1, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 351
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 9
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShort$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result v1

    .line 351
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShort$1":I
    goto :goto_0

    .line 352
    :cond_0
    const/4 v1, 0x0

    .line 9
    .restart local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShort$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result v1

    .line 352
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShort$1":I
    nop

    .local v1, "$this$readShort_u24lambda_u241":S
    const/4 v2, 0x0

    .line 9
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShort$2":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":S
    const/4 v4, 0x0

    .line 353
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    .line 9
    .end local v3    # "$this$reverseByteOrder$iv":S
    .end local v4    # "$i$f$reverseByteOrder":I
    move v1, v3

    .line 352
    .end local v1    # "$this$readShort_u24lambda_u241":S
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShort$2":I
    :goto_0
    nop

    .line 350
    nop

    .line 9
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v1
.end method

.method public static final readShortLittleEndian(Lio/ktor/utils/io/core/Buffer;)S
    .locals 5
    .param p0, "$this$readShortLittleEndian"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    .line 404
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 43
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$3":I
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Buffer;)S

    move-result v1

    .line 404
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$3":I
    nop

    .local v1, "$this$readShortLittleEndian_u24lambda_u2421":S
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$4":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":S
    const/4 v4, 0x0

    .line 405
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    .line 43
    .end local v3    # "$this$reverseByteOrder$iv":S
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .line 404
    .end local v1    # "$this$readShortLittleEndian_u24lambda_u2421":S
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$4":I
    nop

    .line 43
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v3
.end method

.method public static final readShortLittleEndian(Lio/ktor/utils/io/core/Input;)S
    .locals 5
    .param p0, "$this$readShortLittleEndian"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    .line 382
    .local v0, "$i$f$readPrimitiveTemplate":I
    const/4 v1, 0x0

    .line 28
    .local v1, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$1":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result v1

    .line 382
    .end local v1    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$1":I
    nop

    .local v1, "$this$readShortLittleEndian_u24lambda_u2411":S
    const/4 v2, 0x0

    .line 28
    .local v2, "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$2":I
    move v3, v1

    .local v3, "$this$reverseByteOrder$iv":S
    const/4 v4, 0x0

    .line 383
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    .line 28
    .end local v3    # "$this$reverseByteOrder$iv":S
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .line 382
    .end local v1    # "$this$readShortLittleEndian_u24lambda_u2411":S
    .end local v2    # "$i$a$-readPrimitiveTemplate-InputLittleEndianKt$readShortLittleEndian$2":I
    nop

    .line 28
    .end local v0    # "$i$f$readPrimitiveTemplate":I
    return v3
.end method
