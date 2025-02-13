

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PaymentMethodSchema
        Used By: Order
    */

    class PaymentMethodSchema: Codable {
        
        
        public var name: String
        
        public var mode: String
        
        public var amount: Double
        
        public var meta: PaymentMetaDataSchema?
        
        public var identifier: String
        
        public var displayName: String
        
        public var aggregator: String
        
        public var action: ActionDetailSchema
        
        public var refundBy: String
        
        public var collectBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case mode = "mode"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case identifier = "identifier"
            
            case displayName = "display_name"
            
            case aggregator = "aggregator"
            
            case action = "action"
            
            case refundBy = "refund_by"
            
            case collectBy = "collect_by"
            
        }

        public init(action: ActionDetailSchema, aggregator: String, amount: Double, collectBy: String, displayName: String, identifier: String, meta: PaymentMetaDataSchema? = nil, mode: String, name: String, refundBy: String) {
            
            self.name = name
            
            self.mode = mode
            
            self.amount = amount
            
            self.meta = meta
            
            self.identifier = identifier
            
            self.displayName = displayName
            
            self.aggregator = aggregator
            
            self.action = action
            
            self.refundBy = refundBy
            
            self.collectBy = collectBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    meta = try container.decode(PaymentMetaDataSchema.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                action = try container.decode(ActionDetailSchema.self, forKey: .action)
                
            
            
            
                refundBy = try container.decode(String.self, forKey: .refundBy)
                
            
            
            
                collectBy = try container.decode(String.self, forKey: .collectBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PaymentMethodSchema
        Used By: Order
    */

    class PaymentMethodSchema: Codable {
        
        
        public var name: String
        
        public var mode: String
        
        public var amount: Double
        
        public var meta: PaymentMetaDataSchema?
        
        public var identifier: String
        
        public var displayName: String
        
        public var aggregator: String
        
        public var action: ActionDetailSchema
        
        public var refundBy: String
        
        public var collectBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case mode = "mode"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case identifier = "identifier"
            
            case displayName = "display_name"
            
            case aggregator = "aggregator"
            
            case action = "action"
            
            case refundBy = "refund_by"
            
            case collectBy = "collect_by"
            
        }

        public init(action: ActionDetailSchema, aggregator: String, amount: Double, collectBy: String, displayName: String, identifier: String, meta: PaymentMetaDataSchema? = nil, mode: String, name: String, refundBy: String) {
            
            self.name = name
            
            self.mode = mode
            
            self.amount = amount
            
            self.meta = meta
            
            self.identifier = identifier
            
            self.displayName = displayName
            
            self.aggregator = aggregator
            
            self.action = action
            
            self.refundBy = refundBy
            
            self.collectBy = collectBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    meta = try container.decode(PaymentMetaDataSchema.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                action = try container.decode(ActionDetailSchema.self, forKey: .action)
                
            
            
            
                refundBy = try container.decode(String.self, forKey: .refundBy)
                
            
            
            
                collectBy = try container.decode(String.self, forKey: .collectBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
        }
        
    }
}


