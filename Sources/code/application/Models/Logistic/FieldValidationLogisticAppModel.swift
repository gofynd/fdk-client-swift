

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: FieldValidation
        Used By: Logistic
    */
    class FieldValidation: Codable {
        
        public var type: String?
        
        public var regex: FieldValidationRegex?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case regex = "regex"
            
        }

        public init(regex: FieldValidationRegex? = nil, type: String? = nil) {
            
            self.type = type
            
            self.regex = regex
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                regex = try container.decode(FieldValidationRegex.self, forKey: .regex)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(regex, forKey: .regex)
            
            
        }
        
    }
}
