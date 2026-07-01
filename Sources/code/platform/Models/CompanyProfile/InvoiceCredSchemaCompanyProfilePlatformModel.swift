

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: InvoiceCredSchema
        Used By: CompanyProfile
    */

    class InvoiceCredSchema: Codable {
        
        
        public var username: String?
        
        public var enabled: Bool?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case enabled = "enabled"
            
            case password = "password"
            
        }

        public init(enabled: Bool? = nil, password: String? = nil, username: String? = nil) {
            
            self.username = username
            
            self.enabled = enabled
            
            self.password = password
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            
        }
        
    }
}




