

import Foundation
public extension ApplicationClient.User {
    /*
        Model: SendVerificationLinkMobileRequestSchema
        Used By: User
    */
    class SendVerificationLinkMobileRequestSchema: Codable {
        
        public var verified: Bool?
        
        public var active: Bool?
        
        public var countryCode: String
        
        public var phone: String
        
        public var primary: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case active = "active"
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
            case primary = "primary"
            
        }

        public init(active: Bool? = nil, countryCode: String, phone: String, primary: Bool? = nil, verified: Bool? = nil) {
            
            self.verified = verified
            
            self.active = active
            
            self.countryCode = countryCode
            
            self.phone = phone
            
            self.primary = primary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                verified = try container.decode(Bool.self, forKey: .verified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                active = try container.decode(Bool.self, forKey: .active)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            countryCode = try container.decode(String.self, forKey: .countryCode)
            
            
            
            
            phone = try container.decode(String.self, forKey: .phone)
            
            
            
            
            do {
                primary = try container.decode(Bool.self, forKey: .primary)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
            
        }
        
    }
}
