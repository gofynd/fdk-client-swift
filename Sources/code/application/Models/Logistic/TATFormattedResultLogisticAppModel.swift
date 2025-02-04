

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATFormattedResult
        Used By: Logistic
    */
    class TATFormattedResult: Codable {
        
        public var min: String?
        
        public var max: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: String? = nil, min: String? = nil) {
            
            self.min = min
            
            self.max = max
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                min = try container.decode(String.self, forKey: .min)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                max = try container.decode(String.self, forKey: .max)
            
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
