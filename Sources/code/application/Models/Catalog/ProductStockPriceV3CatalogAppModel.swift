

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductStockPriceV3
        Used By: Catalog
    */
    class ProductStockPriceV3: Codable {
        
        public var effective: Double?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var marked: Double?
        
        public var selling: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case selling = "selling"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, effective: Double? = nil, marked: Double? = nil, selling: Double? = nil) {
            
            self.effective = effective
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.selling = selling
            
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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
        }
        
    }
}
