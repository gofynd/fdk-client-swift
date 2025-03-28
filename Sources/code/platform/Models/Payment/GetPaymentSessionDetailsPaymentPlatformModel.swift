

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GetPaymentSessionDetails
        Used By: Payment
    */

    class GetPaymentSessionDetails: Codable {
        
        
        public var meta: [String: Any]?
        
        public var gid: String
        
        public var appliedPaymentOffers: AppliedOfferSerializerData?
        
        public var checksum: String?
        
        public var status: String
        
        public var currency: String
        
        public var paymentDetails: PaymentSessionDetail
        
        public var cartDetails: CartDetailsSerializerData?
        
        public var totalAmount: Int
        
        public var refundDetails: [RefundDetailsSerializerData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case gid = "gid"
            
            case appliedPaymentOffers = "applied_payment_offers"
            
            case checksum = "checksum"
            
            case status = "status"
            
            case currency = "currency"
            
            case paymentDetails = "payment_details"
            
            case cartDetails = "cart_details"
            
            case totalAmount = "total_amount"
            
            case refundDetails = "refund_details"
            
        }

        public init(appliedPaymentOffers: AppliedOfferSerializerData? = nil, cartDetails: CartDetailsSerializerData? = nil, checksum: String? = nil, currency: String, gid: String, meta: [String: Any]? = nil, paymentDetails: PaymentSessionDetail, refundDetails: [RefundDetailsSerializerData]? = nil, status: String, totalAmount: Int) {
            
            self.meta = meta
            
            self.gid = gid
            
            self.appliedPaymentOffers = appliedPaymentOffers
            
            self.checksum = checksum
            
            self.status = status
            
            self.currency = currency
            
            self.paymentDetails = paymentDetails
            
            self.cartDetails = cartDetails
            
            self.totalAmount = totalAmount
            
            self.refundDetails = refundDetails
            
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
                
            
            
            
                do {
                    appliedPaymentOffers = try container.decode(AppliedOfferSerializerData.self, forKey: .appliedPaymentOffers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checksum = try container.decode(String.self, forKey: .checksum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                paymentDetails = try container.decode(PaymentSessionDetail.self, forKey: .paymentDetails)
                
            
            
            
                do {
                    cartDetails = try container.decode(CartDetailsSerializerData.self, forKey: .cartDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                do {
                    refundDetails = try container.decode([RefundDetailsSerializerData].self, forKey: .refundDetails)
                
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
            
            
            
            
            try? container.encodeIfPresent(appliedPaymentOffers, forKey: .appliedPaymentOffers)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(cartDetails, forKey: .cartDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GetPaymentSessionDetails
        Used By: Payment
    */

    class GetPaymentSessionDetails: Codable {
        
        
        public var meta: [String: Any]?
        
        public var gid: String
        
        public var appliedPaymentOffers: AppliedOfferSerializerData?
        
        public var checksum: String?
        
        public var status: String
        
        public var currency: String
        
        public var paymentDetails: PaymentSessionDetail
        
        public var cartDetails: CartDetailsSerializerData?
        
        public var totalAmount: Int
        
        public var refundDetails: [RefundDetailsSerializerData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case gid = "gid"
            
            case appliedPaymentOffers = "applied_payment_offers"
            
            case checksum = "checksum"
            
            case status = "status"
            
            case currency = "currency"
            
            case paymentDetails = "payment_details"
            
            case cartDetails = "cart_details"
            
            case totalAmount = "total_amount"
            
            case refundDetails = "refund_details"
            
        }

        public init(appliedPaymentOffers: AppliedOfferSerializerData? = nil, cartDetails: CartDetailsSerializerData? = nil, checksum: String? = nil, currency: String, gid: String, meta: [String: Any]? = nil, paymentDetails: PaymentSessionDetail, refundDetails: [RefundDetailsSerializerData]? = nil, status: String, totalAmount: Int) {
            
            self.meta = meta
            
            self.gid = gid
            
            self.appliedPaymentOffers = appliedPaymentOffers
            
            self.checksum = checksum
            
            self.status = status
            
            self.currency = currency
            
            self.paymentDetails = paymentDetails
            
            self.cartDetails = cartDetails
            
            self.totalAmount = totalAmount
            
            self.refundDetails = refundDetails
            
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
                
            
            
            
                do {
                    appliedPaymentOffers = try container.decode(AppliedOfferSerializerData.self, forKey: .appliedPaymentOffers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checksum = try container.decode(String.self, forKey: .checksum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                paymentDetails = try container.decode(PaymentSessionDetail.self, forKey: .paymentDetails)
                
            
            
            
                do {
                    cartDetails = try container.decode(CartDetailsSerializerData.self, forKey: .cartDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                do {
                    refundDetails = try container.decode([RefundDetailsSerializerData].self, forKey: .refundDetails)
                
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
            
            
            
            
            try? container.encodeIfPresent(appliedPaymentOffers, forKey: .appliedPaymentOffers)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(cartDetails, forKey: .cartDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
        }
        
    }
}


