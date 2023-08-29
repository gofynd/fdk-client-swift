

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSessionRequestSerializer
        Used By: Payment
    */

    class RefundSessionRequestSerializer: Codable {
        
        
        public var gid: String
        
        public var paymentDetails: PaymentSessionDetail
        
        public var totalAmount: Int
        
        public var refundDetails: [RefundSessionDetail]?
        
        public var status: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case refundDetails = "refund_details"
            
            case status = "status"
            
            case currency = "currency"
            
        }

        public init(currency: String, gid: String, paymentDetails: PaymentSessionDetail, refundDetails: [RefundSessionDetail]? = nil, status: String, totalAmount: Int) {
            
            self.gid = gid
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.refundDetails = refundDetails
            
            self.status = status
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                paymentDetails = try container.decode(PaymentSessionDetail.self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                do {
                    refundDetails = try container.decode([RefundSessionDetail].self, forKey: .refundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundSessionRequestSerializer
        Used By: Payment
    */

    class RefundSessionRequestSerializer: Codable {
        
        
        public var gid: String
        
        public var paymentDetails: PaymentSessionDetail
        
        public var totalAmount: Int
        
        public var refundDetails: [RefundSessionDetail]?
        
        public var status: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case refundDetails = "refund_details"
            
            case status = "status"
            
            case currency = "currency"
            
        }

        public init(currency: String, gid: String, paymentDetails: PaymentSessionDetail, refundDetails: [RefundSessionDetail]? = nil, status: String, totalAmount: Int) {
            
            self.gid = gid
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.refundDetails = refundDetails
            
            self.status = status
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                paymentDetails = try container.decode(PaymentSessionDetail.self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                do {
                    refundDetails = try container.decode([RefundSessionDetail].self, forKey: .refundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


