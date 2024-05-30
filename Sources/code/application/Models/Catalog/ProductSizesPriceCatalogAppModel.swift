

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizesPrice
        Used By: Catalog
    */
    class ProductSizesPrice: Codable {
        
        public var effective: Price?
        
        public var marked: Price?
        
        public var selling: Price?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case marked = "marked"
            
            case selling = "selling"
            
        }

        public init(effective: Price? = nil, marked: Price? = nil, selling: Price? = nil) {
            
            self.effective = effective
            
            self.marked = marked
            
            self.selling = selling
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                effective = try container.decode(Price.self, forKey: .effective)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                marked = try container.decode(Price.self, forKey: .marked)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                selling = try container.decode(Price.self, forKey: .selling)
            
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
            
            
        }
        
    }
}
