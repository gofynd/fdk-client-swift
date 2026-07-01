

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: FormFieldResponseValues
        Used By: Lead
    */
    class FormFieldResponseValues: Codable {
        
        public var key: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
        }

        public init(key: String? = nil) {
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                key = try container.decode(String.self, forKey: .key)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}
