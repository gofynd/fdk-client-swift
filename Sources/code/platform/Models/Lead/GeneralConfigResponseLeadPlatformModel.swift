

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: GeneralConfigResponse
        Used By: Lead
    */

    class GeneralConfigResponse: Codable {
        
        
        public var supportCommunication: [SupportCommunicationSchema]?
        
        public var type: String?
        
        public var integration: GeneralConfigIntegrationSchema?
        
        public var availableIntegration: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case supportCommunication = "support_communication"
            
            case type = "type"
            
            case integration = "integration"
            
            case availableIntegration = "available_integration"
            
        }

        public init(availableIntegration: [String]? = nil, integration: GeneralConfigIntegrationSchema? = nil, supportCommunication: [SupportCommunicationSchema]? = nil, type: String? = nil) {
            
            self.supportCommunication = supportCommunication
            
            self.type = type
            
            self.integration = integration
            
            self.availableIntegration = availableIntegration
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    supportCommunication = try container.decode([SupportCommunicationSchema].self, forKey: .supportCommunication)
                
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
                    availableIntegration = try container.decode([String].self, forKey: .availableIntegration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(supportCommunication, forKey: .supportCommunication)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            
            
            
            try? container.encodeIfPresent(availableIntegration, forKey: .availableIntegration)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: GeneralConfigResponse
        Used By: Lead
    */

    class GeneralConfigResponse: Codable {
        
        
        public var supportCommunication: [SupportCommunicationSchema]?
        
        public var type: String?
        
        public var integration: GeneralConfigIntegrationSchema?
        
        public var availableIntegration: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case supportCommunication = "support_communication"
            
            case type = "type"
            
            case integration = "integration"
            
            case availableIntegration = "available_integration"
            
        }

        public init(availableIntegration: [String]? = nil, integration: GeneralConfigIntegrationSchema? = nil, supportCommunication: [SupportCommunicationSchema]? = nil, type: String? = nil) {
            
            self.supportCommunication = supportCommunication
            
            self.type = type
            
            self.integration = integration
            
            self.availableIntegration = availableIntegration
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    supportCommunication = try container.decode([SupportCommunicationSchema].self, forKey: .supportCommunication)
                
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
                    availableIntegration = try container.decode([String].self, forKey: .availableIntegration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(supportCommunication, forKey: .supportCommunication)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            
            
            
            try? container.encodeIfPresent(availableIntegration, forKey: .availableIntegration)
            
            
        }
        
    }
}


