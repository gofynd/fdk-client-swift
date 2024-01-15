

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: FieldValidationRegex
        Used By: Logistic
    */
    class FieldValidationRegex: Codable {
        
        public var value: String?
        
        public var length: LengthValidation?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case length = "length"
            
        }

        public init(length: LengthValidation? = nil, value: String? = nil) {
            
            self.value = value
            
            self.length = length
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                value = try container.decode(String.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                length = try container.decode(LengthValidation.self, forKey: .length)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
        }
        
    }
}
