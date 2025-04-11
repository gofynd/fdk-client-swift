

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: GeneralConfigResponseSchema
        Used By: Lead
    */

    class GeneralConfigResponseSchema: Codable {
        
        
        public var id: String?
        
        public var supportCommunication: [SupportCommunicationSchema]?
        
        public var showCommunicationInfo: Bool?
        
        public var showSupportDris: Bool?
        
        public var type: String?
        
        public var integration: GeneralConfigIntegrationSchema?
        
        public var allowTicketCreation: Bool?
        
        public var showListing: Bool?
        
        public var availableIntegration: [String]?
        
        public var enableDris: Bool?
        
        public var supportEmail: SupportSchema?
        
        public var supportPhone: SupportSchema?
        
        public var supportFaq: SupportSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case supportCommunication = "support_communication"
            
            case showCommunicationInfo = "show_communication_info"
            
            case showSupportDris = "show_support_dris"
            
            case type = "type"
            
            case integration = "integration"
            
            case allowTicketCreation = "allow_ticket_creation"
            
            case showListing = "show_listing"
            
            case availableIntegration = "available_integration"
            
            case enableDris = "enable_dris"
            
            case supportEmail = "support_email"
            
            case supportPhone = "support_phone"
            
            case supportFaq = "support_faq"
            
        }

        public init(allowTicketCreation: Bool? = nil, availableIntegration: [String]? = nil, enableDris: Bool? = nil, integration: GeneralConfigIntegrationSchema? = nil, showCommunicationInfo: Bool? = nil, showListing: Bool? = nil, showSupportDris: Bool? = nil, supportCommunication: [SupportCommunicationSchema]? = nil, supportEmail: SupportSchema? = nil, supportFaq: SupportSchema? = nil, supportPhone: SupportSchema? = nil, type: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.supportCommunication = supportCommunication
            
            self.showCommunicationInfo = showCommunicationInfo
            
            self.showSupportDris = showSupportDris
            
            self.type = type
            
            self.integration = integration
            
            self.allowTicketCreation = allowTicketCreation
            
            self.showListing = showListing
            
            self.availableIntegration = availableIntegration
            
            self.enableDris = enableDris
            
            self.supportEmail = supportEmail
            
            self.supportPhone = supportPhone
            
            self.supportFaq = supportFaq
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportCommunication = try container.decode([SupportCommunicationSchema].self, forKey: .supportCommunication)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showCommunicationInfo = try container.decode(Bool.self, forKey: .showCommunicationInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showSupportDris = try container.decode(Bool.self, forKey: .showSupportDris)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integration = try container.decode(GeneralConfigIntegrationSchema.self, forKey: .integration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowTicketCreation = try container.decode(Bool.self, forKey: .allowTicketCreation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showListing = try container.decode(Bool.self, forKey: .showListing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableIntegration = try container.decode([String].self, forKey: .availableIntegration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableDris = try container.decode(Bool.self, forKey: .enableDris)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportEmail = try container.decode(SupportSchema.self, forKey: .supportEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportPhone = try container.decode(SupportSchema.self, forKey: .supportPhone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportFaq = try container.decode(SupportSchema.self, forKey: .supportFaq)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(supportCommunication, forKey: .supportCommunication)
            
            
            
            
            try? container.encodeIfPresent(showCommunicationInfo, forKey: .showCommunicationInfo)
            
            
            
            
            try? container.encodeIfPresent(showSupportDris, forKey: .showSupportDris)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            
            
            
            try? container.encodeIfPresent(allowTicketCreation, forKey: .allowTicketCreation)
            
            
            
            
            try? container.encodeIfPresent(showListing, forKey: .showListing)
            
            
            
            
            try? container.encodeIfPresent(availableIntegration, forKey: .availableIntegration)
            
            
            
            
            try? container.encodeIfPresent(enableDris, forKey: .enableDris)
            
            
            
            
            try? container.encodeIfPresent(supportEmail, forKey: .supportEmail)
            
            
            
            
            try? container.encodeIfPresent(supportPhone, forKey: .supportPhone)
            
            
            
            
            try? container.encodeIfPresent(supportFaq, forKey: .supportFaq)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: GeneralConfigResponseSchema
        Used By: Lead
    */

    class GeneralConfigResponseSchema: Codable {
        
        
        public var id: String?
        
        public var supportCommunication: [SupportCommunicationSchema]?
        
        public var showCommunicationInfo: Bool?
        
        public var showSupportDris: Bool?
        
        public var type: String?
        
        public var integration: GeneralConfigIntegrationSchema?
        
        public var allowTicketCreation: Bool?
        
        public var showListing: Bool?
        
        public var availableIntegration: [String]?
        
        public var enableDris: Bool?
        
        public var supportEmail: SupportSchema?
        
        public var supportPhone: SupportSchema?
        
        public var supportFaq: SupportSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case supportCommunication = "support_communication"
            
            case showCommunicationInfo = "show_communication_info"
            
            case showSupportDris = "show_support_dris"
            
            case type = "type"
            
            case integration = "integration"
            
            case allowTicketCreation = "allow_ticket_creation"
            
            case showListing = "show_listing"
            
            case availableIntegration = "available_integration"
            
            case enableDris = "enable_dris"
            
            case supportEmail = "support_email"
            
            case supportPhone = "support_phone"
            
            case supportFaq = "support_faq"
            
        }

        public init(allowTicketCreation: Bool? = nil, availableIntegration: [String]? = nil, enableDris: Bool? = nil, integration: GeneralConfigIntegrationSchema? = nil, showCommunicationInfo: Bool? = nil, showListing: Bool? = nil, showSupportDris: Bool? = nil, supportCommunication: [SupportCommunicationSchema]? = nil, supportEmail: SupportSchema? = nil, supportFaq: SupportSchema? = nil, supportPhone: SupportSchema? = nil, type: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.supportCommunication = supportCommunication
            
            self.showCommunicationInfo = showCommunicationInfo
            
            self.showSupportDris = showSupportDris
            
            self.type = type
            
            self.integration = integration
            
            self.allowTicketCreation = allowTicketCreation
            
            self.showListing = showListing
            
            self.availableIntegration = availableIntegration
            
            self.enableDris = enableDris
            
            self.supportEmail = supportEmail
            
            self.supportPhone = supportPhone
            
            self.supportFaq = supportFaq
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportCommunication = try container.decode([SupportCommunicationSchema].self, forKey: .supportCommunication)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showCommunicationInfo = try container.decode(Bool.self, forKey: .showCommunicationInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showSupportDris = try container.decode(Bool.self, forKey: .showSupportDris)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integration = try container.decode(GeneralConfigIntegrationSchema.self, forKey: .integration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowTicketCreation = try container.decode(Bool.self, forKey: .allowTicketCreation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showListing = try container.decode(Bool.self, forKey: .showListing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableIntegration = try container.decode([String].self, forKey: .availableIntegration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableDris = try container.decode(Bool.self, forKey: .enableDris)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportEmail = try container.decode(SupportSchema.self, forKey: .supportEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportPhone = try container.decode(SupportSchema.self, forKey: .supportPhone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportFaq = try container.decode(SupportSchema.self, forKey: .supportFaq)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(supportCommunication, forKey: .supportCommunication)
            
            
            
            
            try? container.encodeIfPresent(showCommunicationInfo, forKey: .showCommunicationInfo)
            
            
            
            
            try? container.encodeIfPresent(showSupportDris, forKey: .showSupportDris)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            
            
            
            try? container.encodeIfPresent(allowTicketCreation, forKey: .allowTicketCreation)
            
            
            
            
            try? container.encodeIfPresent(showListing, forKey: .showListing)
            
            
            
            
            try? container.encodeIfPresent(availableIntegration, forKey: .availableIntegration)
            
            
            
            
            try? container.encodeIfPresent(enableDris, forKey: .enableDris)
            
            
            
            
            try? container.encodeIfPresent(supportEmail, forKey: .supportEmail)
            
            
            
            
            try? container.encodeIfPresent(supportPhone, forKey: .supportPhone)
            
            
            
            
            try? container.encodeIfPresent(supportFaq, forKey: .supportFaq)
            
            
        }
        
    }
}


