

import Foundation
public extension PlatformClient {
    /*
        Model: MobileNo
        Used By: Logistic
    */

    class MobileNo: Codable {
        
        
        public var number: String?
        
        public var countryCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case number = "number"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: Int? = nil, number: String? = nil) {
            
            self.number = number
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(Int.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}
