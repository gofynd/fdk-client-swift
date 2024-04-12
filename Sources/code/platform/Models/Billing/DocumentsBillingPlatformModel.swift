

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Documents
        Used By: Billing
    */

    class Documents: Codable {
        
        
        public var pan: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pan = "pan"
            
        }

        public init(pan: String? = nil) {
            
            self.pan = pan
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pan, forKey: .pan)
            
            
        }
        
    }
}




