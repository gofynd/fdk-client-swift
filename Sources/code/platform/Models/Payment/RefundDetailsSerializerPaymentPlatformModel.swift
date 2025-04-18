

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundDetailsSerializer
        Used By: Payment
    */

    class RefundDetailsSerializer: Codable {
        
        
        public var amount: Int
        
        public var currency: String
        
        public var requestId: String
        
        public var status: String
        
        public var created: String
        
        public var refundUtr: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currency = "currency"
            
            case requestId = "request_id"
            
            case status = "status"
            
            case created = "created"
            
            case refundUtr = "refund_utr"
            
        }

        public init(amount: Int, created: String, currency: String, refundUtr: String, requestId: String, status: String) {
            
            self.amount = amount
            
            self.currency = currency
            
            self.requestId = requestId
            
            self.status = status
            
            self.created = created
            
            self.refundUtr = refundUtr
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                created = try container.decode(String.self, forKey: .created)
                
            
            
            
                refundUtr = try container.decode(String.self, forKey: .refundUtr)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(refundUtr, forKey: .refundUtr)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundDetailsSerializer
        Used By: Payment
    */

    class RefundDetailsSerializer: Codable {
        
        
        public var amount: Int
        
        public var currency: String
        
        public var requestId: String
        
        public var status: String
        
        public var created: String
        
        public var refundUtr: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currency = "currency"
            
            case requestId = "request_id"
            
            case status = "status"
            
            case created = "created"
            
            case refundUtr = "refund_utr"
            
        }

        public init(amount: Int, created: String, currency: String, refundUtr: String, requestId: String, status: String) {
            
            self.amount = amount
            
            self.currency = currency
            
            self.requestId = requestId
            
            self.status = status
            
            self.created = created
            
            self.refundUtr = refundUtr
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                created = try container.decode(String.self, forKey: .created)
                
            
            
            
                refundUtr = try container.decode(String.self, forKey: .refundUtr)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(refundUtr, forKey: .refundUtr)
            
            
        }
        
    }
}


