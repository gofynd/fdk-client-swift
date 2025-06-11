

import Foundation
public extension ApplicationClient.User {
    /*
        Model: EditMobileRequestSchema
        Used By: User
    */
    class EditMobileRequestSchema: Codable {
        
        public var countryCode: String
        
        public var phone: String
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
        }

        public init(countryCode: String, phone: String) {
            
            self.countryCode = countryCode
            
            self.phone = phone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            countryCode = try container.decode(String.self, forKey: .countryCode)
            
            
            
            
            phone = try container.decode(String.self, forKey: .phone)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
        }
        
    }
}
