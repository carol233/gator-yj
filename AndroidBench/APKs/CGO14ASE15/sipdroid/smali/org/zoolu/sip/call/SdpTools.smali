.class public Lorg/zoolu/sip/call/SdpTools;
.super Ljava/lang/Object;
.source "SdpTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sdpAttirbuteSelection(Lorg/zoolu/sdp/SessionDescriptor;Ljava/lang/String;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 8
    .param p0, "sdp"    # Lorg/zoolu/sdp/SessionDescriptor;
    .param p1, "a_name"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 139
    .local v3, "new_media":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/MediaDescriptor;>;"
    invoke-virtual {p0}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 140
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/MediaDescriptor;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sdp/MediaDescriptor;

    .line 143
    .local v2, "md":Lorg/zoolu/sdp/MediaDescriptor;
    invoke-virtual {v2, p1}, Lorg/zoolu/sdp/MediaDescriptor;->getAttribute(Ljava/lang/String;)Lorg/zoolu/sdp/AttributeField;

    move-result-object v0

    .line 144
    .local v0, "attr":Lorg/zoolu/sdp/AttributeField;
    if-eqz v0, :cond_0

    .line 145
    new-instance v5, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-virtual {v2}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v6

    invoke-virtual {v2}, Lorg/zoolu/sdp/MediaDescriptor;->getConnection()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0}, Lorg/zoolu/sdp/MediaDescriptor;-><init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/AttributeField;)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    .end local v0    # "attr":Lorg/zoolu/sdp/AttributeField;
    .end local v2    # "md":Lorg/zoolu/sdp/MediaDescriptor;
    :cond_1
    new-instance v4, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-direct {v4, p0}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Lorg/zoolu/sdp/SessionDescriptor;)V

    .line 150
    .local v4, "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-virtual {v4}, Lorg/zoolu/sdp/SessionDescriptor;->removeMediaDescriptors()Lorg/zoolu/sdp/SessionDescriptor;

    .line 151
    invoke-virtual {v4, v3}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptors(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 152
    return-object v4
.end method

.method public static sdpMediaProduct(Lorg/zoolu/sdp/SessionDescriptor;Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 25
    .param p0, "sdp"    # Lorg/zoolu/sdp/SessionDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/zoolu/sdp/SessionDescriptor;",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/MediaDescriptor;",
            ">;)",
            "Lorg/zoolu/sdp/SessionDescriptor;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "m_descs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/MediaDescriptor;>;"
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 57
    .local v12, "new_media":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/MediaDescriptor;>;"
    if-eqz p1, :cond_7

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 59
    .local v8, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/MediaDescriptor;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 60
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/zoolu/sdp/MediaDescriptor;

    .line 63
    .local v22, "spec_md":Lorg/zoolu/sdp/MediaDescriptor;
    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sdp/MediaField;->getMedia()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptor(Ljava/lang/String;)Lorg/zoolu/sdp/MediaDescriptor;

    move-result-object v16

    .line 67
    .local v16, "prev_md":Lorg/zoolu/sdp/MediaDescriptor;
    if-eqz v16, :cond_0

    .line 68
    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sdp/MediaDescriptor;->getAttributes()Ljava/util/Vector;

    move-result-object v21

    .line 70
    .local v21, "spec_attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    invoke-virtual/range {v16 .. v16}, Lorg/zoolu/sdp/MediaDescriptor;->getAttributes()Ljava/util/Vector;

    move-result-object v15

    .line 72
    .local v15, "prev_attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    invoke-virtual/range {v16 .. v16}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v17

    .line 73
    .local v17, "prev_mf":Lorg/zoolu/sdp/MediaField;
    new-instance v7, Ljava/util/Vector;

    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getFormatList()Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 74
    .local v7, "new_formats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sdp/MediaField;->getFormatList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/Vector;->retainAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 78
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 81
    .local v11, "new_attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    .line 82
    .local v9, "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/AttributeField;>;"
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/zoolu/sdp/AttributeField;

    .line 84
    .local v20, "spec_attr":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v23

    .line 85
    .local v23, "spec_name":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sdp/AttributeField;->getAttributeValue()Ljava/lang/String;

    move-result-object v24

    .line 86
    .local v24, "spec_value":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v10

    .line 87
    .local v10, "k":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/AttributeField;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/zoolu/sdp/AttributeField;

    .line 89
    .local v14, "prev_attr":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual {v14}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v18

    .line 90
    .local v18, "prev_name":Ljava/lang/String;
    invoke-virtual {v14}, Lorg/zoolu/sdp/AttributeField;->getAttributeValue()Ljava/lang/String;

    move-result-object v19

    .line 92
    .local v19, "prev_value":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {v11, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    .end local v10    # "k":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/AttributeField;>;"
    .end local v14    # "prev_attr":Lorg/zoolu/sdp/AttributeField;
    .end local v18    # "prev_name":Ljava/lang/String;
    .end local v19    # "prev_value":Ljava/lang/String;
    .end local v20    # "spec_attr":Lorg/zoolu/sdp/AttributeField;
    .end local v23    # "spec_name":Ljava/lang/String;
    .end local v24    # "spec_value":Ljava/lang/String;
    :cond_5
    new-instance v2, Lorg/zoolu/sdp/MediaField;

    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getMedia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getPort()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lorg/zoolu/sdp/MediaField;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Vector;)V

    .line 102
    .local v2, "new_mf":Lorg/zoolu/sdp/MediaField;
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 103
    new-instance v3, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-virtual/range {v16 .. v16}, Lorg/zoolu/sdp/MediaDescriptor;->getConnection()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v4

    invoke-direct {v3, v2, v4, v11}, Lorg/zoolu/sdp/MediaDescriptor;-><init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Ljava/util/Vector;)V

    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 106
    :cond_6
    invoke-virtual {v2}, Lorg/zoolu/sdp/MediaField;->getMedia()Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 107
    new-instance v3, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-virtual/range {v16 .. v16}, Lorg/zoolu/sdp/MediaDescriptor;->getConnection()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v4

    invoke-direct {v3, v2, v4, v11}, Lorg/zoolu/sdp/MediaDescriptor;-><init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Ljava/util/Vector;)V

    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    .end local v2    # "new_mf":Lorg/zoolu/sdp/MediaField;
    .end local v7    # "new_formats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/MediaDescriptor;>;"
    .end local v9    # "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/AttributeField;>;"
    .end local v11    # "new_attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    .end local v15    # "prev_attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    .end local v16    # "prev_md":Lorg/zoolu/sdp/MediaDescriptor;
    .end local v17    # "prev_mf":Lorg/zoolu/sdp/MediaField;
    .end local v21    # "spec_attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    .end local v22    # "spec_md":Lorg/zoolu/sdp/MediaDescriptor;
    :cond_7
    new-instance v13, Lorg/zoolu/sdp/SessionDescriptor;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Lorg/zoolu/sdp/SessionDescriptor;)V

    .line 116
    .local v13, "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-virtual {v13}, Lorg/zoolu/sdp/SessionDescriptor;->removeMediaDescriptors()Lorg/zoolu/sdp/SessionDescriptor;

    .line 117
    invoke-virtual {v13, v12}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptors(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 118
    return-object v13
.end method
