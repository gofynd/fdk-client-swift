

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSessionRequestSerializer
        Used By: Payment
    */

    class RefundSessionRequestSerializer: Codable {
        
        
        public var meta: [String: Any]?
        
        public var gid: String
        
        public var status: String
        
        public var currency: String
        
        public var paymentDetails: PaymentSessionDetail
        
        public var totalAmount: Int
        
        public var refundDetails: [RefundSessionDetail]?
        
        public var error: ErrorDescription?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case gid = "gid"
            
            case status = "status"
            
            case currency = "currency"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case refundDetails = "refund_details"
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(currency: String, error: ErrorDescription? = nil, gid: String, message: String? = nil, meta: [String: Any]? = nil, paymentDetails: PaymentSessionDetail, refundDetails: [RefundSessionDetail]? = nil, status: String, totalAmount: Int) {
            
            self.meta = meta
            
            self.gid = gid
            
            self.status = status
            
            self.currency = currency
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.refundDetails = refundDetails
            
            self.error = error
            
            self.message = message
            
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
                
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                paymentDetails = try container.decode(PaymentSessionDetail.self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                do {
                    refundDetails = try container.decode([RefundSessionDetail].self, forKey: .refundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(ErrorDescription.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundSessionRequestSerializer
        Used By: Payment
    */

    class RefundSessionRequestSerializer: Codable {
        
        
        public var meta: [String: Any]?
        
        public var gid: String
        
        public var status: String
        
        public var currency: String
        
        public var paymentDetails: PaymentSessionDetail
        
        public var totalAmount: Int
        
        public var refundDetails: [RefundSessionDetail]?
        
        public var error: ErrorDescription?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case gid = "gid"
            
            case status = "status"
            
            case currency = "currency"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case refundDetails = "refund_details"
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(currency: String, error: ErrorDescription? = nil, gid: String, message: String? = nil, meta: [String: Any]? = nil, paymentDetails: PaymentSessionDetail, refundDetails: [RefundSessionDetail]? = nil, status: String, totalAmount: Int) {
            
            self.meta = meta
            
            self.gid = gid
            
            self.status = status
            
            self.currency = currency
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.refundDetails = refundDetails
            
            self.error = error
            
            self.message = message
            
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
                
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                paymentDetails = try container.decode(PaymentSessionDetail.self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                do {
                    refundDetails = try container.decode([RefundSessionDetail].self, forKey: .refundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(ErrorDescription.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


