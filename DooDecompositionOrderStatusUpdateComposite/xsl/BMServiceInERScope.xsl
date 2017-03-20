<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://xmlns.oracle.com/apps/scm/doo/common/events/service/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:errors="http://xmlns.oracle.com/adf/svc/errors/" xmlns:types="http://xmlns.oracle.com/apps/scm/doo/common/events/service/types/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="commonj.sdo/xml" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://xmlns.oracle.com/adf/svc/types/" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="commonj.sdo/java" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bmxsd="http://xmlns.oracle.com/cpqcloud/commerce/oraclecpqo" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="commonj.sdo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tm="http://xmlns.oracle.com/topologyManager/client/xpath/extension" xmlns:orafault="http://xmlns.oracle.com/oracleas/schema/oracle-fault-11_0" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk soap tns wsdl errors types ns1 ns2 ns3 ns0 xsd orafault soapenv bmxsd bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn tm ldap">
   <xsl:template match="/">
      <bmxsd:updateTransaction>
         <bmxsd:transaction>
            <bmxsd:id>
               <xsl:if test="/types:getEventNotificationLogResponse/types:result/tns:FulfillLineStatusTR/tns:SourceOrderId/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/types:getEventNotificationLogResponse/types:result/tns:FulfillLineStatusTR/tns:SourceOrderId/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/types:getEventNotificationLogResponse/types:result/tns:FulfillLineStatusTR/tns:SourceOrderId"/>
            </bmxsd:id>
            <bmxsd:process_var_name>
               <xsl:text disable-output-escaping="no">oraclecpqo</xsl:text>
            </bmxsd:process_var_name>
            <bmxsd:data_xml>
               <bmxsd:transaction>
                  <xsl:attribute name="bmxsd:document_number">
                     <xsl:text disable-output-escaping="no">1</xsl:text>
                  </xsl:attribute>
                  <xsl:attribute name="bmxsd:bs_id">
                     <xsl:value-of select="/types:getEventNotificationLogResponse/types:result/tns:FulfillLineStatusTR/tns:SourceOrderId"/>
                  </xsl:attribute>
                  <xsl:attribute name="bmxsd:data_type">
                     <xsl:text disable-output-escaping="no">0</xsl:text>
                  </xsl:attribute>
                  <bmxsd:_document_number>
                     <xsl:text disable-output-escaping="no">1</xsl:text>
                  </bmxsd:_document_number>
                  <bmxsd:sub_documents>
                     <xsl:for-each select="/types:getEventNotificationLogResponse/types:result/tns:FulfillLineStatusTR">
                        <bmxsd:transactionLine>
                           <xsl:attribute name="bmxsd:document_number">
                              <xsl:value-of select="tns:SourceLineId"/>
                           </xsl:attribute>
                           <xsl:attribute name="bmxsd:bs_id">
                              <xsl:value-of select="tns:SourceOrderId"/>
                           </xsl:attribute>
                           <xsl:attribute name="bmxsd:data_type">
                              <xsl:text disable-output-escaping="no">3</xsl:text>
                           </xsl:attribute>
                           <bmxsd:_document_number>
                              <xsl:value-of select="tns:SourceLineId"/>
                           </bmxsd:_document_number>
                           <xsl:if test="tns:StatusCode">
                              <bmxsd:status_l>
                                 <xsl:if test="tns:StatusCode/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:StatusCode/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:StatusCode"/>
                              </bmxsd:status_l>
                           </xsl:if>
                           <xsl:if test="tns:BillingTransactionDate and tns:BillingTransactionDate[. != &quot;&quot;]">
                              <bmxsd:fINlastInvoiceDate_l>
                                 <xsl:value-of select="xp20:format-dateTime(tns:BillingTransactionDate,&quot;[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]&quot;)"/>
                              </bmxsd:fINlastInvoiceDate_l>
                           </xsl:if>
                           <xsl:if test="tns:BillingTransactionNumber and tns:BillingTransactionNumber[. != &quot;&quot;]">
                              <bmxsd:fINInvoiceNumber_l>
                                 <xsl:value-of select="tns:BillingTransactionNumber"/>
                              </bmxsd:fINInvoiceNumber_l>
                           </xsl:if>
                        </bmxsd:transactionLine>
                     </xsl:for-each>
                  </bmxsd:sub_documents>
               </bmxsd:transaction>
            </bmxsd:data_xml>
            <bmxsd:action_data>
               <bmxsd:action_var_name>
                  <xsl:text disable-output-escaping="no">save_l</xsl:text>
               </bmxsd:action_var_name>
            </bmxsd:action_data>
         </bmxsd:transaction>
      </bmxsd:updateTransaction>
   </xsl:template>
</xsl:stylesheet>
