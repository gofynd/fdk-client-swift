

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PaymentMethodTransactionPartySchema
        Used By: Order
    */

    class PaymentMethodTransactionPartySchema: Codable {
        
        
        public var refundBearer: String
        
        public var collectionBearer: String
        

        public enum CodingKeys: String, CodingKey {
            
            case refundBearer = "refund_bearer"
            
            case collectionBearer = "collection_bearer"
            
        }

        public init(collectionBearer: String, refundBearer: String) {
            
            self.refundBearer = refundBearer
            
            self.collectionBearer = collectionBearer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                refundBearer = try container.decode(String.self, forKey: .refundBearer)
                
            
            
            
                collectionBearer = try container.decode(String.self, forKey: .collectionBearer)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundBearer, forKey: .refundBearer)
            
            
            
            
            try? container.encodeIfPresent(collectionBearer, forKey: .collectionBearer)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PaymentMethodTransactionPartySchema
        Used By: Order
    */

    class PaymentMethodTransactionPartySchema: Codable {
        
        
        public var refundBearer: String
        
        public var collectionBearer: String
        

        public enum CodingKeys: String, CodingKey {
            
            case refundBearer = "refund_bearer"
            
            case collectionBearer = "collection_bearer"
            
        }

        public init(collectionBearer: String, refundBearer: String) {
            
            self.refundBearer = refundBearer
            
            self.collectionBearer = collectionBearer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                refundBearer = try container.decode(String.self, forKey: .refundBearer)
                
            
            
            
                collectionBearer = try container.decode(String.self, forKey: .collectionBearer)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundBearer, forKey: .refundBearer)
            
            
            
            
            try? container.encodeIfPresent(collectionBearer, forKey: .collectionBearer)
            
            
        }
        
    }
}


