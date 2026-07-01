

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PaymentInfoData
        Used By: Order
    */

    class PaymentInfoData: Codable {
        
        
        public var meta: [String: Any]?
        
        public var mode: String?
        
        public var name: String?
        
        public var amount: Double?
        
        public var collected: Bool?
        
        public var refundBy: String?
        
        public var collectBy: String?
        
        public var displayName: String?
        
        public var merchantTransactionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case mode = "mode"
            
            case name = "name"
            
            case amount = "amount"
            
            case collected = "collected"
            
            case refundBy = "refund_by"
            
            case collectBy = "collect_by"
            
            case displayName = "display_name"
            
            case merchantTransactionId = "merchant_transaction_id"
            
        }

        public init(amount: Double? = nil, collected: Bool? = nil, collectBy: String? = nil, displayName: String? = nil, merchantTransactionId: String? = nil, meta: [String: Any]? = nil, mode: String? = nil, name: String? = nil, refundBy: String? = nil) {
            
            self.meta = meta
            
            self.mode = mode
            
            self.name = name
            
            self.amount = amount
            
            self.collected = collected
            
            self.refundBy = refundBy
            
            self.collectBy = collectBy
            
            self.displayName = displayName
            
            self.merchantTransactionId = merchantTransactionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collected = try container.decode(Bool.self, forKey: .collected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundBy = try container.decode(String.self, forKey: .refundBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectBy = try container.decode(String.self, forKey: .collectBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(collected, forKey: .collected)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PaymentInfoData
        Used By: Order
    */

    class PaymentInfoData: Codable {
        
        
        public var meta: [String: Any]?
        
        public var mode: String?
        
        public var name: String?
        
        public var amount: Double?
        
        public var collected: Bool?
        
        public var refundBy: String?
        
        public var collectBy: String?
        
        public var displayName: String?
        
        public var merchantTransactionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case mode = "mode"
            
            case name = "name"
            
            case amount = "amount"
            
            case collected = "collected"
            
            case refundBy = "refund_by"
            
            case collectBy = "collect_by"
            
            case displayName = "display_name"
            
            case merchantTransactionId = "merchant_transaction_id"
            
        }

        public init(amount: Double? = nil, collected: Bool? = nil, collectBy: String? = nil, displayName: String? = nil, merchantTransactionId: String? = nil, meta: [String: Any]? = nil, mode: String? = nil, name: String? = nil, refundBy: String? = nil) {
            
            self.meta = meta
            
            self.mode = mode
            
            self.name = name
            
            self.amount = amount
            
            self.collected = collected
            
            self.refundBy = refundBy
            
            self.collectBy = collectBy
            
            self.displayName = displayName
            
            self.merchantTransactionId = merchantTransactionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collected = try container.decode(Bool.self, forKey: .collected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundBy = try container.decode(String.self, forKey: .refundBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectBy = try container.decode(String.self, forKey: .collectBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(collected, forKey: .collected)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
        }
        
    }
}


