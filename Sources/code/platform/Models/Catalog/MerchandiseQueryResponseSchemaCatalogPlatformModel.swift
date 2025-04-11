

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandiseQueryResponseSchema
        Used By: Catalog
    */

    class MerchandiseQueryResponseSchema: Codable {
        
        
        public var message: String?
        
        public var merchandisingRuleId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case merchandisingRuleId = "merchandising_rule_id"
            
        }

        public init(merchandisingRuleId: String? = nil, message: String? = nil) {
            
            self.message = message
            
            self.merchandisingRuleId = merchandisingRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchandisingRuleId = try container.decode(String.self, forKey: .merchandisingRuleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(merchandisingRuleId, forKey: .merchandisingRuleId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandiseQueryResponseSchema
        Used By: Catalog
    */

    class MerchandiseQueryResponseSchema: Codable {
        
        
        public var message: String?
        
        public var merchandisingRuleId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case merchandisingRuleId = "merchandising_rule_id"
            
        }

        public init(merchandisingRuleId: String? = nil, message: String? = nil) {
            
            self.message = message
            
            self.merchandisingRuleId = merchandisingRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchandisingRuleId = try container.decode(String.self, forKey: .merchandisingRuleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(merchandisingRuleId, forKey: .merchandisingRuleId)
            
            
        }
        
    }
}


