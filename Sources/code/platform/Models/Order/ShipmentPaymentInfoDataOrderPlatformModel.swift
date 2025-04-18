

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentPaymentInfoData
        Used By: Order
    */

    class ShipmentPaymentInfoData: Codable {
        
        
        public var mode: String?
        
        public var name: String?
        
        public var collectBy: String?
        
        public var refundBy: String?
        
        public var meta: [String: Any]?
        
        public var amount: Double?
        
        public var uniqueIdentifier: String?
        
        public var displayName: String?
        
        public var transactionData: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case name = "name"
            
            case collectBy = "collect_by"
            
            case refundBy = "refund_by"
            
            case meta = "meta"
            
            case amount = "amount"
            
            case uniqueIdentifier = "unique_identifier"
            
            case displayName = "display_name"
            
            case transactionData = "transaction_data"
            
        }

        public init(amount: Double? = nil, collectBy: String? = nil, displayName: String? = nil, meta: [String: Any]? = nil, mode: String? = nil, name: String? = nil, refundBy: String? = nil, transactionData: [String: Any]? = nil, uniqueIdentifier: String? = nil) {
            
            self.mode = mode
            
            self.name = name
            
            self.collectBy = collectBy
            
            self.refundBy = refundBy
            
            self.meta = meta
            
            self.amount = amount
            
            self.uniqueIdentifier = uniqueIdentifier
            
            self.displayName = displayName
            
            self.transactionData = transactionData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    collectBy = try container.decode(String.self, forKey: .collectBy)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    uniqueIdentifier = try container.decode(String.self, forKey: .uniqueIdentifier)
                
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
                    transactionData = try container.decode([String: Any].self, forKey: .transactionData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(uniqueIdentifier, forKey: .uniqueIdentifier)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentPaymentInfoData
        Used By: Order
    */

    class ShipmentPaymentInfoData: Codable {
        
        
        public var mode: String?
        
        public var name: String?
        
        public var collectBy: String?
        
        public var refundBy: String?
        
        public var meta: [String: Any]?
        
        public var amount: Double?
        
        public var uniqueIdentifier: String?
        
        public var displayName: String?
        
        public var transactionData: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case name = "name"
            
            case collectBy = "collect_by"
            
            case refundBy = "refund_by"
            
            case meta = "meta"
            
            case amount = "amount"
            
            case uniqueIdentifier = "unique_identifier"
            
            case displayName = "display_name"
            
            case transactionData = "transaction_data"
            
        }

        public init(amount: Double? = nil, collectBy: String? = nil, displayName: String? = nil, meta: [String: Any]? = nil, mode: String? = nil, name: String? = nil, refundBy: String? = nil, transactionData: [String: Any]? = nil, uniqueIdentifier: String? = nil) {
            
            self.mode = mode
            
            self.name = name
            
            self.collectBy = collectBy
            
            self.refundBy = refundBy
            
            self.meta = meta
            
            self.amount = amount
            
            self.uniqueIdentifier = uniqueIdentifier
            
            self.displayName = displayName
            
            self.transactionData = transactionData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    collectBy = try container.decode(String.self, forKey: .collectBy)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    uniqueIdentifier = try container.decode(String.self, forKey: .uniqueIdentifier)
                
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
                    transactionData = try container.decode([String: Any].self, forKey: .transactionData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(uniqueIdentifier, forKey: .uniqueIdentifier)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
        }
        
    }
}


