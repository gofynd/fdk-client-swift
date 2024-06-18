

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: InformationSupport
        Used By: Configuration
    */
    class InformationSupport: Codable {
        
        public var phone: [InformationSupportPhone]?
        
        public var email: [InformationSupportEmail]?
        
        public var timing: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case email = "email"
            
            case timing = "timing"
            
        }

        public init(email: [InformationSupportEmail]? = nil, phone: [InformationSupportPhone]? = nil, timing: String? = nil) {
            
            self.phone = phone
            
            self.email = email
            
            self.timing = timing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                phone = try container.decode([InformationSupportPhone].self, forKey: .phone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                email = try container.decode([InformationSupportEmail].self, forKey: .email)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                timing = try container.decode(String.self, forKey: .timing)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
        }
        
    }
}
