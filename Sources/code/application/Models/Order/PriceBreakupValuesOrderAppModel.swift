

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: PriceBreakupValues
        Used By: Order
    */
    class PriceBreakupValues: Codable {
        
        public var value: Double?
        
        public var currencySymbol: String?
        
        public var name: String?
        
        public var display: String?
        
        public var currencyCode: String?
        
        public var subValues: [PriceBreakupValues]?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case currencySymbol = "currency_symbol"
            
            case name = "name"
            
            case display = "display"
            
            case currencyCode = "currency_code"
            
            case subValues = "sub_values"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, display: String? = nil, name: String? = nil, subValues: [PriceBreakupValues]? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.currencySymbol = currencySymbol
            
            self.name = name
            
            self.display = display
            
            self.currencyCode = currencyCode
            
            self.subValues = subValues
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                value = try container.decode(Double.self, forKey: .value)
            
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
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                display = try container.decode(String.self, forKey: .display)
            
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
                subValues = try container.decode([PriceBreakupValues].self, forKey: .subValues)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            try? container.encodeIfPresent(subValues, forKey: .subValues)
            
            
        }
        
    }
}
