

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: BasePrice
        Used By: Cart
    */

    class BasePrice: Codable {
        
        
        public var effective: Double?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var marked: Double?
        
        public var preOverrideEffective: Double?
        
        public var preOverrideMarked: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case preOverrideEffective = "pre_override_effective"
            
            case preOverrideMarked = "pre_override_marked"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, effective: Double? = nil, marked: Double? = nil, preOverrideEffective: Double? = nil, preOverrideMarked: Double? = nil) {
            
            self.effective = effective
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.preOverrideEffective = preOverrideEffective
            
            self.preOverrideMarked = preOverrideMarked
            
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
                    preOverrideEffective = try container.decode(Double.self, forKey: .preOverrideEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    preOverrideMarked = try container.decode(Double.self, forKey: .preOverrideMarked)
                
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
            
            
            
            
            try? container.encodeIfPresent(preOverrideEffective, forKey: .preOverrideEffective)
            
            
            
            
            try? container.encodeIfPresent(preOverrideMarked, forKey: .preOverrideMarked)
            
            
        }
        
    }
}


