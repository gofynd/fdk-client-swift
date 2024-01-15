

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ProductPricePerUnit
        Used By: Cart
    */
    class ProductPricePerUnit: Codable {
        
        public var currencySymbol: String?
        
        public var sellingPrice: Double?
        
        public var currencyCode: String?
        
        public var addOn: Double?
        
        public var effective: Double?
        
        public var marked: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencySymbol = "currency_symbol"
            
            case sellingPrice = "selling_price"
            
            case currencyCode = "currency_code"
            
            case addOn = "add_on"
            
            case effective = "effective"
            
            case marked = "marked"
            
        }

        public init(addOn: Double? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, effective: Double? = nil, marked: Double? = nil, sellingPrice: Double? = nil) {
            
            self.currencySymbol = currencySymbol
            
            self.sellingPrice = sellingPrice
            
            self.currencyCode = currencyCode
            
            self.addOn = addOn
            
            self.effective = effective
            
            self.marked = marked
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
            
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
                addOn = try container.decode(Double.self, forKey: .addOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            try? container.encodeIfPresent(addOn, forKey: .addOn)
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
        }
        
    }
}
