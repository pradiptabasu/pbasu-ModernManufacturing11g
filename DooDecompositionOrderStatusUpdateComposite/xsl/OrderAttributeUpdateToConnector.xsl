<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns4="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://xmlns.oracle.com/apps/scm/doo/common/events/service/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:errors="http://xmlns.oracle.com/adf/svc/errors/" xmlns:types="http://xmlns.oracle.com/apps/scm/doo/common/events/service/types/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="commonj.sdo/xml" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://xmlns.oracle.com/adf/svc/types/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="commonj.sdo/java" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="commonj.sdo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:client="http://xmlns.oracle.com/apps/scm/doo/taskLayer/externalInterfaceLayer/DooTaskExternalInterfaceVirtualPartnersComposite/BusinessEventsConnector" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tm="http://xmlns.oracle.com/topologyManager/client/xpath/extension" xmlns:orafault="http://xmlns.oracle.com/oracleas/schema/oracle-fault-11_0" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk soap tns wsdl errors types ns1 ns2 ns3 ns0 xsd orafault ns4 client bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn tm ldap">
   <xsl:template match="/">
      <ns4:results>
         <xsl:for-each select="/types:preparePayloadForOrderUpdateEventResponse/types:result">
            <ns4:OrderHeader>
               <ns4:EventCode>
                  <xsl:text disable-output-escaping="no">OrderAttributeUpdate</xsl:text>
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
               <xsl:for-each select="tns:OrderUpdateLineTR">
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
                     <xsl:for-each select="tns:OrderUpdateFulfillLineTR">
                        <ns4:OrderFulfillmentLine>
                           <xsl:if test="tns:SourceOrderScheduleId">
                              <ns4:SourceOrderScheduleId>
                                 <xsl:if test="tns:SourceOrderScheduleId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:SourceOrderScheduleId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:SourceOrderScheduleId"/>
                              </ns4:SourceOrderScheduleId>
                           </xsl:if>
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
                           <xsl:if test="tns:FulfillmentOrderLineId">
                              <ns4:FulfillmentOrderLineId>
                                 <xsl:if test="tns:FulfillmentOrderLineId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentOrderLineId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentOrderLineId"/>
                              </ns4:FulfillmentOrderLineId>
                           </xsl:if>
                           <xsl:if test="tns:FulfillmentOrderLineNumber">
                              <ns4:FulfillmentOrderLineNumber>
                                 <xsl:if test="tns:FulfillmentOrderLineNumber/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentOrderLineNumber/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentOrderLineNumber"/>
                              </ns4:FulfillmentOrderLineNumber>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualShipDateOld) > 0.0)">
                              <ns4:ActualShipDateNew>
                                 <xsl:if test="tns:ActualShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualShipDateNew"/>
                              </ns4:ActualShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualShipDateOld) > 0.0)">
                              <ns4:ActualShipDateOld>
                                 <xsl:if test="tns:ActualShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualShipDateOld"/>
                              </ns4:ActualShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToContactIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToContactIdOld) > 0.0)">
                              <ns4:BillToContactIdNew>
                                 <xsl:if test="tns:BillToContactIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToContactIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToContactIdNew"/>
                              </ns4:BillToContactIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToContactIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToContactIdOld) > 0.0)">
                              <ns4:BillToContactIdOld>
                                 <xsl:if test="tns:BillToContactIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToContactIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToContactIdOld"/>
                              </ns4:BillToContactIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToCustomerIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToCustomerIdOld) > 0.0)">
                              <ns4:BillToCustomerIdNew>
                                 <xsl:if test="tns:BillToCustomerIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToCustomerIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToCustomerIdNew"/>
                              </ns4:BillToCustomerIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToCustomerIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToCustomerIdOld) > 0.0)">
                              <ns4:BillToCustomerIdOld>
                                 <xsl:if test="tns:BillToCustomerIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToCustomerIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToCustomerIdOld"/>
                              </ns4:BillToCustomerIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FobPointCodeNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FobPointCodeOld) > 0.0)">
                              <ns4:FobPointCodeNew>
                                 <xsl:if test="tns:FobPointCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FobPointCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FobPointCodeNew"/>
                              </ns4:FobPointCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FobPointCodeNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FobPointCodeOld) > 0.0)">
                              <ns4:FobPointCodeOld>
                                 <xsl:if test="tns:FobPointCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FobPointCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FobPointCodeOld"/>
                              </ns4:FobPointCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillOrgIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillOrgIdOld) > 0.0)">
                              <ns4:FulfillOrgIdNew>
                                 <xsl:if test="tns:FulfillOrgIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillOrgIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillOrgIdNew"/>
                              </ns4:FulfillOrgIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillOrgIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillOrgIdOld) > 0.0)">
                              <ns4:FulfillOrgIdOld>
                                 <xsl:if test="tns:FulfillOrgIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillOrgIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillOrgIdOld"/>
                              </ns4:FulfillOrgIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:InventoryItemIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:InventoryItemIdOld) > 0.0)">
                              <ns4:InventoryItemIdNew>
                                 <xsl:if test="tns:InventoryItemIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:InventoryItemIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:InventoryItemIdNew"/>
                              </ns4:InventoryItemIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:InventoryItemIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:InventoryItemIdOld) > 0.0)">
                              <ns4:InventoryItemIdOld>
                                 <xsl:if test="tns:InventoryItemIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:InventoryItemIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:InventoryItemIdOld"/>
                              </ns4:InventoryItemIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderedQtyNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderedQtyOld) > 0.0)">
                              <ns4:OrderedQtyNew>
                                 <xsl:if test="tns:OrderedQtyNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:OrderedQtyNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:OrderedQtyNew"/>
                              </ns4:OrderedQtyNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderedQtyNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderedQtyOld) > 0.0)">
                              <ns4:OrderedQtyOld>
                                 <xsl:if test="tns:OrderedQtyOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:OrderedQtyOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:OrderedQtyOld"/>
                              </ns4:OrderedQtyOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseArrivalDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseArrivalDateOld) > 0.0)">
                              <ns4:PromiseArrivalDateNew>
                                 <xsl:if test="tns:PromiseArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseArrivalDateNew"/>
                              </ns4:PromiseArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseArrivalDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseArrivalDateOld) > 0.0)">
                              <ns4:PromiseArrivalDateOld>
                                 <xsl:if test="tns:PromiseArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseArrivalDateOld"/>
                              </ns4:PromiseArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseShipDateOld) > 0.0)">
                              <ns4:PromiseShipDateNew>
                                 <xsl:if test="tns:PromiseShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseShipDateNew"/>
                              </ns4:PromiseShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:PromiseShipDateOld) > 0.0)">
                              <ns4:PromiseShipDateOld>
                                 <xsl:if test="tns:PromiseShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseShipDateOld"/>
                              </ns4:PromiseShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestArrivalDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestArrivalDateOld) > 0.0)">
                              <ns4:RequestArrivalDateNew>
                                 <xsl:if test="tns:RequestArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestArrivalDateNew"/>
                              </ns4:RequestArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestArrivalDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestArrivalDateOld) > 0.0)">
                              <ns4:RequestArrivalDateOld>
                                 <xsl:if test="tns:RequestArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestArrivalDateOld"/>
                              </ns4:RequestArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestShipDateOld) > 0.0)">
                              <ns4:RequestShipDateNew>
                                 <xsl:if test="tns:RequestShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestShipDateNew"/>
                              </ns4:RequestShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RequestShipDateOld) > 0.0)">
                              <ns4:RequestShipDateOld>
                                 <xsl:if test="tns:RequestShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestShipDateOld"/>
                              </ns4:RequestShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleShipDateOld) > 0.0)">
                              <ns4:ScheduleShipDateNew>
                                 <xsl:if test="tns:ScheduleShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleShipDateNew"/>
                              </ns4:ScheduleShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleShipDateOld) > 0.0)">
                              <ns4:ScheduleShipDateOld>
                                 <xsl:if test="tns:ScheduleShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleShipDateOld"/>
                              </ns4:ScheduleShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleArrivalDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleArrivalDateOld) > 0.0)">
                              <ns4:ScheduleArrivalDateNew>
                                 <xsl:if test="tns:ScheduleArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleArrivalDateNew"/>
                              </ns4:ScheduleArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleArrivalDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ScheduleArrivalDateOld) > 0.0)">
                              <ns4:ScheduleArrivalDateOld>
                                 <xsl:if test="tns:ScheduleArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleArrivalDateOld"/>
                              </ns4:ScheduleArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipClassOfServiceNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipClassOfServiceOld) > 0.0)">
                              <ns4:ShipClassOfServiceNew>
                                 <xsl:if test="tns:ShipClassOfServiceNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipClassOfServiceNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipClassOfServiceNew"/>
                              </ns4:ShipClassOfServiceNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipClassOfServiceNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipClassOfServiceOld) > 0.0)">
                              <ns4:ShipClassOfServiceOld>
                                 <xsl:if test="tns:ShipClassOfServiceOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipClassOfServiceOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipClassOfServiceOld"/>
                              </ns4:ShipClassOfServiceOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipModeOfTransportNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipModeOfTransportOld) > 0.0)">
                              <ns4:ShipModeOfTransportNew>
                                 <xsl:if test="tns:ShipModeOfTransportNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipModeOfTransportNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipModeOfTransportNew"/>
                              </ns4:ShipModeOfTransportNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipModeOfTransportNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipModeOfTransportOld) > 0.0)">
                              <ns4:ShipModeOfTransportOld>
                                 <xsl:if test="tns:ShipModeOfTransportOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipModeOfTransportOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipModeOfTransportOld"/>
                              </ns4:ShipModeOfTransportOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipmentPriorityCodeOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipmentPriorityCodeNew) > 0.0)">
                              <ns4:ShipmentPriorityCodeNew>
                                 <xsl:if test="tns:ShipmentPriorityCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipmentPriorityCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipmentPriorityCodeNew"/>
                              </ns4:ShipmentPriorityCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipmentPriorityCodeOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipmentPriorityCodeNew) > 0.0)">
                              <ns4:ShipmentPriorityCodeOld>
                                 <xsl:if test="tns:ShipmentPriorityCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipmentPriorityCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipmentPriorityCodeOld"/>
                              </ns4:ShipmentPriorityCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToContactIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToContactIdOld) > 0.0)">
                              <ns4:ShipToContactIdNew>
                                 <xsl:if test="tns:ShipToContactIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToContactIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToContactIdNew"/>
                              </ns4:ShipToContactIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToContactIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToContactIdOld) > 0.0)">
                              <ns4:ShipToContactIdOld>
                                 <xsl:if test="tns:ShipToContactIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToContactIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToContactIdOld"/>
                              </ns4:ShipToContactIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToCustomerIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToCustomerIdOld) > 0.0)">
                              <ns4:ShipToCustomerIdNew>
                                 <xsl:if test="tns:ShipToCustomerIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToCustomerIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToCustomerIdNew"/>
                              </ns4:ShipToCustomerIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToCustomerIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToCustomerIdOld) > 0.0)">
                              <ns4:ShipToCustomerIdOld>
                                 <xsl:if test="tns:ShipToCustomerIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToCustomerIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToCustomerIdOld"/>
                              </ns4:ShipToCustomerIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToSiteUseIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToSiteUseIdOld) > 0.0)">
                              <ns4:ShipToSiteUseIdNew>
                                 <xsl:if test="tns:ShipToSiteUseIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToSiteUseIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToSiteUseIdNew"/>
                              </ns4:ShipToSiteUseIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToSiteUseIdNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ShipToSiteUseIdOld) > 0.0)">
                              <ns4:ShipToSiteUseIdOld>
                                 <xsl:if test="tns:ShipToSiteUseIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToSiteUseIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToSiteUseIdOld"/>
                              </ns4:ShipToSiteUseIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxClassificationCodeNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxClassificationCodeOld) > 0.0)">
                              <ns4:TaxClassificationCodeNew>
                                 <xsl:if test="tns:TaxClassificationCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxClassificationCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxClassificationCodeNew"/>
                              </ns4:TaxClassificationCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxClassificationCodeNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxClassificationCodeOld) > 0.0)">
                              <ns4:TaxClassificationCodeOld>
                                 <xsl:if test="tns:TaxClassificationCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxClassificationCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxClassificationCodeOld"/>
                              </ns4:TaxClassificationCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxExemptFlagNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxExemptFlagOld) > 0.0)">
                              <ns4:TaxExemptFlagNew>
                                 <xsl:if test="tns:TaxExemptFlagNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxExemptFlagNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxExemptFlagNew"/>
                              </ns4:TaxExemptFlagNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxExemptFlagNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:TaxExemptFlagOld) > 0.0)">
                              <ns4:TaxExemptFlagOld>
                                 <xsl:if test="tns:TaxExemptFlagOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxExemptFlagOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxExemptFlagOld"/>
                              </ns4:TaxExemptFlagOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:UnitSellingPriceNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:UnitSellingPriceOld) > 0.0)">
                              <ns4:UnitSellingPriceNew>
                                 <xsl:if test="tns:UnitSellingPriceNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:UnitSellingPriceNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:UnitSellingPriceNew"/>
                              </ns4:UnitSellingPriceNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:UnitSellingPriceNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:UnitSellingPriceOld) > 0.0)">
                              <ns4:UnitSellingPriceOld>
                                 <xsl:if test="tns:UnitSellingPriceOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:UnitSellingPriceOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:UnitSellingPriceOld"/>
                              </ns4:UnitSellingPriceOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualCompletionDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualCompletionDateNew) > 0.0)">
                              <ns4:ActualCompletionDateNew>
                                 <xsl:if test="tns:ActualCompletionDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualCompletionDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualCompletionDateNew"/>
                              </ns4:ActualCompletionDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualCompletionDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualCompletionDateNew) > 0.0)">
                              <ns4:ActualCompletionDateOld>
                                 <xsl:if test="tns:ActualCompletionDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualCompletionDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualCompletionDateOld"/>
                              </ns4:ActualCompletionDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToSiteUseIdOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToSiteUseIdNew) > 0.0)">
                              <ns4:BillToSiteUseIdNew>
                                 <xsl:if test="tns:BillToSiteUseIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToSiteUseIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToSiteUseIdNew"/>
                              </ns4:BillToSiteUseIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToSiteUseIdOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:BillToSiteUseIdNew) > 0.0)">
                              <ns4:BillToSiteUseIdOld>
                                 <xsl:if test="tns:BillToSiteUseIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToSiteUseIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToSiteUseIdOld"/>
                              </ns4:BillToSiteUseIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CarrierIdOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CarrierIdNew) > 0.0)">
                              <ns4:CarrierIdNew>
                                 <xsl:if test="tns:CarrierIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CarrierIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CarrierIdNew"/>
                              </ns4:CarrierIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CarrierIdOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CarrierIdNew) > 0.0)">
                              <ns4:CarrierIdOld>
                                 <xsl:if test="tns:CarrierIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CarrierIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CarrierIdOld"/>
                              </ns4:CarrierIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CustomerPoNumberOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CustomerPoNumberNew) > 0.0)">
                              <ns4:CustomerPoNumberNew>
                                 <xsl:if test="tns:CustomerPoNumberNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CustomerPoNumberNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CustomerPoNumberNew"/>
                              </ns4:CustomerPoNumberNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CustomerPoNumberOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:CustomerPoNumberNew) > 0.0)">
                              <ns4:CustomerPoNumberOld>
                                 <xsl:if test="tns:CustomerPoNumberOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CustomerPoNumberOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CustomerPoNumberOld"/>
                              </ns4:CustomerPoNumberOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:DemandClassCodeOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:DemandClassCodeNew) > 0.0)">
                              <ns4:DemandClassCodeNew>
                                 <xsl:if test="tns:DemandClassCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:DemandClassCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:DemandClassCodeNew"/>
                              </ns4:DemandClassCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:DemandClassCodeOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:DemandClassCodeNew) > 0.0)">
                              <ns4:DemandClassCodeOld>
                                 <xsl:if test="tns:DemandClassCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:DemandClassCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:DemandClassCodeOld"/>
                              </ns4:DemandClassCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EarliestAcceptableShipDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EarliestAcceptableShipDateNew) > 0.0)">
                              <ns4:EarliestAcceptableShipDateNew>
                                 <xsl:if test="tns:EarliestAcceptableShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EarliestAcceptableShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EarliestAcceptableShipDateNew"/>
                              </ns4:EarliestAcceptableShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EarliestAcceptableShipDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EarliestAcceptableShipDateNew) > 0.0)">
                              <ns4:EarliestAcceptableShipDateOld>
                                 <xsl:if test="tns:EarliestAcceptableShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EarliestAcceptableShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EarliestAcceptableShipDateOld"/>
                              </ns4:EarliestAcceptableShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateFulfillmentCostOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateFulfillmentCostNew) > 0.0)">
                              <ns4:EstimateFulfillmentCostNew>
                                 <xsl:if test="tns:EstimateFulfillmentCostNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateFulfillmentCostNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateFulfillmentCostNew"/>
                              </ns4:EstimateFulfillmentCostNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateFulfillmentCostOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateFulfillmentCostNew) > 0.0)">
                              <ns4:EstimateFulfillmentCostOld>
                                 <xsl:if test="tns:EstimateFulfillmentCostOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateFulfillmentCostOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateFulfillmentCostOld"/>
                              </ns4:EstimateFulfillmentCostOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateMarginOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateMarginNew) > 0.0)">
                              <ns4:EstimateMarginNew>
                                 <xsl:if test="tns:EstimateMarginNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateMarginNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateMarginNew"/>
                              </ns4:EstimateMarginNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateMarginOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:EstimateMarginNew) > 0.0)">
                              <ns4:EstimateMarginOld>
                                 <xsl:if test="tns:EstimateMarginOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateMarginOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateMarginOld"/>
                              </ns4:EstimateMarginOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillmentDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillmentDateNew) > 0.0)">
                              <ns4:FulfillmentDateNew>
                                 <xsl:if test="tns:FulfillmentDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentDateNew"/>
                              </ns4:FulfillmentDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillmentDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:FulfillmentDateNew) > 0.0)">
                              <ns4:FulfillmentDateOld>
                                 <xsl:if test="tns:FulfillmentDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentDateOld"/>
                              </ns4:FulfillmentDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableArrivalDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableArrivalDateNew) > 0.0)">
                              <ns4:LatestAcceptableArrivalDateNew>
                                 <xsl:if test="tns:LatestAcceptableArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableArrivalDateNew"/>
                              </ns4:LatestAcceptableArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableArrivalDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableArrivalDateNew) > 0.0)">
                              <ns4:LatestAcceptableArrivalDateOld>
                                 <xsl:if test="tns:LatestAcceptableArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableArrivalDateOld"/>
                              </ns4:LatestAcceptableArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableShipDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableShipDateNew) > 0.0)">
                              <ns4:LatestAcceptableShipDateNew>
                                 <xsl:if test="tns:LatestAcceptableShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableShipDateNew"/>
                              </ns4:LatestAcceptableShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableShipDateOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:LatestAcceptableShipDateNew) > 0.0)">
                              <ns4:LatestAcceptableShipDateOld>
                                 <xsl:if test="tns:LatestAcceptableShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableShipDateOld"/>
                              </ns4:LatestAcceptableShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RemnantFlagOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RemnantFlagNew) > 0.0)">
                              <ns4:RemnantFlagNew>
                                 <xsl:if test="tns:RemnantFlagNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RemnantFlagNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RemnantFlagNew"/>
                              </ns4:RemnantFlagNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RemnantFlagOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:RemnantFlagNew) > 0.0)">
                              <ns4:RemnantFlagOld>
                                 <xsl:if test="tns:RemnantFlagOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RemnantFlagOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RemnantFlagOld"/>
                              </ns4:RemnantFlagOld>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ReturnReasonCodeOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ReturnReasonCodeNew) > 0.0)">
                              <ns4:ReturnReasonCodeNew>
                                 <xsl:if test="tns:ReturnReasonCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ReturnReasonCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ReturnReasonCodeNew"/>
                              </ns4:ReturnReasonCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ReturnReasonCodeOld) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ReturnReasonCodeNew) > 0.0)">
                              <ns4:ReturnReasonCodeOld>
                                 <xsl:value-of select="tns:ReturnReasonCodeOld"/>
                              </ns4:ReturnReasonCodeOld>
                           </xsl:if>
                           <xsl:for-each select="tns:OrderUpdateFulfillLineDetailTR">
                              <ns4:OrderFulfillmentLineDetails>
                                 <xsl:if test="tns:FulfillmentOrderLineDetailId">
                                    <ns4:FulfillmentOrderLineDetailId>
                                       <xsl:if test="tns:FulfillmentOrderLineDetailId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:FulfillmentOrderLineDetailId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:FulfillmentOrderLineDetailId"/>
                                    </ns4:FulfillmentOrderLineDetailId>
                                 </xsl:if>
                                 <xsl:if test="tns:TaskType">
                                    <ns4:TaskType>
                                       <xsl:if test="tns:TaskType/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:TaskType/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:TaskType"/>
                                    </ns4:TaskType>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:BillingTransactionNumber) > 0.0">
                                    <ns4:BillingTransactionNumber>
                                       <xsl:if test="tns:BillingTransactionNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillingTransactionNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillingTransactionNumber"/>
                                    </ns4:BillingTransactionNumber>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:BillingTransactionDate) > 0.0">
                                    <ns4:BillingTransactionDate>
                                       <xsl:if test="tns:BillingTransactionDate/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillingTransactionDate/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillingTransactionDate"/>
                                    </ns4:BillingTransactionDate>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:BillingTransactionAmount) > 0.0">
                                    <ns4:BillingTransactionAmount>
                                       <xsl:if test="tns:BillingTransactionAmount/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillingTransactionAmount/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillingTransactionAmount"/>
                                    </ns4:BillingTransactionAmount>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:WaybillNumber) > 0.0">
                                    <ns4:WaybillNumber>
                                       <xsl:if test="tns:WaybillNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:WaybillNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:WaybillNumber"/>
                                    </ns4:WaybillNumber>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:BillOfLaddingNumber) > 0.0">
                                    <ns4:BillOfLaddingNumber>
                                       <xsl:if test="tns:BillOfLaddingNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillOfLaddingNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillOfLaddingNumber"/>
                                    </ns4:BillOfLaddingNumber>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:TrackingNumber) > 0.0">
                                    <ns4:TrackingNumber>
                                       <xsl:if test="tns:TrackingNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:TrackingNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:TrackingNumber"/>
                                    </ns4:TrackingNumber>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:Quantity) > 0.0">
                                    <ns4:Quantity>
                                       <xsl:if test="tns:Quantity/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:Quantity/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:Quantity"/>
                                    </ns4:Quantity>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:Status) > 0.0">
                                    <ns4:Status>
                                       <xsl:if test="tns:Status/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:Status/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:Status"/>
                                    </ns4:Status>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:DeliveryName) > 0.0">
                                    <ns4:DeliveryName>
                                       <xsl:if test="tns:DeliveryName/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:DeliveryName/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:DeliveryName"/>
                                    </ns4:DeliveryName>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:RmaReceiptNumber) > 0.0">
                                    <ns4:RmaReceiptNumber>
                                       <xsl:if test="tns:RmaReceiptNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptNumber"/>
                                    </ns4:RmaReceiptNumber>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:RmaReceiptLineNumber) > 0.0">
                                    <ns4:RmaReceiptLineNumber>
                                       <xsl:if test="tns:RmaReceiptLineNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptLineNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptLineNumber"/>
                                    </ns4:RmaReceiptLineNumber>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:RmaReceiptDate) > 0.0">
                                    <ns4:RmaReceiptDate>
                                       <xsl:if test="tns:RmaReceiptDate/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptDate/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptDate"/>
                                    </ns4:RmaReceiptDate>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:RmaReceiptTransactionId) > 0.0">
                                    <ns4:RmaReceiptTransactionId>
                                       <xsl:if test="tns:RmaReceiptTransactionId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptTransactionId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptTransactionId"/>
                                    </ns4:RmaReceiptTransactionId>
                                 </xsl:if>
                                 <xsl:if test="string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:CustomerTrxLineId) > 0.0">
                                    <ns4:CustomerTrxLineId>
                                       <xsl:if test="tns:CustomerTrxLineId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:CustomerTrxLineId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:CustomerTrxLineId"/>
                                    </ns4:CustomerTrxLineId>
                                 </xsl:if>
                                 <xsl:for-each select="tns:OrderUpdateFlexTR">
                                    <ns4:OrderFulfillmentLineEFFs>
                                       <xsl:if test="tns:ContextCode">
                                          <ns4:ContextCode>
                                             <xsl:if test="tns:ContextCode/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:ContextCode/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:ContextCode"/>
                                          </ns4:ContextCode>
                                       </xsl:if>
                                       <xsl:if test="tns:SegmentCode">
                                          <ns4:SegmentCode>
                                             <xsl:if test="tns:SegmentCode/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentCode/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentCode"/>
                                          </ns4:SegmentCode>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharNewValue) > 0.0)">
                                          <ns4:SegmentCharOldValue>
                                             <xsl:if test="tns:SegmentCharOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentCharOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentCharOldValue"/>
                                          </ns4:SegmentCharOldValue>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharNewValue) > 0.0)">
                                          <ns4:SegmentCharNewValue>
                                             <xsl:if test="tns:SegmentCharNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentCharNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentCharNewValue"/>
                                          </ns4:SegmentCharNewValue>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumNewValue) > 0.0)">
                                          <ns4:SegmentNumOldValue>
                                             <xsl:if test="tns:SegmentNumOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentNumOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentNumOldValue"/>
                                          </ns4:SegmentNumOldValue>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumNewValue) > 0.0)">
                                          <ns4:SegmentNumNewValue>
                                             <xsl:if test="tns:SegmentNumNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentNumNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentNumNewValue"/>
                                          </ns4:SegmentNumNewValue>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateNewValue) > 0.0)">
                                          <ns4:SegmentDateOldValue>
                                             <xsl:if test="tns:SegmentDateOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentDateOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentDateOldValue"/>
                                          </ns4:SegmentDateOldValue>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateNewValue) > 0.0)">
                                          <ns4:SegmentDateNewValue>
                                             <xsl:if test="tns:SegmentDateNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentDateNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentDateNewValue"/>
                                          </ns4:SegmentDateNewValue>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeNewValue) > 0.0)">
                                          <ns4:SegmentTimeOldValue>
                                             <xsl:if test="tns:SegmentTimeOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentTimeOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentTimeOldValue"/>
                                          </ns4:SegmentTimeOldValue>
                                       </xsl:if>
                                       <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeNewValue) > 0.0)">
                                          <ns4:SegmentTimeNewValue>
                                             <xsl:if test="tns:SegmentTimeNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="tns:SegmentTimeNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="tns:SegmentTimeNewValue"/>
                                          </ns4:SegmentTimeNewValue>
                                       </xsl:if>
                                    </ns4:OrderFulfillmentLineEFFs>
                                 </xsl:for-each>
                              </ns4:OrderFulfillmentLineDetails>
                           </xsl:for-each>
                           <xsl:for-each select="tns:OrderUpdateFlexTR">
                              <ns4:OrderFulfillmentLineEFFs>
                                 <xsl:if test="tns:ContextCode">
                                    <ns4:ContextCode>
                                       <xsl:if test="tns:ContextCode/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:ContextCode/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:ContextCode"/>
                                    </ns4:ContextCode>
                                 </xsl:if>
                                 <xsl:if test="tns:SegmentCode">
                                    <ns4:SegmentCode>
                                       <xsl:if test="tns:SegmentCode/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentCode/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentCode"/>
                                    </ns4:SegmentCode>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharNewValue) > 0.0)">
                                    <ns4:SegmentCharOldValue>
                                       <xsl:if test="tns:SegmentCharOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentCharOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentCharOldValue"/>
                                    </ns4:SegmentCharOldValue>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentCharNewValue) > 0.0)">
                                    <ns4:SegmentCharNewValue>
                                       <xsl:if test="tns:SegmentCharNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentCharNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentCharNewValue"/>
                                    </ns4:SegmentCharNewValue>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumNewValue) > 0.0)">
                                    <ns4:SegmentNumOldValue>
                                       <xsl:if test="tns:SegmentNumOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentNumOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentNumOldValue"/>
                                    </ns4:SegmentNumOldValue>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentNumNewValue) > 0.0)">
                                    <ns4:SegmentNumNewValue>
                                       <xsl:if test="tns:SegmentNumNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentNumNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentNumNewValue"/>
                                    </ns4:SegmentNumNewValue>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateNewValue) > 0.0)">
                                    <ns4:SegmentDateOldValue>
                                       <xsl:if test="tns:SegmentDateOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentDateOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentDateOldValue"/>
                                    </ns4:SegmentDateOldValue>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentDateNewValue) > 0.0)">
                                    <ns4:SegmentDateNewValue>
                                       <xsl:if test="tns:SegmentDateNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentDateNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentDateNewValue"/>
                                    </ns4:SegmentDateNewValue>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeNewValue) > 0.0)">
                                    <ns4:SegmentTimeOldValue>
                                       <xsl:if test="tns:SegmentTimeOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentTimeOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentTimeOldValue"/>
                                    </ns4:SegmentTimeOldValue>
                                 </xsl:if>
                                 <xsl:if test="(string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeOldValue) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:OrderUpdateFulfillLineDetailTR/tns:OrderUpdateFlexTR/tns:SegmentTimeNewValue) > 0.0)">
                                    <ns4:SegmentTimeNewValue>
                                       <xsl:if test="tns:SegmentTimeNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:SegmentTimeNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:SegmentTimeNewValue"/>
                                    </ns4:SegmentTimeNewValue>
                                 </xsl:if>
                              </ns4:OrderFulfillmentLineEFFs>
                           </xsl:for-each>
                        </ns4:OrderFulfillmentLine>
                     </xsl:for-each>
                  </ns4:OrderLine>
               </xsl:for-each>
            </ns4:OrderHeader>
         </xsl:for-each>
      </ns4:results>
   </xsl:template>
</xsl:stylesheet>
