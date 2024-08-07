

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ItemPriceDetails
        Used By: Cart
    */
    class ItemPriceDetails: Codable {
        
        public var marked: PriceMinMax?
        
        public var effective: PriceMinMax?
        
        public var currency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case marked = "marked"
            
            case effective = "effective"
            
            case currency = "currency"
            
        }

        public init(currency: String? = nil, effective: PriceMinMax? = nil, marked: PriceMinMax? = nil) {
            
            self.marked = marked
            
            self.effective = effective
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                marked = try container.decode(PriceMinMax.self, forKey: .marked)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                effective = try container.decode(PriceMinMax.self, forKey: .effective)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(String.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}
