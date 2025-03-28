

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundOptionsSchemaResponseSchema
        Used By: Order
    */
    class RefundOptionsSchemaResponseSchema: Codable {
        
        public var success: Bool?
        
        public var currency: CurrencySchema?
        
        public var refundOptions: [RefundOptionShipmentResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case currency = "currency"
            
            case refundOptions = "refund_options"
            
        }

        public init(currency: CurrencySchema? = nil, refundOptions: [RefundOptionShipmentResponseSchema]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.currency = currency
            
            self.refundOptions = refundOptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(CurrencySchema.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundOptions = try container.decode([RefundOptionShipmentResponseSchema].self, forKey: .refundOptions)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(refundOptions, forKey: .refundOptions)
            
            
        }
        
    }
}
