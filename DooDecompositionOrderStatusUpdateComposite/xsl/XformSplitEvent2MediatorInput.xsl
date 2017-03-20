<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:inp="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns4="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite/BusinessEventNotificationMediator" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://xmlns.oracle.com/apps/scm/doo/common/events/service/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:errors="http://xmlns.oracle.com/adf/svc/errors/" xmlns:types="http://xmlns.oracle.com/apps/scm/doo/common/events/service/types/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="commonj.sdo/xml" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://xmlns.oracle.com/adf/svc/types/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="commonj.sdo/java" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="commonj.sdo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tm="http://xmlns.oracle.com/topologyManager/client/xpath/extension" xmlns:orafault="http://xmlns.oracle.com/oracleas/schema/oracle-fault-11_0" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk soap tns wsdl errors types ns1 ns2 ns3 ns0 xsd orafault inp ns4 bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn tm ldap">
   <xsl:template match="/">
      <inp:SplitInput>
         <xsl:for-each select="/types:preparePayLoadForSplitBusinessEventResponse/types:result">
            <inp:EventLines>
               <xsl:if test="tns:SourceOrderSystem">
                  <tns:SourceOrderSystem>
                     <xsl:if test="tns:SourceOrderSystem/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderSystem/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderSystem"/>
                  </tns:SourceOrderSystem>
               </xsl:if>
               <xsl:if test="tns:SourceOrderId">
                  <tns:SourceOrderId>
                     <xsl:if test="tns:SourceOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderId"/>
                  </tns:SourceOrderId>
               </xsl:if>
               <xsl:if test="tns:SourceOrderNumber">
                  <tns:SourceOrderNumber>
                     <xsl:if test="tns:SourceOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderNumber"/>
                  </tns:SourceOrderNumber>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderId">
                  <tns:OrchestrationOrderId>
                     <xsl:if test="tns:OrchestrationOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderId"/>
                  </tns:OrchestrationOrderId>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderNumber">
                  <tns:OrchestrationOrderNumber>
                     <xsl:if test="tns:OrchestrationOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderNumber"/>
                  </tns:OrchestrationOrderNumber>
               </xsl:if>
               <xsl:if test="tns:CustomerId">
                  <tns:CustomerId>
                     <xsl:if test="tns:CustomerId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:CustomerId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:CustomerId"/>
                  </tns:CustomerId>
               </xsl:if>
               <xsl:if test="tns:SourceOrderLineId">
                  <tns:SourceOrderLineId>
                     <xsl:if test="tns:SourceOrderLineId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderLineId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderLineId"/>
                  </tns:SourceOrderLineId>
               </xsl:if>
               <xsl:if test="tns:SourceOrderLineNumber">
                  <tns:SourceOrderLineNumber>
                     <xsl:if test="tns:SourceOrderLineNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderLineNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderLineNumber"/>
                  </tns:SourceOrderLineNumber>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderLineId">
                  <tns:OrchestrationOrderLineId>
                     <xsl:if test="tns:OrchestrationOrderLineId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderLineId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderLineId"/>
                  </tns:OrchestrationOrderLineId>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderLineNumber">
                  <tns:OrchestrationOrderLineNumber>
                     <xsl:if test="tns:OrchestrationOrderLineNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderLineNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderLineNumber"/>
                  </tns:OrchestrationOrderLineNumber>
               </xsl:if>
               <xsl:if test="tns:ItemId">
                  <tns:ItemId>
                     <xsl:if test="tns:ItemId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:ItemId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:ItemId"/>
                  </tns:ItemId>
               </xsl:if>
               <xsl:if test="tns:InventoryOrganizationId">
                  <tns:InventoryOrganizationId>
                     <xsl:if test="tns:InventoryOrganizationId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:InventoryOrganizationId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:InventoryOrganizationId"/>
                  </tns:InventoryOrganizationId>
               </xsl:if>
               <xsl:if test="tns:PreSplitOrderedQuantity">
                  <tns:PreSplitOrderedQuantity>
                     <xsl:if test="tns:PreSplitOrderedQuantity/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:PreSplitOrderedQuantity/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:PreSplitOrderedQuantity"/>
                  </tns:PreSplitOrderedQuantity>
               </xsl:if>
               <xsl:for-each select="tns:SplitEventDetailsForFulfillLineTR">
                  <tns:SplitEventDetailsForFulfillLineTR>
                     <xsl:if test="tns:FulfillmentLineId">
                        <tns:FulfillmentLineId>
                           <xsl:if test="tns:FulfillmentLineId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:FulfillmentLineId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:FulfillmentLineId"/>
                        </tns:FulfillmentLineId>
                     </xsl:if>
                     <xsl:if test="tns:FulfillmentLineNumber">
                        <tns:FulfillmentLineNumber>
                           <xsl:if test="tns:FulfillmentLineNumber/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:FulfillmentLineNumber/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:FulfillmentLineNumber"/>
                        </tns:FulfillmentLineNumber>
                     </xsl:if>
                     <xsl:if test="tns:OrderedQuantity">
                        <tns:OrderedQuantity>
                           <xsl:if test="tns:OrderedQuantity/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:OrderedQuantity/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:OrderedQuantity"/>
                        </tns:OrderedQuantity>
                     </xsl:if>
                     <xsl:if test="tns:ShippedQuantity">
                        <tns:ShippedQuantity>
                           <xsl:if test="tns:ShippedQuantity/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:ShippedQuantity/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:ShippedQuantity"/>
                        </tns:ShippedQuantity>
                     </xsl:if>
                  </tns:SplitEventDetailsForFulfillLineTR>
               </xsl:for-each>
            </inp:EventLines>
         </xsl:for-each>
      </inp:SplitInput>
   </xsl:template>
</xsl:stylesheet>
