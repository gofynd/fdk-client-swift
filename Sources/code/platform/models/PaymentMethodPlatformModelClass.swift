

import Foundation
public extension PlatformClient {
    /*
        Model: PaymentMethod
        Used By: Order
    */

    class PaymentMethod: Codable {
        
        
        public var refundBy: String
        
        public var name: String
        
        public var amount: Double
        
        public var mode: String
        
        public var transactionData: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var collectBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case refundBy = "refund_by"
            
            case name = "name"
            
            case amount = "amount"
            
            case mode = "mode"
            
            case transactionData = "transaction_data"
            
            case meta = "meta"
            
            case collectBy = "collect_by"
            
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            
            self.refundBy = refundBy
            
            self.name = name
            
            self.amount = amount
            
            self.mode = mode
            
            self.transactionData = transactionData
            
            self.meta = meta
            
            self.collectBy = collectBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                refundBy = try container.decode(String.self, forKey: .refundBy)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    transactionData = try container.decode([String: Any].self, forKey: .transactionData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                collectBy = try container.decode(String.self, forKey: .collectBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
        }
        
    }
}
