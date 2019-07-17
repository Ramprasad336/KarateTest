@pep
Feature: Rest Service

    Background:
        * url AzpPepSoapEndPoint

    Scenario: Pep Primary Contact Number with permit

        Given path 'pep/PartyService/v4'
        And header Content-Type = 'text/xml'
		And header X-payloadType = 'permit'
		And header Authorization = 'bearer 1.2.3'
		And header X-obligation-id = '1.2.3'
        And request
    """
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ent="http://contracts.it.nednet.co.za/Infrastructure/2008/09/EnterpriseContext" xmlns:v4="http://contracts.it.nednet.co.za/services/ent/profilemanagement/Party/v4" xmlns:v41="http://contracts.it.nednet.co.za/data/ent/Party/v4">
   <soapenv:Header>
      <wsse:Security soapenv:mustUnderstand="1" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
         <wsse:UsernameToken wsu:Id="UsernameToken-1" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
            <wsse:Username>cc616275</wsse:Username>
         </wsse:UsernameToken>
      </wsse:Security>
      <ent:EnterpriseContext>
         <ent:ContextInfo>
            <ent:ProcessContextId>12356</ent:ProcessContextId>
            <ent:ExecutionContextId>45982</ent:ExecutionContextId>
         </ent:ContextInfo>
         <ent:RequestOriginator>
            <ent:MachineIPAddress>127.0.0.1</ent:MachineIPAddress>
            <ent:UserPrincipleName>NEDCOR\CC609537</ent:UserPrincipleName>
            <ent:MachineDNSName>testing</ent:MachineDNSName>
            <ent:ChannelId>328</ent:ChannelId>
         </ent:RequestOriginator>
         <ent:InstrumentationInfo>
            <ent:ParentInstrumentationId>1235648</ent:ParentInstrumentationId>
            <ent:ChildInstrumentationId>135864</ent:ChildInstrumentationId>
         </ent:InstrumentationInfo>
      </ent:EnterpriseContext>
   </soapenv:Header>
   <soapenv:Body>
      <v4:MaintainPersonDetailReq xmlns:nsParty1="http://contracts.it.nednet.co.za/messages/clientsandpartners/profilemanagement/Party/v1">
         <v41:RequestControl>
            <v41:requestID>567890</v41:requestID>
            <v41:DWLControl>
               <v41:requesterName>TEST</v41:requesterName>
               <v41:requesterLanguage>100</v41:requesterLanguage>
               <v41:requestOrigin>338</v41:requestOrigin>
               <v41:userRole>MDMSUPER</v41:userRole>
               <v41:ControlExtensionProperty name="Interface">Online</v41:ControlExtensionProperty>
               <v41:ControlExtensionProperty name="SourceSystem">MDM</v41:ControlExtensionProperty>
               <v41:ControlExtensionProperty name="ChannelId">365</v41:ControlExtensionProperty>
               <v41:pageStartIndex>0</v41:pageStartIndex>
               <v41:pageEndIndex>100</v41:pageEndIndex>
               <v41:returnAvailableResultCount>20</v41:returnAvailableResultCount>
            </v41:DWLControl>
         </v41:RequestControl>
         <v41:PersonDetailBObj>
            <v41:TCRMPersonBObj>
               <v41:ObjectReferenceId>1</v41:ObjectReferenceId>
              <v41:ClientImportanceType>1001</v41:ClientImportanceType>-->
               <v41:SourceIdentifierType>1001</v41:SourceIdentifierType>
               <!--<v41:BirthDate>1980-01-01T00:00:00.001</v41:BirthDate>

               </v41:TCRMExtension>-->
               <v41:TCRMPartyAddressBObj>
                  <v41:ObjectReferenceId>0</v41:ObjectReferenceId>
                  <v41:AddressUsageType>1029</v41:AddressUsageType>
                  <v41:CareOf>CAREOSDSADF_1029</v41:CareOf>
                  <v41:StartDate>2016-05-18T00:00:00.001</v41:StartDate>
                  <v41:EndDate>2032-05-09T00:00:00.001</v41:EndDate>
                  <v41:LastVerifiedDate>2016-12-02T14:50:42.0234</v41:LastVerifiedDate>
                  <v41:SourceIdentifierType>1001</v41:SourceIdentifierType>
                  <v41:TCRMExtension>
                     <v41:ExtendedObject>XPARTYADDRESSBObjExt</v41:ExtendedObject>
                     <v41:XPARTYADDRESSBObjExt>
                        <v41:XPermanentInd>Y</v41:XPermanentInd>
                     </v41:XPARTYADDRESSBObjExt>
                  </v41:TCRMExtension>
                  <v41:TCRMAddressBObj>
                     <v41:AddressLineOne>BOXasaA</v41:AddressLineOne>
                     <v41:AddressLineTwo>BAGROAD</v41:AddressLineTwo>
                     <v41:AddressLineThree>Kochi</v41:AddressLineThree>
                     <v41:City>PRETORIA</v41:City>
                     <v41:ZipPostalCode>00002</v41:ZipPostalCode>
                     <v41:CountryType>1250</v41:CountryType>
                     <v41:TCRMExtension>
                        <v41:XADDRESSBObjExt>
                           <v41:XSuburb>SALVOKOP</v41:XSuburb>
                        </v41:XADDRESSBObjExt>
                     </v41:TCRMExtension>
                  </v41:TCRMAddressBObj>
               </v41:TCRMPartyAddressBObj>





               <v41:TCRMPartyContactMethodBObj>
                  <v41:ObjectReferenceId>0</v41:ObjectReferenceId>
                 <v41:ContactMethodUsageType>1010</v41:ContactMethodUsageType>
                  <v41:StartDate>2016-05-09T00:00:00.001</v41:StartDate>
                  <v41:EndDate>2019-06-26T00:00:00.001</v41:EndDate>
                  <v41:LastVerifiedDate>2016-12-02T14:50:42.0234</v41:LastVerifiedDate>
                  <v41:SourceIdentifierType>1001</v41:SourceIdentifierType>


                   <v41:TCRMExtension>
                     <v41:XPARTYCONTACTMETHODBObjExt>
                        <v41:XLastMaintainDate>2015-09-08T14:50:42.2938</v41:XLastMaintainDate>
                        <v41:XPermanentInd>Y</v41:XPermanentInd>
                        <v41:XOccNumber>1</v41:XOccNumber>
                     </v41:XPARTYCONTACTMETHODBObjExt>
                  </v41:TCRMExtension>


                  <v41:TCRMContactMethodBObj>
                     <v41:ReferenceNumber>01155665555557</v41:ReferenceNumber>
                     <v41:ContactMethodType>1003</v41:ContactMethodType>
                  </v41:TCRMContactMethodBObj>
               </v41:TCRMPartyContactMethodBObj>


               <v41:TCRMPartyIdentificationBObj>
                  <v41:IdentificationType>1041</v41:IdentificationType>
                  <v41:IdentificationNumber>600000351703</v41:IdentificationNumber>
               </v41:TCRMPartyIdentificationBObj>

            </v41:TCRMPersonBObj>

         </v41:PersonDetailBObj>
      </v4:MaintainPersonDetailReq>
   </soapenv:Body>
</soapenv:Envelope>

    """
        When method POST
        Then status 200
        And print response
        And match response /Response/Result/Decision == 'Permit'
		
