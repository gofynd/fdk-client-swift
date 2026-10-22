

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ShipToGstDetails
        Used By: Cart
    */
    class ShipToGstDetails: Codable {
        
        public var gstin: String?
        
        public var tradeName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstin = "gstin"
            
            case tradeName = "trade_name"
            
        }

        public init(gstin: String? = nil, tradeName: String? = nil) {
            
            self.gstin = gstin
            
            self.tradeName = tradeName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                gstin = try container.decode(String.self, forKey: .gstin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tradeName = try container.decode(String.self, forKey: .tradeName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            try? container.encodeIfPresent(tradeName, forKey: .tradeName)
            
            
        }
        
    }
}
