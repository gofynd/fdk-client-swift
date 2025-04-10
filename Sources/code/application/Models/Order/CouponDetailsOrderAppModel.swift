

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: CouponDetails
        Used By: Order
    */
    class CouponDetails: Codable {
        
        public var display: String?
        
        public var code: String?
        
        public var currencySymbol: String?
        
        public var currencyCode: String?
        
        public var value: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case code = "code"
            
            case currencySymbol = "currency_symbol"
            
            case currencyCode = "currency_code"
            
            case value = "value"
            
        }

        public init(code: String? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, display: String? = nil, value: Double? = nil) {
            
            self.display = display
            
            self.code = code
            
            self.currencySymbol = currencySymbol
            
            self.currencyCode = currencyCode
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                display = try container.decode(String.self, forKey: .display)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                value = try container.decode(Double.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}
