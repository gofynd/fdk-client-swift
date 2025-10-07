

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DiscountOffer
        Used By: Cart
    */

    class DiscountOffer: Codable {
        
        
        public var maxDiscountAmount: Double?
        
        public var discountPrice: Double?
        
        public var apportionDiscount: Bool?
        
        public var partialCanRet: Bool?
        
        public var maxUsagePerTransaction: Int?
        
        public var minOfferQuantity: Int?
        
        public var code: String?
        
        public var discountAmount: Double?
        
        public var discountPercentage: Double?
        
        public var maxOfferQuantity: Int?
        
        public var itemSequenceNumber: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case maxDiscountAmount = "max_discount_amount"
            
            case discountPrice = "discount_price"
            
            case apportionDiscount = "apportion_discount"
            
            case partialCanRet = "partial_can_ret"
            
            case maxUsagePerTransaction = "max_usage_per_transaction"
            
            case minOfferQuantity = "min_offer_quantity"
            
            case code = "code"
            
            case discountAmount = "discount_amount"
            
            case discountPercentage = "discount_percentage"
            
            case maxOfferQuantity = "max_offer_quantity"
            
            case itemSequenceNumber = "item_sequence_number"
            
        }

        public init(apportionDiscount: Bool? = nil, code: String? = nil, discountAmount: Double? = nil, discountPercentage: Double? = nil, discountPrice: Double? = nil, itemSequenceNumber: Int? = nil, maxDiscountAmount: Double? = nil, maxOfferQuantity: Int? = nil, maxUsagePerTransaction: Int? = nil, minOfferQuantity: Int? = nil, partialCanRet: Bool? = nil) {
            
            self.maxDiscountAmount = maxDiscountAmount
            
            self.discountPrice = discountPrice
            
            self.apportionDiscount = apportionDiscount
            
            self.partialCanRet = partialCanRet
            
            self.maxUsagePerTransaction = maxUsagePerTransaction
            
            self.minOfferQuantity = minOfferQuantity
            
            self.code = code
            
            self.discountAmount = discountAmount
            
            self.discountPercentage = discountPercentage
            
            self.maxOfferQuantity = maxOfferQuantity
            
            self.itemSequenceNumber = itemSequenceNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maxDiscountAmount = try container.decode(Double.self, forKey: .maxDiscountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPrice = try container.decode(Double.self, forKey: .discountPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apportionDiscount = try container.decode(Bool.self, forKey: .apportionDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxUsagePerTransaction = try container.decode(Int.self, forKey: .maxUsagePerTransaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountAmount = try container.decode(Double.self, forKey: .discountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxOfferQuantity = try container.decode(Int.self, forKey: .maxOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSequenceNumber = try container.decode(Int.self, forKey: .itemSequenceNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)
            
            
            
            
            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)
            
            
            
            
            try? container.encodeIfPresent(apportionDiscount, forKey: .apportionDiscount)
            
            
            
            
            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)
            
            
            
            
            try? container.encodeIfPresent(maxUsagePerTransaction, forKey: .maxUsagePerTransaction)
            
            
            
            
            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)
            
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
            
            
            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(itemSequenceNumber, forKey: .itemSequenceNumber)
            
            
        }
        
    }
}


