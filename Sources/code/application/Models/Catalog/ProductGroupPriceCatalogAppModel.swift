

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductGroupPrice
        Used By: Catalog
    */
    class ProductGroupPrice: Codable {
        
        public var effective: Double?
        
        public var marked: Double?
        
        public var selling: Double?
        
        public var currency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case marked = "marked"
            
            case selling = "selling"
            
            case currency = "currency"
            
        }

        public init(currency: String? = nil, effective: Double? = nil, marked: Double? = nil, selling: Double? = nil) {
            
            self.effective = effective
            
            self.marked = marked
            
            self.selling = selling
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                effective = try container.decode(Double.self, forKey: .effective)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                marked = try container.decode(Double.self, forKey: .marked)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                selling = try container.decode(Double.self, forKey: .selling)
            
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
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}