Scenario: Pep Primary Contact Number with deny

        Given path 'pep/PartyService/v4'
        And header Content-Type = 'text/xml'
		And header X-payloadType = 'deny'
		And header Authorization = 'bearer 1.2.3'
		And header X-obligation-id = '1.2.3'
        And request
    """
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ent="http://contracts.it.nednet.co.za/Infrastructure/2008/09/EnterpriseContext" xmlns:v4="http://contracts.it.nednet.co.za/services/ent/profilemanagement/Party/v4" xmlns:v41="http://contracts.it.nednet.co.za/data/ent/Party/v4">
   <soapenv:Header>
      <wsse:Security soapenv:mustUnderstand="1" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
         <wsse:UsernameToken wsu:Id="UsernameToken-1" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
            <wsse:Username>cc616275</wsse:Username>
         </wsse:UsernameToken>
      </wsse:Security>
      <ent:EnterpriseContext>
         <ent:ContextInfo>
            <ent:ProcessContextId>12356</ent:ProcessContextId>
            <ent:ExecutionContextId>45982</ent:ExecutionContextId>
         </ent:ContextInfo>
         <ent:RequestOriginator>
            <ent:MachineIPAddress>127.0.0.1</ent:MachineIPAddress>
            <ent:UserPrincipleName>NEDCOR\CC609537</ent:UserPrincipleName>
            <ent:MachineDNSName>testing</ent:MachineDNSName>
            <ent:ChannelId>328</ent:ChannelId>
         </ent:RequestOriginator>
         <ent:InstrumentationInfo>
            <ent:ParentInstrumentationId>1235648</ent:ParentInstrumentationId>
            <ent:ChildInstrumentationId>135864</ent:ChildInstrumentationId>
         </ent:InstrumentationInfo>
      </ent:EnterpriseContext>
   </soapenv:Header>
   <soapenv:Body>
      <v4:MaintainPersonDetailReq xmlns:nsParty1="http://contracts.it.nednet.co.za/messages/clientsandpartners/profilemanagement/Party/v1">
         <v41:RequestControl>
            <v41:requestID>567890</v41:requestID>
            <v41:DWLControl>
               <v41:requesterName>TEST</v41:requesterName>
               <v41:requesterLanguage>100</v41:requesterLanguage>
               <v41:requestOrigin>338</v41:requestOrigin>
               <v41:userRole>MDMSUPER</v41:userRole>
               <v41:ControlExtensionProperty name="Interface">Online</v41:ControlExtensionProperty>
               <v41:ControlExtensionProperty name="SourceSystem">MDM</v41:ControlExtensionProperty>
               <v41:ControlExtensionProperty name="ChannelId">365</v41:ControlExtensionProperty>
               <v41:pageStartIndex>0</v41:pageStartIndex>
               <v41:pageEndIndex>100</v41:pageEndIndex>
               <v41:returnAvailableResultCount>20</v41:returnAvailableResultCount>
            </v41:DWLControl>
         </v41:RequestControl>
         <v41:PersonDetailBObj>
            <v41:TCRMPersonBObj>
               <v41:ObjectReferenceId>1</v41:ObjectReferenceId>
              <v41:ClientImportanceType>1001</v41:ClientImportanceType>-->
               <v41:SourceIdentifierType>1001</v41:SourceIdentifierType>
               <!--<v41:BirthDate>1980-01-01T00:00:00.001</v41:BirthDate>

               </v41:TCRMExtension>-->
               <v41:TCRMPartyAddressBObj>
                  <v41:ObjectReferenceId>0</v41:ObjectReferenceId>
                  <v41:AddressUsageType>1029</v41:AddressUsageType>
                  <v41:CareOf>CAREOSDSADF_1029</v41:CareOf>
                  <v41:StartDate>2016-05-18T00:00:00.001</v41:StartDate>
                  <v41:EndDate>2032-05-09T00:00:00.001</v41:EndDate>
                  <v41:LastVerifiedDate>2016-12-02T14:50:42.0234</v41:LastVerifiedDate>
                  <v41:SourceIdentifierType>1001</v41:SourceIdentifierType>
                  <v41:TCRMExtension>
                     <v41:ExtendedObject>XPARTYADDRESSBObjExt</v41:ExtendedObject>
                     <v41:XPARTYADDRESSBObjExt>
                        <v41:XPermanentInd>Y</v41:XPermanentInd>
                     </v41:XPARTYADDRESSBObjExt>
                  </v41:TCRMExtension>
                  <v41:TCRMAddressBObj>
                     <v41:AddressLineOne>BOXasaA</v41:AddressLineOne>
                     <v41:AddressLineTwo>BAGROAD</v41:AddressLineTwo>
                     <v41:AddressLineThree>Kochi</v41:AddressLineThree>
                     <v41:City>PRETORIA</v41:City>
                     <v41:ZipPostalCode>00002</v41:ZipPostalCode>
                     <v41:CountryType>1250</v41:CountryType>
                     <v41:TCRMExtension>
                        <v41:XADDRESSBObjExt>
                           <v41:XSuburb>SALVOKOP</v41:XSuburb>
                        </v41:XADDRESSBObjExt>
                     </v41:TCRMExtension>
                  </v41:TCRMAddressBObj>
               </v41:TCRMPartyAddressBObj>





               <v41:TCRMPartyContactMethodBObj>
                  <v41:ObjectReferenceId>0</v41:ObjectReferenceId>
                 <v41:ContactMethodUsageType>1010</v41:ContactMethodUsageType>
                  <v41:StartDate>2016-05-09T00:00:00.001</v41:StartDate>
                  <v41:EndDate>2019-06-26T00:00:00.001</v41:EndDate>
                  <v41:LastVerifiedDate>2016-12-02T14:50:42.0234</v41:LastVerifiedDate>
                  <v41:SourceIdentifierType>1001</v41:SourceIdentifierType>


                   <v41:TCRMExtension>
                     <v41:XPARTYCONTACTMETHODBObjExt>
                        <v41:XLastMaintainDate>2015-09-08T14:50:42.2938</v41:XLastMaintainDate>
                        <v41:XPermanentInd>Y</v41:XPermanentInd>
                        <v41:XOccNumber>1</v41:XOccNumber>
                     </v41:XPARTYCONTACTMETHODBObjExt>
                  </v41:TCRMExtension>


                  <v41:TCRMContactMethodBObj>
                     <v41:ReferenceNumber>01155665555557</v41:ReferenceNumber>
                     <v41:ContactMethodType>1003</v41:ContactMethodType>
                  </v41:TCRMContactMethodBObj>
               </v41:TCRMPartyContactMethodBObj>


               <v41:TCRMPartyIdentificationBObj>
                  <v41:IdentificationType>1041</v41:IdentificationType>
                  <v41:IdentificationNumber>600000351703</v41:IdentificationNumber>
               </v41:TCRMPartyIdentificationBObj>

            </v41:TCRMPersonBObj>

         </v41:PersonDetailBObj>
      </v4:MaintainPersonDetailReq>
   </soapenv:Body>
</soapenv:Envelope>

    """
        When method POST
        Then status 200
        And print response
        And match response /Response/Result/Decision == 'Deny'