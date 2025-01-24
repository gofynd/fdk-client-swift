

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetEngineFilters
        Used By: Finance
    */

    class GetEngineFilters: Codable {
        
        
        public var configField: String?
        
        public var status: String?
        
        public var isActive: Bool?
        
        public var sellerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case configField = "config_field"
            
            case status = "status"
            
            case isActive = "is_active"
            
            case sellerId = "seller_id"
            
        }

        public init(configField: String? = nil, isActive: Bool? = nil, sellerId: String? = nil, status: String? = nil) {
            
            self.configField = configField
            
            self.status = status
            
            self.isActive = isActive
            
            self.sellerId = sellerId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    configField = try container.decode(String.self, forKey: .configField)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(String.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(configField, forKey: .configField)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
        }
        
    }
}




