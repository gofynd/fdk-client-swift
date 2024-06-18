

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: LengthValidation
        Used By: Logistic
    */
    class LengthValidation: Codable {
        
        public var min: Int?
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: Int? = nil, min: Int? = nil) {
            
            self.min = min
            
            self.max = max
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                min = try container.decode(Int.self, forKey: .min)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                max = try container.decode(Int.self, forKey: .max)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
}
