

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentSessionRequestSerializer
        Used By: Payment
    */

    class PaymentSessionRequestSerializer: Codable {
        
        
        public var gid: String
        
        public var paymentDetails: [PaymentSessionDetail]
        
        public var totalAmount: Int
        
        public var status: String
        
        public var orderDetails: OrderDetail
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case status = "status"
            
            case orderDetails = "order_details"
            
            case currency = "currency"
            
        }

        public init(currency: String, gid: String, orderDetails: OrderDetail, paymentDetails: [PaymentSessionDetail], status: String, totalAmount: Int) {
            
            self.gid = gid
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.status = status
            
            self.orderDetails = orderDetails
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                paymentDetails = try container.decode([PaymentSessionDetail].self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                orderDetails = try container.decode(OrderDetail.self, forKey: .orderDetails)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentSessionRequestSerializer
        Used By: Payment
    */

    class PaymentSessionRequestSerializer: Codable {
        
        
        public var gid: String
        
        public var paymentDetails: [PaymentSessionDetail]
        
        public var totalAmount: Int
        
        public var status: String
        
        public var orderDetails: OrderDetail
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case status = "status"
            
            case orderDetails = "order_details"
            
            case currency = "currency"
            
        }

        public init(currency: String, gid: String, orderDetails: OrderDetail, paymentDetails: [PaymentSessionDetail], status: String, totalAmount: Int) {
            
            self.gid = gid
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.status = status
            
            self.orderDetails = orderDetails
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                paymentDetails = try container.decode([PaymentSessionDetail].self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                orderDetails = try container.decode(OrderDetail.self, forKey: .orderDetails)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


