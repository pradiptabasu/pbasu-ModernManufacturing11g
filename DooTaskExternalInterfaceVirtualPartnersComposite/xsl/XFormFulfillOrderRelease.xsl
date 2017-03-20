<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:svcdoc="http://xmlns.oracle.com/Services/Documentation/V1" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://xmlns.oracle.com/EnterpriseServices/FulfillmentOrder/V1" xmlns:ebo="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/FulfillmentOrder/V1" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns2="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/FulfillmentOrder/V1" xmlns:ns1="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns4="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ns3="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04" xmlns:ebs="http://xmlns.oracle.com/EnterpriseServices/Core/FulfillmentOrder/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl svcdoc ns0 ebo soap ns2 ns1 ns ns4 xsd corecom ns3 ebs xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListResponseEBM>
         <corecom:EBMHeader>
            <corecom:VerbCode>
               <xsl:attribute name="listID">
                  <xsl:value-of select="/ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListEBM/corecom:EBMHeader/corecom:VerbCode/@listID"/>
               </xsl:attribute>
               <xsl:attribute name="listAgencyID">
                  <xsl:value-of select="/ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListEBM/corecom:EBMHeader/corecom:VerbCode/@listAgencyID"/>
               </xsl:attribute>
               <xsl:attribute name="listVersionID">
                  <xsl:value-of select="/ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListEBM/corecom:EBMHeader/corecom:VerbCode/@listVersionID"/>
               </xsl:attribute>
               <xsl:value-of select="/ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListEBM/corecom:EBMHeader/corecom:VerbCode"/>
            </corecom:VerbCode>
         </corecom:EBMHeader>
         <xsl:for-each select="/ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListEBM/ebo:DataArea">
            <ebo:DataArea>
               <ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListResponse>
                  <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification">
                     <corecom:FulfillmentOrderIdentification>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID">
                           <corecom:BusinessComponentID>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID/@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID/@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID/@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID/@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID/@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID/@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:BusinessComponentID"/>
                           </corecom:BusinessComponentID>
                        </xsl:if>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID">
                           <corecom:ID>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID/@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID/@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID/@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID/@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID/@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID/@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ID"/>
                           </corecom:ID>
                        </xsl:if>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ContextID">
                           <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ContextID">
                              <corecom:ContextID>
                                 <xsl:if test="@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="."/>
                              </corecom:ContextID>
                           </xsl:for-each>
                        </xsl:if>
                        <corecom:ApplicationObjectKey>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID">
                              <corecom:ID>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ID"/>
                              </corecom:ID>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ContextID">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:ApplicationObjectKey/corecom:ContextID">
                                 <corecom:ContextID>
                                    <xsl:if test="@schemeID">
                                       <xsl:attribute name="schemeID">
                                          <xsl:value-of select="@schemeID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@schemeAgencyID">
                                       <xsl:attribute name="schemeAgencyID">
                                          <xsl:value-of select="@schemeAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@schemeVersionID">
                                       <xsl:attribute name="schemeVersionID">
                                          <xsl:value-of select="@schemeVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:ContextID>
                              </xsl:for-each>
                           </xsl:if>
                        </corecom:ApplicationObjectKey>
                        <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:AlternateObjectKey">
                           <corecom:AlternateObjectKey>
                              <xsl:if test="corecom:ID">
                                 <corecom:ID>
                                    <xsl:if test="corecom:ID/@schemeID">
                                       <xsl:attribute name="schemeID">
                                          <xsl:value-of select="corecom:ID/@schemeID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:ID/@schemeAgencyID">
                                       <xsl:attribute name="schemeAgencyID">
                                          <xsl:value-of select="corecom:ID/@schemeAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:ID/@schemeVersionID">
                                       <xsl:attribute name="schemeVersionID">
                                          <xsl:value-of select="corecom:ID/@schemeVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="corecom:ID"/>
                                 </corecom:ID>
                              </xsl:if>
                              <xsl:if test="corecom:ContextID">
                                 <xsl:for-each select="corecom:ContextID">
                                    <corecom:ContextID>
                                       <xsl:if test="@schemeID">
                                          <xsl:attribute name="schemeID">
                                             <xsl:value-of select="@schemeID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@schemeAgencyID">
                                          <xsl:attribute name="schemeAgencyID">
                                             <xsl:value-of select="@schemeAgencyID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@schemeVersionID">
                                          <xsl:attribute name="schemeVersionID">
                                             <xsl:value-of select="@schemeVersionID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="."/>
                                    </corecom:ContextID>
                                 </xsl:for-each>
                              </xsl:if>
                           </corecom:AlternateObjectKey>
                        </xsl:for-each>
                        <corecom:Revision>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number">
                              <corecom:Number>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number/@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number/@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number/@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number/@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number/@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number/@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Number"/>
                              </corecom:Number>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Description">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Description">
                                 <corecom:Description>
                                    <xsl:if test="@languageCode">
                                       <xsl:attribute name="languageCode">
                                          <xsl:value-of select="@languageCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@languageLocaleCode">
                                       <xsl:attribute name="languageLocaleCode">
                                          <xsl:value-of select="@languageLocaleCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:Description>
                              </xsl:for-each>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code">
                              <corecom:Code>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code/@listID">
                                    <xsl:attribute name="listID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code/@listID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code/@listAgencyID">
                                    <xsl:attribute name="listAgencyID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code/@listAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code/@listVersionID">
                                    <xsl:attribute name="listVersionID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code/@listVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Code"/>
                              </corecom:Code>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:EffectiveDate">
                              <corecom:EffectiveDate>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:EffectiveDate"/>
                              </corecom:EffectiveDate>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:EffectiveEndDate">
                              <corecom:EffectiveEndDate>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:EffectiveEndDate"/>
                              </corecom:EffectiveEndDate>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Label">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Label">
                                 <corecom:Label>
                                    <xsl:if test="@languageCode">
                                       <xsl:attribute name="languageCode">
                                          <xsl:value-of select="@languageCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@languageLocaleCode">
                                       <xsl:attribute name="languageLocaleCode">
                                          <xsl:value-of select="@languageLocaleCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:Label>
                              </xsl:for-each>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Reason">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Revision/corecom:Reason">
                                 <corecom:Reason>
                                    <xsl:if test="@languageCode">
                                       <xsl:attribute name="languageCode">
                                          <xsl:value-of select="@languageCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@languageLocaleCode">
                                       <xsl:attribute name="languageLocaleCode">
                                          <xsl:value-of select="@languageLocaleCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:Reason>
                              </xsl:for-each>
                           </xsl:if>
                        </corecom:Revision>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Description">
                           <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderIdentification/corecom:Description">
                              <corecom:Description>
                                 <xsl:if test="@languageCode">
                                    <xsl:attribute name="languageCode">
                                       <xsl:value-of select="@languageCode"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="@languageLocaleCode">
                                    <xsl:attribute name="languageLocaleCode">
                                       <xsl:value-of select="@languageLocaleCode"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="."/>
                              </corecom:Description>
                           </xsl:for-each>
                        </xsl:if>
                     </corecom:FulfillmentOrderIdentification>
                  </xsl:if>
                  <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification">
                     <corecom:FulfillmentOrderLineIdentification>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID">
                           <corecom:BusinessComponentID>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID/@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID/@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID/@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID/@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID/@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID/@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:BusinessComponentID"/>
                           </corecom:BusinessComponentID>
                        </xsl:if>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID">
                           <corecom:ID>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID/@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID/@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID/@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID/@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID/@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID/@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ID"/>
                           </corecom:ID>
                        </xsl:if>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ContextID">
                           <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ContextID">
                              <corecom:ContextID>
                                 <xsl:if test="@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="."/>
                              </corecom:ContextID>
                           </xsl:for-each>
                        </xsl:if>
                        <corecom:ApplicationObjectKey>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID">
                              <corecom:ID>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ID"/>
                              </corecom:ID>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ContextID">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:ApplicationObjectKey/corecom:ContextID">
                                 <corecom:ContextID>
                                    <xsl:if test="@schemeID">
                                       <xsl:attribute name="schemeID">
                                          <xsl:value-of select="@schemeID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@schemeAgencyID">
                                       <xsl:attribute name="schemeAgencyID">
                                          <xsl:value-of select="@schemeAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@schemeVersionID">
                                       <xsl:attribute name="schemeVersionID">
                                          <xsl:value-of select="@schemeVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:ContextID>
                              </xsl:for-each>
                           </xsl:if>
                        </corecom:ApplicationObjectKey>
                        <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:AlternateObjectKey">
                           <corecom:AlternateObjectKey>
                              <xsl:if test="corecom:ID">
                                 <corecom:ID>
                                    <xsl:if test="corecom:ID/@schemeID">
                                       <xsl:attribute name="schemeID">
                                          <xsl:value-of select="corecom:ID/@schemeID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:ID/@schemeAgencyID">
                                       <xsl:attribute name="schemeAgencyID">
                                          <xsl:value-of select="corecom:ID/@schemeAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:ID/@schemeVersionID">
                                       <xsl:attribute name="schemeVersionID">
                                          <xsl:value-of select="corecom:ID/@schemeVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="corecom:ID"/>
                                 </corecom:ID>
                              </xsl:if>
                              <xsl:if test="corecom:ContextID">
                                 <xsl:for-each select="corecom:ContextID">
                                    <corecom:ContextID>
                                       <xsl:if test="@schemeID">
                                          <xsl:attribute name="schemeID">
                                             <xsl:value-of select="@schemeID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@schemeAgencyID">
                                          <xsl:attribute name="schemeAgencyID">
                                             <xsl:value-of select="@schemeAgencyID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@schemeVersionID">
                                          <xsl:attribute name="schemeVersionID">
                                             <xsl:value-of select="@schemeVersionID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="."/>
                                    </corecom:ContextID>
                                 </xsl:for-each>
                              </xsl:if>
                           </corecom:AlternateObjectKey>
                        </xsl:for-each>
                        <corecom:Revision>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number">
                              <corecom:Number>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number/@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number/@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number/@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number/@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number/@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number/@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Number"/>
                              </corecom:Number>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Description">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Description">
                                 <corecom:Description>
                                    <xsl:if test="@languageCode">
                                       <xsl:attribute name="languageCode">
                                          <xsl:value-of select="@languageCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@languageLocaleCode">
                                       <xsl:attribute name="languageLocaleCode">
                                          <xsl:value-of select="@languageLocaleCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:Description>
                              </xsl:for-each>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code">
                              <corecom:Code>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code/@listID">
                                    <xsl:attribute name="listID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code/@listID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code/@listAgencyID">
                                    <xsl:attribute name="listAgencyID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code/@listAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code/@listVersionID">
                                    <xsl:attribute name="listVersionID">
                                       <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code/@listVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Code"/>
                              </corecom:Code>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:EffectiveDate">
                              <corecom:EffectiveDate>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:EffectiveDate"/>
                              </corecom:EffectiveDate>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:EffectiveEndDate">
                              <corecom:EffectiveEndDate>
                                 <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:EffectiveEndDate"/>
                              </corecom:EffectiveEndDate>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Label">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Label">
                                 <corecom:Label>
                                    <xsl:if test="@languageCode">
                                       <xsl:attribute name="languageCode">
                                          <xsl:value-of select="@languageCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@languageLocaleCode">
                                       <xsl:attribute name="languageLocaleCode">
                                          <xsl:value-of select="@languageLocaleCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:Label>
                              </xsl:for-each>
                           </xsl:if>
                           <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Reason">
                              <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Revision/corecom:Reason">
                                 <corecom:Reason>
                                    <xsl:if test="@languageCode">
                                       <xsl:attribute name="languageCode">
                                          <xsl:value-of select="@languageCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@languageLocaleCode">
                                       <xsl:attribute name="languageLocaleCode">
                                          <xsl:value-of select="@languageLocaleCode"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:Reason>
                              </xsl:for-each>
                           </xsl:if>
                        </corecom:Revision>
                        <xsl:if test="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Description">
                           <xsl:for-each select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/corecom:FulfillmentOrderLineIdentification/corecom:Description">
                              <corecom:Description>
                                 <xsl:if test="@languageCode">
                                    <xsl:attribute name="languageCode">
                                       <xsl:value-of select="@languageCode"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="@languageLocaleCode">
                                    <xsl:attribute name="languageLocaleCode">
                                       <xsl:value-of select="@languageLocaleCode"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="."/>
                              </corecom:Description>
                           </xsl:for-each>
                        </xsl:if>
                     </corecom:FulfillmentOrderLineIdentification>
                  </xsl:if>
                  <ebo:TypeCode>
                     <xsl:attribute name="listID">
                        <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:TypeCode/@listID"/>
                     </xsl:attribute>
                     <xsl:attribute name="listAgencyID">
                        <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:TypeCode/@listAgencyID"/>
                     </xsl:attribute>
                     <xsl:attribute name="listVersionID">
                        <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:TypeCode/@listVersionID"/>
                     </xsl:attribute>
                     <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:TypeCode"/>
                  </ebo:TypeCode>
                  <ebo:SuccessfulIndicator>
                     <xsl:text disable-output-escaping="no">true</xsl:text>
                  </ebo:SuccessfulIndicator>
                  <ebo:FulfillmentTaskTypeCode>
                     <xsl:attribute name="listID">
                        <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:FulfillmentTaskTypeCode/@listID"/>
                     </xsl:attribute>
                     <xsl:attribute name="listAgencyID">
                        <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:FulfillmentTaskTypeCode/@listAgencyID"/>
                     </xsl:attribute>
                     <xsl:attribute name="listVersionID">
                        <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:FulfillmentTaskTypeCode/@listVersionID"/>
                     </xsl:attribute>
                     <xsl:value-of select="ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldList/ebo:FulfillmentTaskTypeCode"/>
                  </ebo:FulfillmentTaskTypeCode>
               </ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListResponse>
            </ebo:DataArea>
         </xsl:for-each>
      </ebo:ReleaseFulfillmentOrderScheduleFulfillmentTaskHoldListResponseEBM>
   </xsl:template>
</xsl:stylesheet>
