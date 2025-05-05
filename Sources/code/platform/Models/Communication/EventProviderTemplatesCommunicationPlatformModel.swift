

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventProviderTemplates
        Used By: Communication
    */

    class EventProviderTemplates: Codable {
        
        
        public var providerType: String?
        
        public var template: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case providerType = "provider_type"
            
            case template = "template"
            
        }

        public init(providerType: String? = nil, template: String? = nil) {
            
            self.providerType = providerType
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    providerType = try container.decode(String.self, forKey: .providerType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    template = try container.decode(String.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(providerType, forKey: .providerType)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventProviderTemplates
        Used By: Communication
    */

    class EventProviderTemplates: Codable {
        
        
        public var providerType: String?
        
        public var template: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case providerType = "provider_type"
            
            case template = "template"
            
        }

        public init(providerType: String? = nil, template: String? = nil) {
            
            self.providerType = providerType
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    providerType = try container.decode(String.self, forKey: .providerType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    template = try container.decode(String.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(providerType, forKey: .providerType)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}


