

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PaymentMethod
        Used By: Order
    */

    class PaymentMethod: Codable {
        
        
        public var collectBy: String
        
        public var mode: String
        
        public var refundBy: String
        
        public var name: String
        
        public var amount: Double
        
        public var meta: [String: Any]?
        
        public var transactionData: [String: Any]?
        
        public var collected: Bool
        
        public var displayName: String
        
        public var merchantTransactionId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case collectBy = "collect_by"
            
            case mode = "mode"
            
            case refundBy = "refund_by"
            
            case name = "name"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case transactionData = "transaction_data"
            
            case collected = "collected"
            
            case displayName = "display_name"
            
            case merchantTransactionId = "merchant_transaction_id"
            
        }

        public init(amount: Double, collected: Bool, collectBy: String, displayName: String, merchantTransactionId: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            
            self.collectBy = collectBy
            
            self.mode = mode
            
            self.refundBy = refundBy
            
            self.name = name
            
            self.amount = amount
            
            self.meta = meta
            
            self.transactionData = transactionData
            
            self.collected = collected
            
            self.displayName = displayName
            
            self.merchantTransactionId = merchantTransactionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                collectBy = try container.decode(String.self, forKey: .collectBy)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                refundBy = try container.decode(String.self, forKey: .refundBy)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionData = try container.decode([String: Any].self, forKey: .transactionData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                collected = try container.decode(Bool.self, forKey: .collected)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
            
            
            try? container.encodeIfPresent(collected, forKey: .collected)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PaymentMethod
        Used By: Order
    */

    class PaymentMethod: Codable {
        
        
        public var collectBy: String
        
        public var mode: String
        
        public var refundBy: String
        
        public var name: String
        
        public var amount: Double
        
        public var meta: [String: Any]?
        
        public var transactionData: [String: Any]?
        
        public var collected: Bool
        
        public var displayName: String
        
        public var merchantTransactionId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case collectBy = "collect_by"
            
            case mode = "mode"
            
            case refundBy = "refund_by"
            
            case name = "name"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case transactionData = "transaction_data"
            
            case collected = "collected"
            
            case displayName = "display_name"
            
            case merchantTransactionId = "merchant_transaction_id"
            
        }

        public init(amount: Double, collected: Bool, collectBy: String, displayName: String, merchantTransactionId: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            
            self.collectBy = collectBy
            
            self.mode = mode
            
            self.refundBy = refundBy
            
            self.name = name
            
            self.amount = amount
            
            self.meta = meta
            
            self.transactionData = transactionData
            
            self.collected = collected
            
            self.displayName = displayName
            
            self.merchantTransactionId = merchantTransactionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                collectBy = try container.decode(String.self, forKey: .collectBy)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                refundBy = try container.decode(String.self, forKey: .refundBy)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionData = try container.decode([String: Any].self, forKey: .transactionData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                collected = try container.decode(Bool.self, forKey: .collected)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
            
            
            try? container.encodeIfPresent(collected, forKey: .collected)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
        }
        
    }
}


