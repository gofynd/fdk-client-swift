

import Foundation
public extension PlatformClient {
    /*
        Model: BagMeta
        Used By: Order
    */

    class BagMeta: Codable {
        
        
        public var b2BPoDetails: B2BPODetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case b2BPoDetails = "b2b_po_details"
            
        }

        public init(b2BPoDetails: B2BPODetails? = nil) {
            
            self.b2BPoDetails = b2BPoDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    b2BPoDetails = try container.decode(B2BPODetails.self, forKey: .b2BPoDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(b2BPoDetails, forKey: .b2BPoDetails)
            
            
        }
        
    }
}
