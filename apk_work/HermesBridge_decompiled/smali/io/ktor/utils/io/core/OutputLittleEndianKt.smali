.class public final Lio/ktor/utils/io/core/OutputLittleEndianKt;
.super Ljava/lang/Object;
.source "OutputLittleEndian.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/OutputLittleEndianKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutputLittleEndian.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputLittleEndian.kt\nio/ktor/utils/io/core/OutputLittleEndianKt\n+ 2 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n+ 3 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,277:1\n228#1,4:278\n234#1:283\n228#1,4:284\n234#1:289\n228#1,4:290\n234#1:295\n228#1,4:296\n234#1:307\n228#1,4:308\n234#1:319\n219#1:320\n220#1:322\n219#1:323\n220#1:325\n219#1:326\n220#1:328\n219#1:329\n220#1:337\n219#1:338\n220#1:346\n219#1:347\n220#1:349\n219#1:350\n220#1:352\n219#1:353\n220#1:355\n219#1:356\n220#1:364\n219#1:365\n220#1:373\n243#1,3:374\n246#1:383\n247#1,3:385\n251#1,4:389\n257#1:400\n243#1,3:401\n246#1:410\n247#1,3:412\n251#1,4:416\n257#1:427\n243#1,3:428\n246#1:437\n247#1,3:439\n251#1,4:443\n257#1:454\n243#1,3:455\n246#1:464\n247#1,3:466\n251#1,4:476\n257#1:487\n243#1,3:488\n246#1:497\n247#1,3:499\n251#1,4:509\n257#1:520\n266#1,5:521\n271#1,3:527\n275#1,2:531\n266#1,5:533\n271#1,3:539\n275#1,2:543\n266#1,5:545\n271#1,3:551\n275#1,2:555\n266#1,5:557\n271#1,3:563\n275#1,2:573\n266#1,5:575\n271#1,3:581\n275#1,2:591\n9#2:282\n15#2:288\n21#2:294\n30#2:300\n29#2:301\n28#2,5:302\n41#2:312\n40#2:313\n39#2,5:314\n9#2:321\n15#2:324\n21#2:327\n30#2:330\n29#2:331\n28#2,5:332\n41#2:339\n40#2:340\n39#2,5:341\n9#2:348\n15#2:351\n21#2:354\n30#2:357\n29#2:358\n28#2,5:359\n41#2:366\n40#2:367\n39#2,5:368\n9#2:388\n15#2:415\n21#2:442\n30#2:469\n29#2:470\n28#2,5:471\n41#2:502\n40#2:503\n39#2,5:504\n9#2:530\n15#2:542\n21#2:554\n30#2:566\n29#2:567\n28#2,5:568\n41#2:584\n40#2:585\n39#2,5:586\n507#3,6:377\n513#3,7:393\n507#3,6:404\n513#3,7:420\n507#3,6:431\n513#3,7:447\n507#3,6:458\n513#3,7:480\n507#3,6:491\n513#3,7:513\n507#3,6:593\n513#3,7:600\n74#4:384\n74#4:411\n74#4:438\n74#4:465\n74#4:498\n74#4:526\n74#4:538\n74#4:550\n74#4:562\n74#4:580\n74#4:599\n74#4:607\n*S KotlinDebug\n*F\n+ 1 OutputLittleEndian.kt\nio/ktor/utils/io/core/OutputLittleEndianKt\n*L\n9#1:278,4\n9#1:283\n14#1:284,4\n14#1:289\n19#1:290,4\n19#1:295\n24#1:296,4\n24#1:307\n29#1:308,4\n29#1:319\n34#1:320\n34#1:322\n39#1:323\n39#1:325\n44#1:326\n44#1:328\n49#1:329\n49#1:337\n54#1:338\n54#1:346\n65#1:347\n65#1:349\n70#1:350\n70#1:352\n75#1:353\n75#1:355\n80#1:356\n80#1:364\n85#1:365\n85#1:373\n96#1:374,3\n96#1:383\n96#1:385,3\n96#1:389,4\n96#1:400\n112#1:401,3\n112#1:410\n112#1:412,3\n112#1:416,4\n112#1:427\n128#1:428,3\n128#1:437\n128#1:439,3\n128#1:443,4\n128#1:454\n138#1:455,3\n138#1:464\n138#1:466,3\n138#1:476,4\n138#1:487\n148#1:488,3\n148#1:497\n148#1:499,3\n148#1:509,4\n148#1:520\n158#1:521,5\n158#1:527,3\n158#1:531,2\n174#1:533,5\n174#1:539,3\n174#1:543,2\n190#1:545,5\n190#1:551,3\n190#1:555,2\n200#1:557,5\n200#1:563,3\n200#1:573,2\n210#1:575,5\n210#1:581,3\n210#1:591,2\n9#1:282\n14#1:288\n19#1:294\n24#1:300\n24#1:301\n24#1:302,5\n29#1:312\n29#1:313\n29#1:314,5\n34#1:321\n39#1:324\n44#1:327\n49#1:330\n49#1:331\n49#1:332,5\n54#1:339\n54#1:340\n54#1:341,5\n65#1:348\n70#1:351\n75#1:354\n80#1:357\n80#1:358\n80#1:359,5\n85#1:366\n85#1:367\n85#1:368,5\n100#1:388\n116#1:415\n132#1:442\n142#1:469\n142#1:470\n142#1:471,5\n152#1:502\n152#1:503\n152#1:504,5\n162#1:530\n178#1:542\n194#1:554\n204#1:566\n204#1:567\n204#1:568,5\n214#1:584\n214#1:585\n214#1:586,5\n96#1:377,6\n96#1:393,7\n112#1:404,6\n112#1:420,7\n128#1:431,6\n128#1:447,7\n138#1:458,6\n138#1:480,7\n148#1:491,6\n148#1:513,7\n245#1:593,6\n245#1:600,7\n96#1:384\n112#1:411\n128#1:438\n138#1:465\n148#1:498\n158#1:526\n174#1:538\n190#1:550\n200#1:562\n210#1:580\n246#1:599\n270#1:607\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0013\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\u001aM\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0006\u00a2\u0006\u0002\u0008\u0008H\u0082\u0008\u00a2\u0006\u0002\u0010\t\u001aU\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0006\u00a2\u0006\u0002\u0008\u0008H\u0082\u0008\u00a2\u0006\u0002\u0010\u000c\u001aD\u0010\r\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u001d\u0010\u0013\u001a\u0019\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0008H\u0082\u0008\u001aD\u0010\r\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u001d\u0010\u0013\u001a\u0019\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0008H\u0082\u0008\u001a\u001a\u0010\u0016\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u0018\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0017\u001a\u0012\u0010\u0018\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0017\u001a\u001a\u0010\u0019\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u001b\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u001a\u001a\u0012\u0010\u001b\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u001a\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001f2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020 2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020!2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\"2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a3\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020#2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010%\u001a3\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020&2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\'\u0010(\u001a3\u0010\u001c\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020)2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010+\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001f2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020 2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020!2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a&\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\"2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u001a3\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020#2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010,\u001a3\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020&2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\'\u0010-\u001a3\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020)2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010.\u001a\u001a\u0010/\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u00100\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0010\u001a\u0012\u00100\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0010\u001a\u001a\u00101\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u0002022\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u00103\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0004\u001a\u000202\u001a\u0012\u00103\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u000202\u001a\u001a\u00104\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u0002052\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u00106\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0004\u001a\u000205\u001a\u0012\u00106\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0004\u001a\u000205\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00067"
    }
    d2 = {
        "writePrimitiveTemplate",
        "",
        "T",
        "",
        "value",
        "write",
        "Lkotlin/Function1;",
        "reverse",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "byteOrder",
        "Lio/ktor/utils/io/core/ByteOrder;",
        "(Ljava/lang/Object;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "writeArrayTemplate",
        "Lio/ktor/utils/io/core/Buffer;",
        "offset",
        "",
        "length",
        "componentSize",
        "writeComponent",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/core/Output;",
        "writeDouble",
        "",
        "writeDoubleLittleEndian",
        "writeFloat",
        "",
        "writeFloatLittleEndian",
        "writeFullyLittleEndian",
        "source",
        "",
        "",
        "",
        "",
        "",
        "Lkotlin/UIntArray;",
        "writeFullyLittleEndian-o2ZM2JE",
        "(Lio/ktor/utils/io/core/Buffer;[III)V",
        "Lkotlin/ULongArray;",
        "writeFullyLittleEndian-pqYNikA",
        "(Lio/ktor/utils/io/core/Buffer;[JII)V",
        "Lkotlin/UShortArray;",
        "writeFullyLittleEndian-Wt3Bwxc",
        "(Lio/ktor/utils/io/core/Buffer;[SII)V",
        "(Lio/ktor/utils/io/core/Output;[III)V",
        "(Lio/ktor/utils/io/core/Output;[JII)V",
        "(Lio/ktor/utils/io/core/Output;[SII)V",
        "writeInt",
        "writeIntLittleEndian",
        "writeLong",
        "",
        "writeLongLittleEndian",
        "writeShort",
        "",
        "writeShortLittleEndian",
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
.method private static final writeArrayTemplate(Lio/ktor/utils/io/core/Buffer;IIILkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p0, "$this$writeArrayTemplate"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "componentSize"    # I
    .param p4, "writeComponent"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "III",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    .local v0, "$i$f$writeArrayTemplate":I
    add-int v1, p1, p2

    .line 267
    .local v1, "untilIndex":I
    move v2, p1

    .line 268
    .local v2, "start":I
    move-object v3, p0

    .line 270
    .local v3, "buffer":Lio/ktor/utils/io/core/Buffer;
    move-object v4, v3

    .local v4, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 607
    .local v5, "$i$f$getWriteRemaining":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    sub-int/2addr v6, v7

    .line 270
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getWriteRemaining":I
    div-int/2addr v6, p3

    sub-int v4, v1, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 271
    .local v4, "size":I
    add-int v5, v2, v4

    add-int/lit8 v5, v5, -0x1

    .line 272
    .local v5, "lastIndex":I
    move v6, v2

    .local v6, "index":I
    if-gt v6, v5, :cond_0

    .line 273
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p4, v3, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    if-eq v6, v5, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 275
    .end local v6    # "index":I
    :cond_0
    add-int/2addr v2, v4

    .line 276
    return-void
.end method

.method private static final writeArrayTemplate(Lio/ktor/utils/io/core/Output;IIILkotlin/jvm/functions/Function2;)V
    .locals 17
    .param p0, "$this$writeArrayTemplate"    # Lio/ktor/utils/io/core/Output;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "componentSize"    # I
    .param p4, "writeComponent"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "III",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 243
    .local v2, "$i$f$writeArrayTemplate":I
    add-int v3, p1, p2

    .line 244
    .local v3, "untilIndex":I
    const/4 v0, 0x0

    .local v0, "start":I
    move/from16 v0, p1

    .line 245
    move-object/from16 v4, p0

    .local v4, "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    const/4 v5, 0x0

    .line 593
    .local v5, "$i$f$writeWhileSize":I
    const/4 v6, 0x0

    invoke-static {v4, v1, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6

    .line 595
    .local v6, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v7, 0x0

    move-object/from16 v16, v6

    move v6, v0

    move v0, v7

    move-object/from16 v7, v16

    .line 597
    .local v0, "size$iv":I
    .local v6, "start":I
    .local v7, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 598
    const/4 v8, 0x1

    :try_start_0
    move-object v9, v7

    check-cast v9, Lio/ktor/utils/io/core/Buffer;

    .local v9, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 246
    .local v10, "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1":I
    move-object v11, v9

    .local v11, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 599
    .local v12, "$i$f$getWriteRemaining":I
    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    sub-int/2addr v13, v14

    .line 246
    .end local v11    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$f$getWriteRemaining":I
    div-int/2addr v13, v1

    sub-int v11, v3, v6

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 247
    .local v11, "size":I
    add-int v12, v6, v11

    sub-int/2addr v12, v8

    .line 248
    .local v12, "lastIndex":I
    move v13, v6

    .local v13, "index":I
    if-gt v13, v12, :cond_0

    .line 249
    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p4

    :try_start_1
    invoke-interface {v15, v9, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    if-eq v13, v12, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 604
    .end local v0    # "size$iv":I
    .end local v9    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1":I
    .end local v11    # "size":I
    .end local v12    # "lastIndex":I
    .end local v13    # "index":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 248
    .restart local v0    # "size$iv":I
    .restart local v9    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v10    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1":I
    .restart local v11    # "size":I
    .restart local v12    # "lastIndex":I
    .restart local v13    # "index":I
    :cond_0
    move-object/from16 v15, p4

    .line 251
    .end local v13    # "index":I
    :cond_1
    add-int/2addr v6, v11

    .line 252
    nop

    .line 253
    if-ge v6, v3, :cond_2

    move v13, v1

    goto :goto_2

    .line 254
    :cond_2
    const/4 v13, 0x0

    .line 252
    :goto_2
    nop

    .line 598
    .end local v9    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1":I
    .end local v11    # "size":I
    .end local v12    # "lastIndex":I
    move v0, v13

    .line 600
    if-lez v0, :cond_3

    .line 601
    invoke-static {v4, v0, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v8

    goto :goto_0

    .end local v0    # "size$iv":I
    :cond_3
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 604
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 605
    nop

    .line 606
    nop

    .line 257
    .end local v4    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .end local v5    # "$i$f$writeWhileSize":I
    .end local v7    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-void

    .line 604
    .restart local v4    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .restart local v5    # "$i$f$writeWhileSize":I
    .restart local v7    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_1
    move-exception v0

    move-object/from16 v15, p4

    :goto_3
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method public static final writeDouble(Lio/ktor/utils/io/core/Output;DLio/ktor/utils/io/core/ByteOrder;)V
    .locals 11
    .param p0, "$this$writeDouble"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # D
    .param p3, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-wide v0, p1

    .local v0, "value$iv":D
    const/4 v2, 0x0

    .line 308
    .local v2, "$i$f$writePrimitiveTemplate":I
    nop

    .line 309
    sget-object v3, Lio/ktor/utils/io/core/OutputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 310
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-wide v9, v0

    goto :goto_0

    .line 311
    :cond_0
    move-wide v3, v0

    .local v3, "$this$writeDouble_u24lambda_u249":D
    const/4 v5, 0x0

    .line 29
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDouble$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":D
    const/4 v8, 0x0

    .line 312
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    .line 313
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    .line 314
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 318
    nop

    .line 29
    .end local v6    # "$this$reverseByteOrder$iv":D
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 311
    .end local v3    # "$this$writeDouble_u24lambda_u249":D
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDouble$2":I
    :goto_0
    nop

    .line 308
    move-wide v3, v9

    .local v3, "it":D
    const/4 v5, 0x0

    .line 29
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDouble$1":I
    invoke-static {p0, v3, v4}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeDouble(Lio/ktor/utils/io/core/Output;D)V

    .line 308
    .end local v3    # "it":D
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDouble$1":I
    nop

    .line 319
    nop

    .line 30
    .end local v0    # "value$iv":D
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeDoubleLittleEndian(Lio/ktor/utils/io/core/Buffer;D)V
    .locals 11
    .param p0, "$this$writeDoubleLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # D

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-wide v0, p1

    .local v0, "value$iv":D
    const/4 v2, 0x0

    .line 365
    .local v2, "$i$f$writePrimitiveTemplate":I
    move-wide v3, v0

    .local v3, "$this$writeDoubleLittleEndian_u24lambda_u2429":D
    const/4 v5, 0x0

    .line 85
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$4":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":D
    const/4 v8, 0x0

    .line 366
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    .line 367
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    .line 368
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 372
    nop

    .line 85
    .end local v6    # "$this$reverseByteOrder$iv":D
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 365
    .end local v3    # "$this$writeDoubleLittleEndian_u24lambda_u2429":D
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$4":I
    move-wide v3, v9

    .local v3, "it":D
    const/4 v5, 0x0

    .line 85
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$3":I
    invoke-static {p0, v3, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeDouble(Lio/ktor/utils/io/core/Buffer;D)V

    .line 365
    .end local v3    # "it":D
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$3":I
    nop

    .line 373
    nop

    .line 86
    .end local v0    # "value$iv":D
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeDoubleLittleEndian(Lio/ktor/utils/io/core/Output;D)V
    .locals 11
    .param p0, "$this$writeDoubleLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # D

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-wide v0, p1

    .local v0, "value$iv":D
    const/4 v2, 0x0

    .line 338
    .local v2, "$i$f$writePrimitiveTemplate":I
    move-wide v3, v0

    .local v3, "$this$writeDoubleLittleEndian_u24lambda_u2419":D
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":D
    const/4 v8, 0x0

    .line 339
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    .line 340
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    .line 341
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 345
    nop

    .line 54
    .end local v6    # "$this$reverseByteOrder$iv":D
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 338
    .end local v3    # "$this$writeDoubleLittleEndian_u24lambda_u2419":D
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$2":I
    move-wide v3, v9

    .local v3, "it":D
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$1":I
    invoke-static {p0, v3, v4}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeDouble(Lio/ktor/utils/io/core/Output;D)V

    .line 338
    .end local v3    # "it":D
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeDoubleLittleEndian$1":I
    nop

    .line 346
    nop

    .line 55
    .end local v0    # "value$iv":D
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeFloat(Lio/ktor/utils/io/core/Output;FLio/ktor/utils/io/core/ByteOrder;)V
    .locals 7
    .param p0, "$this$writeFloat"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # F
    .param p2, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move v0, p1

    .local v0, "value$iv":F
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$f$writePrimitiveTemplate":I
    nop

    .line 297
    sget-object v2, Lio/ktor/utils/io/core/OutputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 298
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v6, v0

    goto :goto_0

    .line 299
    :cond_0
    move v2, v0

    .local v2, "$this$writeFloat_u24lambda_u247":F
    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloat$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":F
    const/4 v5, 0x0

    .line 300
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 301
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    .line 302
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 306
    nop

    .line 24
    .end local v4    # "$this$reverseByteOrder$iv":F
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 299
    .end local v2    # "$this$writeFloat_u24lambda_u247":F
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloat$2":I
    :goto_0
    nop

    .line 296
    move v2, v6

    .local v2, "it":F
    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloat$1":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeFloat(Lio/ktor/utils/io/core/Output;F)V

    .line 296
    .end local v2    # "it":F
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloat$1":I
    nop

    .line 307
    nop

    .line 25
    .end local v0    # "value$iv":F
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeFloatLittleEndian(Lio/ktor/utils/io/core/Buffer;F)V
    .locals 7
    .param p0, "$this$writeFloatLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move v0, p1

    .local v0, "value$iv":F
    const/4 v1, 0x0

    .line 356
    .local v1, "$i$f$writePrimitiveTemplate":I
    move v2, v0

    .local v2, "$this$writeFloatLittleEndian_u24lambda_u2427":F
    const/4 v3, 0x0

    .line 80
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$4":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":F
    const/4 v5, 0x0

    .line 357
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 358
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    .line 359
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 363
    nop

    .line 80
    .end local v4    # "$this$reverseByteOrder$iv":F
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 356
    .end local v2    # "$this$writeFloatLittleEndian_u24lambda_u2427":F
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$4":I
    move v2, v6

    .local v2, "it":F
    const/4 v3, 0x0

    .line 80
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$3":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFloat(Lio/ktor/utils/io/core/Buffer;F)V

    .line 356
    .end local v2    # "it":F
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$3":I
    nop

    .line 364
    nop

    .line 81
    .end local v0    # "value$iv":F
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeFloatLittleEndian(Lio/ktor/utils/io/core/Output;F)V
    .locals 7
    .param p0, "$this$writeFloatLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move v0, p1

    .local v0, "value$iv":F
    const/4 v1, 0x0

    .line 329
    .local v1, "$i$f$writePrimitiveTemplate":I
    move v2, v0

    .local v2, "$this$writeFloatLittleEndian_u24lambda_u2417":F
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":F
    const/4 v5, 0x0

    .line 330
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 331
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    .line 332
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 336
    nop

    .line 49
    .end local v4    # "$this$reverseByteOrder$iv":F
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 329
    .end local v2    # "$this$writeFloatLittleEndian_u24lambda_u2417":F
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$2":I
    move v2, v6

    .local v2, "it":F
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$1":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeFloat(Lio/ktor/utils/io/core/Output;F)V

    .line 329
    .end local v2    # "it":F
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeFloatLittleEndian$1":I
    nop

    .line 337
    nop

    .line 50
    .end local v0    # "value$iv":F
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)V
    .locals 20
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    nop

    .line 213
    nop

    .line 210
    move-object/from16 v1, p0

    .local v1, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v3, 0x8

    .local v3, "componentSize$iv":I
    const/4 v4, 0x0

    .line 575
    .local v4, "$i$f$writeArrayTemplate":I
    add-int v5, p2, p3

    .line 576
    .local v5, "untilIndex$iv":I
    move/from16 v6, p2

    .line 577
    .local v6, "start$iv":I
    move-object v7, v1

    .line 579
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move-object v8, v7

    .local v8, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 580
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 579
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    div-int/2addr v10, v3

    sub-int v8, v5, v6

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 581
    .local v8, "size$iv":I
    add-int v9, v6, v8

    add-int/lit8 v9, v9, -0x1

    .line 582
    .local v9, "lastIndex$iv":I
    move v10, v6

    .local v10, "index$iv":I
    if-gt v10, v9, :cond_0

    .line 583
    :goto_0
    move-object v11, v7

    .local v11, "$this$writeFullyLittleEndian_u24lambda_u2439":Lio/ktor/utils/io/core/Buffer;
    move v12, v10

    .local v12, "it":I
    const/4 v13, 0x0

    .line 214
    .local v13, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$10":I
    aget-wide v14, v0, v12

    .local v14, "$this$reverseByteOrder$iv":D
    const/16 v16, 0x0

    .line 584
    .local v16, "$i$f$reverseByteOrder":I
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v17

    .line 585
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v17

    .line 586
    move-object/from16 v19, v1

    .end local v1    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    .local v19, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 590
    nop

    .line 214
    .end local v14    # "$this$reverseByteOrder$iv":D
    .end local v16    # "$i$f$reverseByteOrder":I
    invoke-static {v11, v0, v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeDouble(Lio/ktor/utils/io/core/Buffer;D)V

    .line 583
    .end local v11    # "$this$writeFullyLittleEndian_u24lambda_u2439":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "it":I
    .end local v13    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$10":I
    nop

    .line 582
    if-eq v10, v9, :cond_1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    goto :goto_0

    .end local v19    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_0
    move-object/from16 v19, v1

    .line 591
    .end local v1    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "index$iv":I
    .restart local v19    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_1
    add-int/2addr v6, v8

    .line 592
    nop

    .line 216
    .end local v3    # "componentSize$iv":I
    .end local v4    # "$i$f$writeArrayTemplate":I
    .end local v5    # "untilIndex$iv":I
    .end local v6    # "start$iv":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "size$iv":I
    .end local v9    # "lastIndex$iv":I
    .end local v19    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    return-void
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)V
    .locals 17
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    nop

    .line 203
    nop

    .line 200
    move-object/from16 v1, p0

    .local v1, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x4

    .local v3, "componentSize$iv":I
    const/4 v4, 0x0

    .line 557
    .local v4, "$i$f$writeArrayTemplate":I
    add-int v5, p2, p3

    .line 558
    .local v5, "untilIndex$iv":I
    move/from16 v6, p2

    .line 559
    .local v6, "start$iv":I
    move-object v7, v1

    .line 561
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move-object v8, v7

    .local v8, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 562
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 561
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    div-int/2addr v10, v3

    sub-int v8, v5, v6

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 563
    .local v8, "size$iv":I
    add-int v9, v6, v8

    add-int/lit8 v9, v9, -0x1

    .line 564
    .local v9, "lastIndex$iv":I
    move v10, v6

    .local v10, "index$iv":I
    if-gt v10, v9, :cond_0

    .line 565
    :goto_0
    move-object v11, v7

    .local v11, "$this$writeFullyLittleEndian_u24lambda_u2438":Lio/ktor/utils/io/core/Buffer;
    move v12, v10

    .local v12, "it":I
    const/4 v13, 0x0

    .line 204
    .local v13, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$9":I
    aget v14, v0, v12

    .local v14, "$this$reverseByteOrder$iv":F
    const/4 v15, 0x0

    .line 566
    .local v15, "$i$f$reverseByteOrder":I
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v16

    .line 567
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v16

    .line 568
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 572
    nop

    .line 204
    .end local v14    # "$this$reverseByteOrder$iv":F
    .end local v15    # "$i$f$reverseByteOrder":I
    invoke-static {v11, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFloat(Lio/ktor/utils/io/core/Buffer;F)V

    .line 565
    .end local v11    # "$this$writeFullyLittleEndian_u24lambda_u2438":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "it":I
    .end local v13    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$9":I
    nop

    .line 564
    if-eq v10, v9, :cond_0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    .line 573
    .end local v10    # "index$iv":I
    :cond_0
    add-int/2addr v6, v8

    .line 574
    nop

    .line 206
    .end local v1    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "componentSize$iv":I
    .end local v4    # "$i$f$writeArrayTemplate":I
    .end local v5    # "untilIndex$iv":I
    .end local v6    # "start$iv":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "size$iv":I
    .end local v9    # "lastIndex$iv":I
    return-void
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 16
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    nop

    .line 177
    nop

    .line 174
    move-object/from16 v1, p0

    .local v1, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x4

    .local v3, "componentSize$iv":I
    const/4 v4, 0x0

    .line 533
    .local v4, "$i$f$writeArrayTemplate":I
    add-int v5, p2, p3

    .line 534
    .local v5, "untilIndex$iv":I
    move/from16 v6, p2

    .line 535
    .local v6, "start$iv":I
    move-object v7, v1

    .line 537
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move-object v8, v7

    .local v8, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 538
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 537
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    div-int/2addr v10, v3

    sub-int v8, v5, v6

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 539
    .local v8, "size$iv":I
    add-int v9, v6, v8

    add-int/lit8 v9, v9, -0x1

    .line 540
    .local v9, "lastIndex$iv":I
    move v10, v6

    .local v10, "index$iv":I
    if-gt v10, v9, :cond_0

    .line 541
    :goto_0
    move-object v11, v7

    .local v11, "$this$writeFullyLittleEndian_u24lambda_u2436":Lio/ktor/utils/io/core/Buffer;
    move v12, v10

    .local v12, "it":I
    const/4 v13, 0x0

    .line 178
    .local v13, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$7":I
    aget v14, v0, v12

    .local v14, "$this$reverseByteOrder$iv":I
    const/4 v15, 0x0

    .line 542
    .local v15, "$i$f$reverseByteOrder":I
    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    .line 178
    .end local v14    # "$this$reverseByteOrder$iv":I
    .end local v15    # "$i$f$reverseByteOrder":I
    invoke-static {v11, v14}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Buffer;I)V

    .line 541
    .end local v11    # "$this$writeFullyLittleEndian_u24lambda_u2436":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "it":I
    .end local v13    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$7":I
    nop

    .line 540
    if-eq v10, v9, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 543
    .end local v10    # "index$iv":I
    :cond_0
    add-int/2addr v6, v8

    .line 544
    nop

    .line 180
    .end local v1    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "componentSize$iv":I
    .end local v4    # "$i$f$writeArrayTemplate":I
    .end local v5    # "untilIndex$iv":I
    .end local v6    # "start$iv":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "size$iv":I
    .end local v9    # "lastIndex$iv":I
    return-void
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 17
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    nop

    .line 193
    nop

    .line 190
    move-object/from16 v1, p0

    .local v1, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v3, 0x8

    .local v3, "componentSize$iv":I
    const/4 v4, 0x0

    .line 545
    .local v4, "$i$f$writeArrayTemplate":I
    add-int v5, p2, p3

    .line 546
    .local v5, "untilIndex$iv":I
    move/from16 v6, p2

    .line 547
    .local v6, "start$iv":I
    move-object v7, v1

    .line 549
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move-object v8, v7

    .local v8, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 550
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 549
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    div-int/2addr v10, v3

    sub-int v8, v5, v6

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 551
    .local v8, "size$iv":I
    add-int v9, v6, v8

    add-int/lit8 v9, v9, -0x1

    .line 552
    .local v9, "lastIndex$iv":I
    move v10, v6

    .local v10, "index$iv":I
    if-gt v10, v9, :cond_0

    .line 553
    :goto_0
    move-object v11, v7

    .local v11, "$this$writeFullyLittleEndian_u24lambda_u2437":Lio/ktor/utils/io/core/Buffer;
    move v12, v10

    .local v12, "it":I
    const/4 v13, 0x0

    .line 194
    .local v13, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$8":I
    aget-wide v14, v0, v12

    .local v14, "$this$reverseByteOrder$iv":J
    const/16 v16, 0x0

    .line 554
    .local v16, "$i$f$reverseByteOrder":I
    invoke-static {v14, v15}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v14

    .line 194
    .end local v14    # "$this$reverseByteOrder$iv":J
    .end local v16    # "$i$f$reverseByteOrder":I
    invoke-static {v11, v14, v15}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Buffer;J)V

    .line 553
    .end local v11    # "$this$writeFullyLittleEndian_u24lambda_u2437":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "it":I
    .end local v13    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$8":I
    nop

    .line 552
    if-eq v10, v9, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 555
    .end local v10    # "index$iv":I
    :cond_0
    add-int/2addr v6, v8

    .line 556
    nop

    .line 196
    .end local v1    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "componentSize$iv":I
    .end local v4    # "$i$f$writeArrayTemplate":I
    .end local v5    # "untilIndex$iv":I
    .end local v6    # "start$iv":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "size$iv":I
    .end local v9    # "lastIndex$iv":I
    return-void
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 16
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    nop

    .line 161
    nop

    .line 158
    move-object/from16 v1, p0

    .local v1, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x2

    .local v3, "componentSize$iv":I
    const/4 v4, 0x0

    .line 521
    .local v4, "$i$f$writeArrayTemplate":I
    add-int v5, p2, p3

    .line 522
    .local v5, "untilIndex$iv":I
    move/from16 v6, p2

    .line 523
    .local v6, "start$iv":I
    move-object v7, v1

    .line 525
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move-object v8, v7

    .local v8, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 526
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 525
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    div-int/2addr v10, v3

    sub-int v8, v5, v6

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 527
    .local v8, "size$iv":I
    add-int v9, v6, v8

    add-int/lit8 v9, v9, -0x1

    .line 528
    .local v9, "lastIndex$iv":I
    move v10, v6

    .local v10, "index$iv":I
    if-gt v10, v9, :cond_0

    .line 529
    :goto_0
    move-object v11, v7

    .local v11, "$this$writeFullyLittleEndian_u24lambda_u2435":Lio/ktor/utils/io/core/Buffer;
    move v12, v10

    .local v12, "it":I
    const/4 v13, 0x0

    .line 162
    .local v13, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$6":I
    aget-short v14, v0, v12

    .local v14, "$this$reverseByteOrder$iv":S
    const/4 v15, 0x0

    .line 530
    .local v15, "$i$f$reverseByteOrder":I
    invoke-static {v14}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v14

    .line 162
    .end local v14    # "$this$reverseByteOrder$iv":S
    .end local v15    # "$i$f$reverseByteOrder":I
    invoke-static {v11, v14}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Buffer;S)V

    .line 529
    .end local v11    # "$this$writeFullyLittleEndian_u24lambda_u2435":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "it":I
    .end local v13    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$6":I
    nop

    .line 528
    if-eq v10, v9, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 531
    .end local v10    # "index$iv":I
    :cond_0
    add-int/2addr v6, v8

    .line 532
    nop

    .line 164
    .end local v1    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "componentSize$iv":I
    .end local v4    # "$i$f$writeArrayTemplate":I
    .end local v5    # "untilIndex$iv":I
    .end local v6    # "start$iv":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "size$iv":I
    .end local v9    # "lastIndex$iv":I
    return-void
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[DII)V
    .locals 26
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    nop

    .line 151
    nop

    .line 148
    move-object/from16 v3, p0

    .local v3, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/16 v0, 0x8

    move v4, v0

    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 488
    .local v5, "$i$f$writeArrayTemplate":I
    add-int v6, p2, p3

    .line 489
    .local v6, "untilIndex$iv":I
    const/4 v0, 0x0

    .local v0, "start$iv":I
    move/from16 v0, p2

    .line 490
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 491
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 493
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move-object/from16 v25, v9

    move v9, v0

    move v0, v10

    move-object/from16 v10, v25

    .line 495
    .local v0, "size$iv$iv":I
    .local v9, "start$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 496
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 497
    .local v12, "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 498
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 497
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    div-int/2addr v15, v4

    sub-int v13, v6, v9

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 499
    .local v13, "size$iv":I
    add-int v14, v9, v13

    add-int/lit8 v14, v14, -0x1

    .line 500
    .local v14, "lastIndex$iv":I
    move v15, v9

    .local v15, "index$iv":I
    if-gt v15, v14, :cond_0

    .line 501
    :goto_1
    move-object/from16 v16, v11

    .local v16, "$this$writeFullyLittleEndian_u24lambda_u2434":Lio/ktor/utils/io/core/Buffer;
    move/from16 v17, v15

    .local v17, "it":I
    const/16 v18, 0x0

    .line 152
    .local v18, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$5":I
    aget-wide v19, v1, v17

    .local v19, "$this$reverseByteOrder$iv":D
    const/16 v21, 0x0

    .line 502
    .local v21, "$i$f$reverseByteOrder":I
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v22

    .line 503
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v22

    .line 504
    move/from16 v24, v0

    .end local v0    # "size$iv$iv":I
    .local v24, "size$iv$iv":I
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 508
    nop

    .line 152
    .end local v19    # "$this$reverseByteOrder$iv":D
    .end local v21    # "$i$f$reverseByteOrder":I
    move-object/from16 v2, v16

    .end local v16    # "$this$writeFullyLittleEndian_u24lambda_u2434":Lio/ktor/utils/io/core/Buffer;
    .local v2, "$this$writeFullyLittleEndian_u24lambda_u2434":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v2, v0, v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeDouble(Lio/ktor/utils/io/core/Buffer;D)V

    .line 501
    .end local v2    # "$this$writeFullyLittleEndian_u24lambda_u2434":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "it":I
    .end local v18    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$5":I
    nop

    .line 500
    if-eq v15, v14, :cond_1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move/from16 v0, v24

    goto :goto_1

    .end local v24    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    :cond_0
    move/from16 v24, v0

    .line 509
    .end local v0    # "size$iv$iv":I
    .end local v15    # "index$iv":I
    .restart local v24    # "size$iv$iv":I
    :cond_1
    add-int/2addr v9, v13

    .line 510
    nop

    .line 511
    if-ge v9, v6, :cond_2

    move v0, v4

    goto :goto_2

    .line 512
    :cond_2
    const/4 v0, 0x0

    .line 510
    :goto_2
    nop

    .line 496
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    .end local v13    # "size$iv":I
    .end local v14    # "lastIndex$iv":I
    nop

    .line 513
    .end local v24    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    if-lez v0, :cond_3

    .line 514
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_0

    .line 517
    .end local v0    # "size$iv$iv":I
    :cond_3
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 518
    nop

    .line 519
    nop

    .line 520
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 154
    .end local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeArrayTemplate":I
    .end local v6    # "untilIndex$iv":I
    .end local v9    # "start$iv":I
    return-void

    .line 517
    .restart local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeArrayTemplate":I
    .restart local v6    # "untilIndex$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "start$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[FII)V
    .locals 24
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    nop

    .line 141
    nop

    .line 138
    move-object/from16 v3, p0

    .local v3, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v0, 0x4

    move v4, v0

    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 455
    .local v5, "$i$f$writeArrayTemplate":I
    add-int v6, p2, p3

    .line 456
    .local v6, "untilIndex$iv":I
    const/4 v0, 0x0

    .local v0, "start$iv":I
    move/from16 v0, p2

    .line 457
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 458
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 460
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move-object/from16 v23, v9

    move v9, v0

    move v0, v10

    move-object/from16 v10, v23

    .line 462
    .local v0, "size$iv$iv":I
    .local v9, "start$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 463
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 464
    .local v12, "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 465
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 464
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    div-int/2addr v15, v4

    sub-int v13, v6, v9

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 466
    .local v13, "size$iv":I
    add-int v14, v9, v13

    add-int/lit8 v14, v14, -0x1

    .line 467
    .local v14, "lastIndex$iv":I
    move v15, v9

    .local v15, "index$iv":I
    if-gt v15, v14, :cond_0

    .line 468
    :goto_1
    move-object/from16 v16, v11

    .local v16, "$this$writeFullyLittleEndian_u24lambda_u2433":Lio/ktor/utils/io/core/Buffer;
    move/from16 v17, v15

    .local v17, "it":I
    const/16 v18, 0x0

    .line 142
    .local v18, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$4":I
    aget v19, v1, v17

    .local v19, "$this$reverseByteOrder$iv":F
    const/16 v20, 0x0

    .line 469
    .local v20, "$i$f$reverseByteOrder":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v21

    .line 470
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v21

    .line 471
    move/from16 v22, v0

    .end local v0    # "size$iv$iv":I
    .local v22, "size$iv$iv":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 475
    nop

    .line 142
    .end local v19    # "$this$reverseByteOrder$iv":F
    .end local v20    # "$i$f$reverseByteOrder":I
    move-object/from16 v1, v16

    .end local v16    # "$this$writeFullyLittleEndian_u24lambda_u2433":Lio/ktor/utils/io/core/Buffer;
    .local v1, "$this$writeFullyLittleEndian_u24lambda_u2433":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFloat(Lio/ktor/utils/io/core/Buffer;F)V

    .line 468
    .end local v1    # "$this$writeFullyLittleEndian_u24lambda_u2433":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "it":I
    .end local v18    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$4":I
    nop

    .line 467
    if-eq v15, v14, :cond_1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v22

    goto :goto_1

    .end local v22    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    :cond_0
    move/from16 v22, v0

    .line 476
    .end local v0    # "size$iv$iv":I
    .end local v15    # "index$iv":I
    .restart local v22    # "size$iv$iv":I
    :cond_1
    add-int/2addr v9, v13

    .line 477
    nop

    .line 478
    if-ge v9, v6, :cond_2

    move v0, v4

    goto :goto_2

    .line 479
    :cond_2
    const/4 v0, 0x0

    .line 477
    :goto_2
    nop

    .line 463
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    .end local v13    # "size$iv":I
    .end local v14    # "lastIndex$iv":I
    nop

    .line 480
    .end local v22    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    if-lez v0, :cond_3

    .line 481
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object/from16 v1, p1

    goto :goto_0

    .line 484
    .end local v0    # "size$iv$iv":I
    :cond_3
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 485
    nop

    .line 486
    nop

    .line 487
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 144
    .end local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeArrayTemplate":I
    .end local v6    # "untilIndex$iv":I
    .end local v9    # "start$iv":I
    return-void

    .line 484
    .restart local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeArrayTemplate":I
    .restart local v6    # "untilIndex$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "start$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[III)V
    .locals 23
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    nop

    .line 115
    nop

    .line 112
    move-object/from16 v3, p0

    .local v3, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v0, 0x4

    move v4, v0

    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 401
    .local v5, "$i$f$writeArrayTemplate":I
    add-int v6, p2, p3

    .line 402
    .local v6, "untilIndex$iv":I
    const/4 v0, 0x0

    .local v0, "start$iv":I
    move/from16 v0, p2

    .line 403
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 404
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 406
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move-object/from16 v22, v9

    move v9, v0

    move v0, v10

    move-object/from16 v10, v22

    .line 408
    .local v0, "size$iv$iv":I
    .local v9, "start$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 409
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 410
    .local v12, "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 411
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 410
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    div-int/2addr v15, v4

    sub-int v13, v6, v9

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 412
    .local v13, "size$iv":I
    add-int v14, v9, v13

    add-int/lit8 v14, v14, -0x1

    .line 413
    .local v14, "lastIndex$iv":I
    move v15, v9

    .local v15, "index$iv":I
    if-gt v15, v14, :cond_0

    .line 414
    :goto_1
    move-object/from16 v16, v11

    .local v16, "$this$writeFullyLittleEndian_u24lambda_u2431":Lio/ktor/utils/io/core/Buffer;
    move/from16 v17, v15

    .local v17, "it":I
    const/16 v18, 0x0

    .line 116
    .local v18, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$2":I
    aget v19, v1, v17

    .local v19, "$this$reverseByteOrder$iv":I
    const/16 v20, 0x0

    .line 415
    .local v20, "$i$f$reverseByteOrder":I
    move/from16 v21, v0

    .end local v0    # "size$iv$iv":I
    .local v21, "size$iv$iv":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 116
    .end local v19    # "$this$reverseByteOrder$iv":I
    .end local v20    # "$i$f$reverseByteOrder":I
    move-object/from16 v1, v16

    .end local v16    # "$this$writeFullyLittleEndian_u24lambda_u2431":Lio/ktor/utils/io/core/Buffer;
    .local v1, "$this$writeFullyLittleEndian_u24lambda_u2431":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Buffer;I)V

    .line 414
    .end local v1    # "$this$writeFullyLittleEndian_u24lambda_u2431":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "it":I
    .end local v18    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$2":I
    nop

    .line 413
    if-eq v15, v14, :cond_1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v21

    goto :goto_1

    .end local v21    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    :cond_0
    move/from16 v21, v0

    .line 416
    .end local v0    # "size$iv$iv":I
    .end local v15    # "index$iv":I
    .restart local v21    # "size$iv$iv":I
    :cond_1
    add-int/2addr v9, v13

    .line 417
    nop

    .line 418
    if-ge v9, v6, :cond_2

    move v0, v4

    goto :goto_2

    .line 419
    :cond_2
    const/4 v0, 0x0

    .line 417
    :goto_2
    nop

    .line 409
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    .end local v13    # "size$iv":I
    .end local v14    # "lastIndex$iv":I
    nop

    .line 420
    .end local v21    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    if-lez v0, :cond_3

    .line 421
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object/from16 v1, p1

    goto :goto_0

    .line 424
    .end local v0    # "size$iv$iv":I
    :cond_3
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 425
    nop

    .line 426
    nop

    .line 427
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 118
    .end local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeArrayTemplate":I
    .end local v6    # "untilIndex$iv":I
    .end local v9    # "start$iv":I
    return-void

    .line 424
    .restart local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeArrayTemplate":I
    .restart local v6    # "untilIndex$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "start$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[JII)V
    .locals 24
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    nop

    .line 131
    nop

    .line 128
    move-object/from16 v3, p0

    .local v3, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/16 v0, 0x8

    move v4, v0

    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 428
    .local v5, "$i$f$writeArrayTemplate":I
    add-int v6, p2, p3

    .line 429
    .local v6, "untilIndex$iv":I
    const/4 v0, 0x0

    .local v0, "start$iv":I
    move/from16 v0, p2

    .line 430
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 431
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 433
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move-object/from16 v23, v9

    move v9, v0

    move v0, v10

    move-object/from16 v10, v23

    .line 435
    .local v0, "size$iv$iv":I
    .local v9, "start$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 436
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 437
    .local v12, "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 438
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 437
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    div-int/2addr v15, v4

    sub-int v13, v6, v9

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 439
    .local v13, "size$iv":I
    add-int v14, v9, v13

    add-int/lit8 v14, v14, -0x1

    .line 440
    .local v14, "lastIndex$iv":I
    move v15, v9

    .local v15, "index$iv":I
    if-gt v15, v14, :cond_0

    .line 441
    :goto_1
    move-object/from16 v16, v11

    .local v16, "$this$writeFullyLittleEndian_u24lambda_u2432":Lio/ktor/utils/io/core/Buffer;
    move/from16 v17, v15

    .local v17, "it":I
    const/16 v18, 0x0

    .line 132
    .local v18, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$3":I
    aget-wide v19, v1, v17

    .local v19, "$this$reverseByteOrder$iv":J
    const/16 v21, 0x0

    .line 442
    .local v21, "$i$f$reverseByteOrder":I
    move/from16 v22, v0

    .end local v0    # "size$iv$iv":I
    .local v22, "size$iv$iv":I
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 132
    .end local v19    # "$this$reverseByteOrder$iv":J
    .end local v21    # "$i$f$reverseByteOrder":I
    move-object/from16 v2, v16

    .end local v16    # "$this$writeFullyLittleEndian_u24lambda_u2432":Lio/ktor/utils/io/core/Buffer;
    .local v2, "$this$writeFullyLittleEndian_u24lambda_u2432":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v2, v0, v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Buffer;J)V

    .line 441
    .end local v2    # "$this$writeFullyLittleEndian_u24lambda_u2432":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "it":I
    .end local v18    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$3":I
    nop

    .line 440
    if-eq v15, v14, :cond_1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move/from16 v0, v22

    goto :goto_1

    .end local v22    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    :cond_0
    move/from16 v22, v0

    .line 443
    .end local v0    # "size$iv$iv":I
    .end local v15    # "index$iv":I
    .restart local v22    # "size$iv$iv":I
    :cond_1
    add-int/2addr v9, v13

    .line 444
    nop

    .line 445
    if-ge v9, v6, :cond_2

    move v0, v4

    goto :goto_2

    .line 446
    :cond_2
    const/4 v0, 0x0

    .line 444
    :goto_2
    nop

    .line 436
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    .end local v13    # "size$iv":I
    .end local v14    # "lastIndex$iv":I
    nop

    .line 447
    .end local v22    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    if-lez v0, :cond_3

    .line 448
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_0

    .line 451
    .end local v0    # "size$iv$iv":I
    :cond_3
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 452
    nop

    .line 453
    nop

    .line 454
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 134
    .end local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeArrayTemplate":I
    .end local v6    # "untilIndex$iv":I
    .end local v9    # "start$iv":I
    return-void

    .line 451
    .restart local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeArrayTemplate":I
    .restart local v6    # "untilIndex$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "start$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[SII)V
    .locals 23
    .param p0, "$this$writeFullyLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    nop

    .line 99
    nop

    .line 96
    move-object/from16 v3, p0

    .local v3, "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v0, 0x2

    move v4, v0

    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 374
    .local v5, "$i$f$writeArrayTemplate":I
    add-int v6, p2, p3

    .line 375
    .local v6, "untilIndex$iv":I
    const/4 v0, 0x0

    .local v0, "start$iv":I
    move/from16 v0, p2

    .line 376
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 377
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 379
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move-object/from16 v22, v9

    move v9, v0

    move v0, v10

    move-object/from16 v10, v22

    .line 381
    .local v0, "size$iv$iv":I
    .local v9, "start$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 382
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 383
    .local v12, "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 384
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 383
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    div-int/2addr v15, v4

    sub-int v13, v6, v9

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 385
    .local v13, "size$iv":I
    add-int v14, v9, v13

    add-int/lit8 v14, v14, -0x1

    .line 386
    .local v14, "lastIndex$iv":I
    move v15, v9

    .local v15, "index$iv":I
    if-gt v15, v14, :cond_0

    .line 387
    :goto_1
    move-object/from16 v16, v11

    .local v16, "$this$writeFullyLittleEndian_u24lambda_u2430":Lio/ktor/utils/io/core/Buffer;
    move/from16 v17, v15

    .local v17, "it":I
    const/16 v18, 0x0

    .line 100
    .local v18, "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$1":I
    aget-short v19, v1, v17

    .local v19, "$this$reverseByteOrder$iv":S
    const/16 v20, 0x0

    .line 388
    .local v20, "$i$f$reverseByteOrder":I
    move/from16 v21, v0

    .end local v0    # "size$iv$iv":I
    .local v21, "size$iv$iv":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 100
    .end local v19    # "$this$reverseByteOrder$iv":S
    .end local v20    # "$i$f$reverseByteOrder":I
    move-object/from16 v1, v16

    .end local v16    # "$this$writeFullyLittleEndian_u24lambda_u2430":Lio/ktor/utils/io/core/Buffer;
    .local v1, "$this$writeFullyLittleEndian_u24lambda_u2430":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Buffer;S)V

    .line 387
    .end local v1    # "$this$writeFullyLittleEndian_u24lambda_u2430":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "it":I
    .end local v18    # "$i$a$-writeArrayTemplate-OutputLittleEndianKt$writeFullyLittleEndian$1":I
    nop

    .line 386
    if-eq v15, v14, :cond_1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v21

    goto :goto_1

    .end local v21    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    :cond_0
    move/from16 v21, v0

    .line 389
    .end local v0    # "size$iv$iv":I
    .end local v15    # "index$iv":I
    .restart local v21    # "size$iv$iv":I
    :cond_1
    add-int/2addr v9, v13

    .line 390
    nop

    .line 391
    if-ge v9, v6, :cond_2

    move v0, v4

    goto :goto_2

    .line 392
    :cond_2
    const/4 v0, 0x0

    .line 390
    :goto_2
    nop

    .line 382
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputLittleEndianKt$writeArrayTemplate$1$iv":I
    .end local v13    # "size$iv":I
    .end local v14    # "lastIndex$iv":I
    nop

    .line 393
    .end local v21    # "size$iv$iv":I
    .restart local v0    # "size$iv$iv":I
    if-lez v0, :cond_3

    .line 394
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object/from16 v1, p1

    goto :goto_0

    .line 397
    .end local v0    # "size$iv$iv":I
    :cond_3
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 398
    nop

    .line 399
    nop

    .line 400
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 102
    .end local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeArrayTemplate":I
    .end local v6    # "untilIndex$iv":I
    .end local v9    # "start$iv":I
    return-void

    .line 397
    .restart local v3    # "$this$writeArrayTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeArrayTemplate":I
    .restart local v6    # "untilIndex$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "start$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)V
    .locals 0

    .line 209
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)V
    .locals 0

    .line 199
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 173
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 189
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 157
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Output;[DIIILjava/lang/Object;)V
    .locals 0

    .line 147
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[DII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Output;[FIIILjava/lang/Object;)V
    .locals 0

    .line 137
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[FII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Output;[IIIILjava/lang/Object;)V
    .locals 0

    .line 111
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[III)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Output;[JIIILjava/lang/Object;)V
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[JII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian$default(Lio/ktor/utils/io/core/Output;[SIIILjava/lang/Object;)V
    .locals 0

    .line 95
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[SII)V

    return-void
.end method

.method public static final writeFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 1
    .param p0, "$this$writeFullyLittleEndian_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V

    .line 92
    return-void
.end method

.method public static final writeFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Output;[SII)V
    .locals 1
    .param p0, "$this$writeFullyLittleEndian_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[SII)V

    .line 61
    return-void
.end method

.method public static synthetic writeFullyLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 90
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Output;[SIIILjava/lang/Object;)V
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Output;[SII)V

    return-void
.end method

.method public static final writeFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 1
    .param p0, "$this$writeFullyLittleEndian_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V

    .line 170
    return-void
.end method

.method public static final writeFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Output;[III)V
    .locals 1
    .param p0, "$this$writeFullyLittleEndian_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[III)V

    .line 108
    return-void
.end method

.method public static synthetic writeFullyLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 168
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Output;[IIIILjava/lang/Object;)V
    .locals 0

    .line 106
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Output;[III)V

    return-void
.end method

.method public static final writeFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 1
    .param p0, "$this$writeFullyLittleEndian_u2dpqYNikA"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V

    .line 186
    return-void
.end method

.method public static final writeFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Output;[JII)V
    .locals 1
    .param p0, "$this$writeFullyLittleEndian_u2dpqYNikA"    # Lio/ktor/utils/io/core/Output;
    .param p1, "source"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian(Lio/ktor/utils/io/core/Output;[JII)V

    .line 124
    return-void
.end method

.method public static synthetic writeFullyLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 184
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic writeFullyLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Output;[JIIILjava/lang/Object;)V
    .locals 0

    .line 122
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Output;[JII)V

    return-void
.end method

.method public static final writeInt(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/ByteOrder;)V
    .locals 6
    .param p0, "$this$writeInt"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # I
    .param p2, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move v0, p1

    .local v0, "value$iv":I
    const/4 v1, 0x0

    .line 284
    .local v1, "$i$f$writePrimitiveTemplate":I
    nop

    .line 285
    sget-object v2, Lio/ktor/utils/io/core/OutputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 286
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v0

    goto :goto_0

    .line 287
    :cond_0
    move v2, v0

    .local v2, "$this$writeInt_u24lambda_u243":I
    const/4 v3, 0x0

    .line 14
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeInt$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":I
    const/4 v5, 0x0

    .line 288
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 14
    .end local v4    # "$this$reverseByteOrder$iv":I
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 287
    .end local v2    # "$this$writeInt_u24lambda_u243":I
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeInt$2":I
    :goto_0
    nop

    .line 284
    move v2, v4

    .local v2, "it":I
    const/4 v3, 0x0

    .line 14
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeInt$1":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Output;I)V

    .line 284
    .end local v2    # "it":I
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeInt$1":I
    nop

    .line 289
    nop

    .line 15
    .end local v0    # "value$iv":I
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeIntLittleEndian(Lio/ktor/utils/io/core/Buffer;I)V
    .locals 6
    .param p0, "$this$writeIntLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move v0, p1

    .local v0, "value$iv":I
    const/4 v1, 0x0

    .line 350
    .local v1, "$i$f$writePrimitiveTemplate":I
    move v2, v0

    .local v2, "$this$writeIntLittleEndian_u24lambda_u2423":I
    const/4 v3, 0x0

    .line 70
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$4":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":I
    const/4 v5, 0x0

    .line 351
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 70
    .end local v4    # "$this$reverseByteOrder$iv":I
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 350
    .end local v2    # "$this$writeIntLittleEndian_u24lambda_u2423":I
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$4":I
    move v2, v4

    .local v2, "it":I
    const/4 v3, 0x0

    .line 70
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$3":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Buffer;I)V

    .line 350
    .end local v2    # "it":I
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$3":I
    nop

    .line 352
    nop

    .line 71
    .end local v0    # "value$iv":I
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeIntLittleEndian(Lio/ktor/utils/io/core/Output;I)V
    .locals 6
    .param p0, "$this$writeIntLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move v0, p1

    .local v0, "value$iv":I
    const/4 v1, 0x0

    .line 323
    .local v1, "$i$f$writePrimitiveTemplate":I
    move v2, v0

    .local v2, "$this$writeIntLittleEndian_u24lambda_u2413":I
    const/4 v3, 0x0

    .line 39
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":I
    const/4 v5, 0x0

    .line 324
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 39
    .end local v4    # "$this$reverseByteOrder$iv":I
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 323
    .end local v2    # "$this$writeIntLittleEndian_u24lambda_u2413":I
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$2":I
    move v2, v4

    .local v2, "it":I
    const/4 v3, 0x0

    .line 39
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$1":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Output;I)V

    .line 323
    .end local v2    # "it":I
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeIntLittleEndian$1":I
    nop

    .line 325
    nop

    .line 40
    .end local v0    # "value$iv":I
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeLong(Lio/ktor/utils/io/core/Output;JLio/ktor/utils/io/core/ByteOrder;)V
    .locals 9
    .param p0, "$this$writeLong"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # J
    .param p3, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-wide v0, p1

    .local v0, "value$iv":J
    const/4 v2, 0x0

    .line 290
    .local v2, "$i$f$writePrimitiveTemplate":I
    nop

    .line 291
    sget-object v3, Lio/ktor/utils/io/core/OutputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 292
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-wide v6, v0

    goto :goto_0

    .line 293
    :cond_0
    move-wide v3, v0

    .local v3, "$this$writeLong_u24lambda_u245":J
    const/4 v5, 0x0

    .line 19
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLong$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":J
    const/4 v8, 0x0

    .line 294
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    .line 19
    .end local v6    # "$this$reverseByteOrder$iv":J
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 293
    .end local v3    # "$this$writeLong_u24lambda_u245":J
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLong$2":I
    :goto_0
    nop

    .line 290
    move-wide v3, v6

    .local v3, "it":J
    const/4 v5, 0x0

    .line 19
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLong$1":I
    invoke-static {p0, v3, v4}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Output;J)V

    .line 290
    .end local v3    # "it":J
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLong$1":I
    nop

    .line 295
    nop

    .line 20
    .end local v0    # "value$iv":J
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeLongLittleEndian(Lio/ktor/utils/io/core/Buffer;J)V
    .locals 9
    .param p0, "$this$writeLongLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-wide v0, p1

    .local v0, "value$iv":J
    const/4 v2, 0x0

    .line 353
    .local v2, "$i$f$writePrimitiveTemplate":I
    move-wide v3, v0

    .local v3, "$this$writeLongLittleEndian_u24lambda_u2425":J
    const/4 v5, 0x0

    .line 75
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$4":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":J
    const/4 v8, 0x0

    .line 354
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    .line 75
    .end local v6    # "$this$reverseByteOrder$iv":J
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 353
    .end local v3    # "$this$writeLongLittleEndian_u24lambda_u2425":J
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$4":I
    move-wide v3, v6

    .local v3, "it":J
    const/4 v5, 0x0

    .line 75
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$3":I
    invoke-static {p0, v3, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Buffer;J)V

    .line 353
    .end local v3    # "it":J
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$3":I
    nop

    .line 355
    nop

    .line 76
    .end local v0    # "value$iv":J
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeLongLittleEndian(Lio/ktor/utils/io/core/Output;J)V
    .locals 9
    .param p0, "$this$writeLongLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-wide v0, p1

    .local v0, "value$iv":J
    const/4 v2, 0x0

    .line 326
    .local v2, "$i$f$writePrimitiveTemplate":I
    move-wide v3, v0

    .local v3, "$this$writeLongLittleEndian_u24lambda_u2415":J
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":J
    const/4 v8, 0x0

    .line 327
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    .line 44
    .end local v6    # "$this$reverseByteOrder$iv":J
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 326
    .end local v3    # "$this$writeLongLittleEndian_u24lambda_u2415":J
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$2":I
    move-wide v3, v6

    .local v3, "it":J
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$1":I
    invoke-static {p0, v3, v4}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Output;J)V

    .line 326
    .end local v3    # "it":J
    .end local v5    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeLongLittleEndian$1":I
    nop

    .line 328
    nop

    .line 45
    .end local v0    # "value$iv":J
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method private static final writePrimitiveTemplate(Ljava/lang/Object;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p2, "write"    # Lkotlin/jvm/functions/Function1;
    .param p3, "reverse"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    .local v0, "$i$f$writePrimitiveTemplate":I
    nop

    .line 229
    sget-object v1, Lio/ktor/utils/io/core/OutputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 230
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 228
    :goto_0
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method private static final writePrimitiveTemplate(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "write"    # Lkotlin/jvm/functions/Function1;
    .param p2, "reverse"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    .local v0, "$i$f$writePrimitiveTemplate":I
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public static final writeShort(Lio/ktor/utils/io/core/Output;SLio/ktor/utils/io/core/ByteOrder;)V
    .locals 6
    .param p0, "$this$writeShort"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # S
    .param p2, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move v0, p1

    .local v0, "value$iv":S
    const/4 v1, 0x0

    .line 278
    .local v1, "$i$f$writePrimitiveTemplate":I
    nop

    .line 279
    sget-object v2, Lio/ktor/utils/io/core/OutputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 280
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v0

    goto :goto_0

    .line 281
    :cond_0
    move v2, v0

    .local v2, "$this$writeShort_u24lambda_u241":S
    const/4 v3, 0x0

    .line 9
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShort$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":S
    const/4 v5, 0x0

    .line 282
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v4

    .line 9
    .end local v4    # "$this$reverseByteOrder$iv":S
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 281
    .end local v2    # "$this$writeShort_u24lambda_u241":S
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShort$2":I
    :goto_0
    nop

    .line 278
    move v2, v4

    .local v2, "it":S
    const/4 v3, 0x0

    .line 9
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShort$1":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    .line 278
    .end local v2    # "it":S
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShort$1":I
    nop

    .line 283
    nop

    .line 10
    .end local v0    # "value$iv":S
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeShortLittleEndian(Lio/ktor/utils/io/core/Buffer;S)V
    .locals 6
    .param p0, "$this$writeShortLittleEndian"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # S

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    move v0, p1

    .local v0, "value$iv":S
    const/4 v1, 0x0

    .line 347
    .local v1, "$i$f$writePrimitiveTemplate":I
    move v2, v0

    .local v2, "$this$writeShortLittleEndian_u24lambda_u2421":S
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$4":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":S
    const/4 v5, 0x0

    .line 348
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v4

    .line 65
    .end local v4    # "$this$reverseByteOrder$iv":S
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 347
    .end local v2    # "$this$writeShortLittleEndian_u24lambda_u2421":S
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$4":I
    move v2, v4

    .local v2, "it":S
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$3":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Buffer;S)V

    .line 347
    .end local v2    # "it":S
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$3":I
    nop

    .line 349
    nop

    .line 66
    .end local v0    # "value$iv":S
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method

.method public static final writeShortLittleEndian(Lio/ktor/utils/io/core/Output;S)V
    .locals 6
    .param p0, "$this$writeShortLittleEndian"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # S

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move v0, p1

    .local v0, "value$iv":S
    const/4 v1, 0x0

    .line 320
    .local v1, "$i$f$writePrimitiveTemplate":I
    move v2, v0

    .local v2, "$this$writeShortLittleEndian_u24lambda_u2411":S
    const/4 v3, 0x0

    .line 34
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":S
    const/4 v5, 0x0

    .line 321
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v4

    .line 34
    .end local v4    # "$this$reverseByteOrder$iv":S
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 320
    .end local v2    # "$this$writeShortLittleEndian_u24lambda_u2411":S
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$2":I
    move v2, v4

    .local v2, "it":S
    const/4 v3, 0x0

    .line 34
    .local v3, "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$1":I
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    .line 320
    .end local v2    # "it":S
    .end local v3    # "$i$a$-writePrimitiveTemplate-OutputLittleEndianKt$writeShortLittleEndian$1":I
    nop

    .line 322
    nop

    .line 35
    .end local v0    # "value$iv":S
    .end local v1    # "$i$f$writePrimitiveTemplate":I
    return-void
.end method
