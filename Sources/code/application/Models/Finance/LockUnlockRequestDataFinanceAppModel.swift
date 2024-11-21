

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: LockUnlockRequestData
        Used By: Finance
    */
    class LockUnlockRequestData: Codable {
        
        public var sellerId: Int
        
        public var affiliateId: String
        
        public var orderingChannel: String
        
        public var creditNoteNumber: String
        
        public var amount: Double
        
        public var requestType: String
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case affiliateId = "affiliate_id"
            
            case orderingChannel = "ordering_channel"
            
            case creditNoteNumber = "credit_note_number"
            
            case amount = "amount"
            
            case requestType = "request_type"
            
            case orderId = "order_id"
            
        }

        public init(affiliateId: String, amount: Double, creditNoteNumber: String, orderingChannel: String, orderId: String, requestType: String, sellerId: Int) {
            
            self.sellerId = sellerId
            
            self.affiliateId = affiliateId
            
            self.orderingChannel = orderingChannel
            
            self.creditNoteNumber = creditNoteNumber
            
            self.amount = amount
            
            self.requestType = requestType
            
            self.orderId = orderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            sellerId = try container.decode(Int.self, forKey: .sellerId)
            
            
            
            
            affiliateId = try container.decode(String.self, forKey: .affiliateId)
            
            
            
            
            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
            
            
            
            
            creditNoteNumber = try container.decode(String.self, forKey: .creditNoteNumber)
            
            
            
            
            amount = try container.decode(Double.self, forKey: .amount)
            
            
            
            
            requestType = try container.decode(String.self, forKey: .requestType)
            
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            try? container.encodeIfPresent(creditNoteNumber, forKey: .creditNoteNumber)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(requestType, forKey: .requestType)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
}
