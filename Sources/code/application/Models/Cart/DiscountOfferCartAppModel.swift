

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: DiscountOffer
        Used By: Cart
    */
    class DiscountOffer: Codable {
        
        public var maxDiscountAmount: Double?
        
        public var discountPrice: Double?
        
        public var maxUsagePerTransaction: Int?
        
        public var discountAmount: Double?
        
        public var discountPercentage: Double?
        
        public var minOfferQuantity: Int?
        
        public var maxOfferQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case maxDiscountAmount = "max_discount_amount"
            
            case discountPrice = "discount_price"
            
            case maxUsagePerTransaction = "max_usage_per_transaction"
            
            case discountAmount = "discount_amount"
            
            case discountPercentage = "discount_percentage"
            
            case minOfferQuantity = "min_offer_quantity"
            
            case maxOfferQuantity = "max_offer_quantity"
            
        }

        public init(discountAmount: Double? = nil, discountPercentage: Double? = nil, discountPrice: Double? = nil, maxDiscountAmount: Double? = nil, maxOfferQuantity: Int? = nil, maxUsagePerTransaction: Int? = nil, minOfferQuantity: Int? = nil) {
            
            self.maxDiscountAmount = maxDiscountAmount
            
            self.discountPrice = discountPrice
            
            self.maxUsagePerTransaction = maxUsagePerTransaction
            
            self.discountAmount = discountAmount
            
            self.discountPercentage = discountPercentage
            
            self.minOfferQuantity = minOfferQuantity
            
            self.maxOfferQuantity = maxOfferQuantity
            
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
                maxUsagePerTransaction = try container.decode(Int.self, forKey: .maxUsagePerTransaction)
            
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
                minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)
            
            
            
            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)
            
            
            
            try? container.encodeIfPresent(maxUsagePerTransaction, forKey: .maxUsagePerTransaction)
            
            
            
            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
            
            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)
            
            
            
            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
            
            
        }
        
    }
}
