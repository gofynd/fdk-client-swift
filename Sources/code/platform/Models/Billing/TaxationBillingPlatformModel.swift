

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Taxation
        Used By: Billing
    */

    class Taxation: Codable {
        
        
        public var gst: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case gst = "gst"
            
        }

        public init(gst: Double? = nil) {
            
            self.gst = gst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gst = try container.decode(Double.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
        }
        
    }
}



