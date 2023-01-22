

import Foundation
public extension ApplicationClient {
    /*
        Model: CreateOrderUserPaymentMethods
        Used By: Payment
    */
    class CreateOrderUserPaymentMethods: Codable {
        
        public var name: String
        
        public var meta: PaymentMethodsMeta
        
        public var mode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case meta = "meta"
            
            case mode = "mode"
            
        }

        public init(meta: PaymentMethodsMeta, mode: String, name: String) {
            
            self.name = name
            
            self.meta = meta
            
            self.mode = mode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            meta = try container.decode(PaymentMethodsMeta.self, forKey: .meta)
            
            
            
            
            mode = try container.decode(String.self, forKey: .mode)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
        }
        
    }
}
