

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentSessionFetchDetails
        Used By: Payment
    */

    class PaymentSessionFetchDetails: Codable {
        
        
        public var paymentDetails: [String: Any]
        
        public var currency: String?
        
        public var status: String
        
        public var totalAmount: Int
        
        public var gid: String
        
        public var cartDetails: CartDetails?
        
        public var refundDetails: [RefundDetails]
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentDetails = "payment_details"
            
            case currency = "currency"
            
            case status = "status"
            
            case totalAmount = "total_amount"
            
            case gid = "gid"
            
            case cartDetails = "cart_details"
            
            case refundDetails = "refund_details"
            
        }

        public init(cartDetails: CartDetails? = nil, currency: String? = nil, gid: String, paymentDetails: [String: Any], refundDetails: [RefundDetails], status: String, totalAmount: Int) {
            
            self.paymentDetails = paymentDetails
            
            self.currency = currency
            
            self.status = status
            
            self.totalAmount = totalAmount
            
            self.gid = gid
            
            self.cartDetails = cartDetails
            
            self.refundDetails = refundDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)
                
            
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                do {
                    cartDetails = try container.decode(CartDetails.self, forKey: .cartDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                refundDetails = try container.decode([RefundDetails].self, forKey: .refundDetails)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(cartDetails, forKey: .cartDetails)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentSessionFetchDetails
        Used By: Payment
    */

    class PaymentSessionFetchDetails: Codable {
        
        
        public var paymentDetails: [String: Any]
        
        public var currency: String?
        
        public var status: String
        
        public var totalAmount: Int
        
        public var gid: String
        
        public var cartDetails: CartDetails?
        
        public var refundDetails: [RefundDetails]
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentDetails = "payment_details"
            
            case currency = "currency"
            
            case status = "status"
            
            case totalAmount = "total_amount"
            
            case gid = "gid"
            
            case cartDetails = "cart_details"
            
            case refundDetails = "refund_details"
            
        }

        public init(cartDetails: CartDetails? = nil, currency: String? = nil, gid: String, paymentDetails: [String: Any], refundDetails: [RefundDetails], status: String, totalAmount: Int) {
            
            self.paymentDetails = paymentDetails
            
            self.currency = currency
            
            self.status = status
            
            self.totalAmount = totalAmount
            
            self.gid = gid
            
            self.cartDetails = cartDetails
            
            self.refundDetails = refundDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)
                
            
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                do {
                    cartDetails = try container.decode(CartDetails.self, forKey: .cartDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                refundDetails = try container.decode([RefundDetails].self, forKey: .refundDetails)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(cartDetails, forKey: .cartDetails)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
        }
        
    }
}


