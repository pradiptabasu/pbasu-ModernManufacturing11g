<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns4="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://xmlns.oracle.com/apps/scm/doo/common/events/service/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:errors="http://xmlns.oracle.com/adf/svc/errors/" xmlns:types="http://xmlns.oracle.com/apps/scm/doo/common/events/service/types/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="commonj.sdo/xml" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://xmlns.oracle.com/adf/svc/types/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="commonj.sdo/java" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="commonj.sdo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:client="http://xmlns.oracle.com/apps/scm/doo/taskLayer/externalInterfaceLayer/DooTaskExternalInterfaceVirtualPartnersComposite/BusinessEventsConnector" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tm="http://xmlns.oracle.com/topologyManager/client/xpath/extension" xmlns:orafault="http://xmlns.oracle.com/oracleas/schema/oracle-fault-11_0" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk soap tns wsdl errors types ns1 ns2 ns3 ns0 xsd orafault ns4 client bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn tm ldap">
   <xsl:template match="/">
      <ns4:results>
         <xsl:for-each select="/types:preparePayLoadForSplitBusinessEventResponse/types:result">
            <ns4:OrderHeader>
               <ns4:EventCode>
                  <xsl:text disable-output-escaping="no">SPLIT</xsl:text>
               </ns4:EventCode>
               <xsl:if test="tns:SourceOrderSystem">
                  <ns4:SourceOrderSystem>
                     <xsl:if test="tns:SourceOrderSystem/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderSystem/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderSystem"/>
                  </ns4:SourceOrderSystem>
               </xsl:if>
               <xsl:if test="tns:SourceOrderId">
                  <ns4:SourceOrderId>
                     <xsl:if test="tns:SourceOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderId"/>
                  </ns4:SourceOrderId>
               </xsl:if>
               <xsl:if test="tns:SourceOrderNumber">
                  <ns4:SourceOrderNumber>
                     <xsl:if test="tns:SourceOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderNumber"/>
                  </ns4:SourceOrderNumber>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderNumber">
                  <ns4:OrchestrationOrderNumber>
                     <xsl:if test="tns:OrchestrationOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderNumber"/>
                  </ns4:OrchestrationOrderNumber>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderId">
                  <ns4:OrchestrationOrderId>
                     <xsl:if test="tns:OrchestrationOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderId"/>
                  </ns4:OrchestrationOrderId>
               </xsl:if>
               <xsl:if test="tns:CustomerId">
                  <ns4:CustomerId>
                     <xsl:if test="tns:CustomerId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:CustomerId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:CustomerId"/>
                  </ns4:CustomerId>
               </xsl:if>
               <ns4:OrderLine>
                  <xsl:if test="tns:OrchestrationOrderLineId">
                     <ns4:OrchestrationOrderLineId>
                        <xsl:if test="tns:OrchestrationOrderLineId/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:OrchestrationOrderLineId/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:OrchestrationOrderLineId"/>
                     </ns4:OrchestrationOrderLineId>
                  </xsl:if>
                  <xsl:if test="tns:OrchestrationOrderLineNumber">
                     <ns4:OrchestrationOrderLineNumber>
                        <xsl:if test="tns:OrchestrationOrderLineNumber/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:OrchestrationOrderLineNumber/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:OrchestrationOrderLineNumber"/>
                     </ns4:OrchestrationOrderLineNumber>
                  </xsl:if>
                  <xsl:if test="tns:SourceOrderLineId">
                     <ns4:SourceOrderLineId>
                        <xsl:if test="tns:SourceOrderLineId/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:SourceOrderLineId/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:SourceOrderLineId"/>
                     </ns4:SourceOrderLineId>
                  </xsl:if>
                  <xsl:if test="tns:SourceOrderLineNumber">
                     <ns4:SourceOrderLineNumber>
                        <xsl:if test="tns:SourceOrderLineNumber/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:SourceOrderLineNumber/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:SourceOrderLineNumber"/>
                     </ns4:SourceOrderLineNumber>
                  </xsl:if>
                  <xsl:if test="tns:PreSplitOrderedQuantity">
                     <ns4:PreSplitOrderedQuantity>
                        <xsl:if test="tns:PreSplitOrderedQuantity/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:PreSplitOrderedQuantity/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:PreSplitOrderedQuantity"/>
                     </ns4:PreSplitOrderedQuantity>
                  </xsl:if>
                  <xsl:if test="tns:ItemId">
                     <ns4:ItemId>
                        <xsl:if test="tns:ItemId/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:ItemId/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:ItemId"/>
                     </ns4:ItemId>
                  </xsl:if>
                  <xsl:if test="tns:InventoryOrganizationId">
                     <ns4:InventoryOrganizationId>
                        <xsl:if test="tns:InventoryOrganizationId/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:InventoryOrganizationId/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:InventoryOrganizationId"/>
                     </ns4:InventoryOrganizationId>
                  </xsl:if>
                  <xsl:for-each select="tns:SplitEventDetailsForFulfillLineTR">
                     <ns4:OrderFulfillmentLine>
                        <xsl:if test="tns:FulfillmentLineId">
                           <ns4:FulfillmentOrderLineId>
                              <xsl:if test="tns:FulfillmentLineId/@xsi:nil">
                                 <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="tns:FulfillmentLineId/@xsi:nil"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="tns:FulfillmentLineId"/>
                           </ns4:FulfillmentOrderLineId>
                        </xsl:if>
                        <xsl:if test="tns:FulfillmentLineNumber">
                           <ns4:FulfillmentOrderLineNumber>
                              <xsl:if test="tns:FulfillmentLineNumber/@xsi:nil">
                                 <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="tns:FulfillmentLineNumber/@xsi:nil"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="tns:FulfillmentLineNumber"/>
                           </ns4:FulfillmentOrderLineNumber>
                        </xsl:if>
                        <xsl:if test="tns:ShippedQuantity">
                           <ns4:ShippedQuantity>
                              <xsl:if test="tns:ShippedQuantity/@xsi:nil">
                                 <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="tns:ShippedQuantity/@xsi:nil"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="tns:ShippedQuantity"/>
                           </ns4:ShippedQuantity>
                        </xsl:if>
                        <xsl:if test="tns:OrderedQuantity">
                           <ns4:OrderedQuantity>
                              <xsl:if test="tns:OrderedQuantity/@xsi:nil">
                                 <xsl:attribute name="xsi:nil">
                                    <xsl:value-of select="tns:OrderedQuantity/@xsi:nil"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="tns:OrderedQuantity"/>
                           </ns4:OrderedQuantity>
                        </xsl:if>
                     </ns4:OrderFulfillmentLine>
                  </xsl:for-each>
               </ns4:OrderLine>
            </ns4:OrderHeader>
         </xsl:for-each>
      </ns4:results>
   </xsl:template>
</xsl:stylesheet>
