

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderingCurrency
        Used By: Order
    */
    class OrderingCurrency: Codable {
        
        public var currencyCode: String?
        
        public var currencyName: String?
        
        public var currencySymbol: String?
        
        public var currencySubUnit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case currencyName = "currency_name"
            
            case currencySymbol = "currency_symbol"
            
            case currencySubUnit = "currency_sub_unit"
            
        }

        public init(currencyCode: String? = nil, currencyName: String? = nil, currencySubUnit: String? = nil, currencySymbol: String? = nil) {
            
            self.currencyCode = currencyCode
            
            self.currencyName = currencyName
            
            self.currencySymbol = currencySymbol
            
            self.currencySubUnit = currencySubUnit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currencyName = try container.decode(String.self, forKey: .currencyName)
            
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
                currencySubUnit = try container.decode(String.self, forKey: .currencySubUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            try? container.encodeIfPresent(currencyName, forKey: .currencyName)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            try? container.encodeIfPresent(currencySubUnit, forKey: .currencySubUnit)
            
            
        }
        
    }
}
