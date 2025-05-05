

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: PrivacyPolicyConsentSchema
        Used By: User
    */

    class PrivacyPolicyConsentSchema: Codable {
        
        
        public var value: Bool?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case updatedAt = "updated_at"
            
        }

        public init(updatedAt: String? = nil, value: Bool? = nil) {
            
            self.value = value
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Bool.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


