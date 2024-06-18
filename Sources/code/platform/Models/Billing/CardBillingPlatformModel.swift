

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Card
        Used By: Billing
    */

    class Card: Codable {
        
        
        public var mandateOptions: MandateOptions?
        

        public enum CodingKeys: String, CodingKey {
            
            case mandateOptions = "mandate_options"
            
        }

        public init(mandateOptions: MandateOptions? = nil) {
            
            self.mandateOptions = mandateOptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mandateOptions = try container.decode(MandateOptions.self, forKey: .mandateOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mandateOptions, forKey: .mandateOptions)
            
            
        }
        
    }
}




