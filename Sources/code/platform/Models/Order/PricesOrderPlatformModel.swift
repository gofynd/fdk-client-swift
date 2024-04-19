

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Prices
        Used By: Order
    */

    class Prices: Codable {
        
        
        public var refundCredit: Double?
        
        public var amountPaidRoundoff: Double?
        
        public var priceEffective: Double?
        
        public var promotionEffectiveDiscount: Double?
        
        public var pmPriceSplit: Double?
        
        public var refundAmount: Double?
        
        public var transferPrice: Double?
        
        public var couponEffectiveDiscount: Double?
        
        public var taxCollectedAtSource: Double?
        
        public var brandCalculatedAmount: Double?
        
        public var deliveryCharge: Double?
        
        public var cashback: Double?
        
        public var valueOfGood: Double?
        
        public var cashbackApplied: Double?
        
        public var codCharges: Double?
        
        public var priceMarked: Double?
        
        public var amountPaid: Double?
        
        public var couponValue: Double?
        
        public var discount: Double?
        
        public var fyndCredits: Double?
        
        public var giftPrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundCredit = "refund_credit"
            
            case amountPaidRoundoff = "amount_paid_roundoff"
            
            case priceEffective = "price_effective"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case pmPriceSplit = "pm_price_split"
            
            case refundAmount = "refund_amount"
            
            case transferPrice = "transfer_price"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case deliveryCharge = "delivery_charge"
            
            case cashback = "cashback"
            
            case valueOfGood = "value_of_good"
            
            case cashbackApplied = "cashback_applied"
            
            case codCharges = "cod_charges"
            
            case priceMarked = "price_marked"
            
            case amountPaid = "amount_paid"
            
            case couponValue = "coupon_value"
            
            case discount = "discount"
            
            case fyndCredits = "fynd_credits"
            
            case giftPrice = "gift_price"
            
        }

        public init(amountPaid: Double? = nil, amountPaidRoundoff: Double? = nil, brandCalculatedAmount: Double? = nil, cashback: Double? = nil, cashbackApplied: Double? = nil, codCharges: Double? = nil, couponEffectiveDiscount: Double? = nil, couponValue: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, giftPrice: Double? = nil, pmPriceSplit: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, promotionEffectiveDiscount: Double? = nil, refundAmount: Double? = nil, refundCredit: Double? = nil, taxCollectedAtSource: Double? = nil, transferPrice: Double? = nil, valueOfGood: Double? = nil) {
            
            self.refundCredit = refundCredit
            
            self.amountPaidRoundoff = amountPaidRoundoff
            
            self.priceEffective = priceEffective
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.pmPriceSplit = pmPriceSplit
            
            self.refundAmount = refundAmount
            
            self.transferPrice = transferPrice
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.deliveryCharge = deliveryCharge
            
            self.cashback = cashback
            
            self.valueOfGood = valueOfGood
            
            self.cashbackApplied = cashbackApplied
            
            self.codCharges = codCharges
            
            self.priceMarked = priceMarked
            
            self.amountPaid = amountPaid
            
            self.couponValue = couponValue
            
            self.discount = discount
            
            self.fyndCredits = fyndCredits
            
            self.giftPrice = giftPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pmPriceSplit = try container.decode(Double.self, forKey: .pmPriceSplit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundAmount = try container.decode(Double.self, forKey: .refundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferPrice = try container.decode(Double.self, forKey: .transferPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashback = try container.decode(Double.self, forKey: .cashback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftPrice = try container.decode(Double.self, forKey: .giftPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encode(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encode(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encode(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encode(pmPriceSplit, forKey: .pmPriceSplit)
            
            
            
            
            try? container.encode(refundAmount, forKey: .refundAmount)
            
            
            
            
            try? container.encode(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encode(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encode(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encode(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encode(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encode(cashback, forKey: .cashback)
            
            
            
            
            try? container.encode(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encode(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encode(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encode(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encode(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encode(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encode(discount, forKey: .discount)
            
            
            
            
            try? container.encode(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encode(giftPrice, forKey: .giftPrice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Prices
        Used By: Order
    */

    class Prices: Codable {
        
        
        public var refundCredit: Double?
        
        public var amountPaidRoundoff: Double?
        
        public var priceEffective: Double?
        
        public var promotionEffectiveDiscount: Double?
        
        public var pmPriceSplit: Double?
        
        public var refundAmount: Double?
        
        public var transferPrice: Double?
        
        public var couponEffectiveDiscount: Double?
        
        public var taxCollectedAtSource: Double?
        
        public var brandCalculatedAmount: Double?
        
        public var deliveryCharge: Double?
        
        public var cashback: Double?
        
        public var valueOfGood: Double?
        
        public var cashbackApplied: Double?
        
        public var codCharges: Double?
        
        public var priceMarked: Double?
        
        public var amountPaid: Double?
        
        public var couponValue: Double?
        
        public var discount: Double?
        
        public var fyndCredits: Double?
        
        public var giftPrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundCredit = "refund_credit"
            
            case amountPaidRoundoff = "amount_paid_roundoff"
            
            case priceEffective = "price_effective"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case pmPriceSplit = "pm_price_split"
            
            case refundAmount = "refund_amount"
            
            case transferPrice = "transfer_price"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case deliveryCharge = "delivery_charge"
            
            case cashback = "cashback"
            
            case valueOfGood = "value_of_good"
            
            case cashbackApplied = "cashback_applied"
            
            case codCharges = "cod_charges"
            
            case priceMarked = "price_marked"
            
            case amountPaid = "amount_paid"
            
            case couponValue = "coupon_value"
            
            case discount = "discount"
            
            case fyndCredits = "fynd_credits"
            
            case giftPrice = "gift_price"
            
        }

        public init(amountPaid: Double? = nil, amountPaidRoundoff: Double? = nil, brandCalculatedAmount: Double? = nil, cashback: Double? = nil, cashbackApplied: Double? = nil, codCharges: Double? = nil, couponEffectiveDiscount: Double? = nil, couponValue: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, giftPrice: Double? = nil, pmPriceSplit: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, promotionEffectiveDiscount: Double? = nil, refundAmount: Double? = nil, refundCredit: Double? = nil, taxCollectedAtSource: Double? = nil, transferPrice: Double? = nil, valueOfGood: Double? = nil) {
            
            self.refundCredit = refundCredit
            
            self.amountPaidRoundoff = amountPaidRoundoff
            
            self.priceEffective = priceEffective
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.pmPriceSplit = pmPriceSplit
            
            self.refundAmount = refundAmount
            
            self.transferPrice = transferPrice
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.deliveryCharge = deliveryCharge
            
            self.cashback = cashback
            
            self.valueOfGood = valueOfGood
            
            self.cashbackApplied = cashbackApplied
            
            self.codCharges = codCharges
            
            self.priceMarked = priceMarked
            
            self.amountPaid = amountPaid
            
            self.couponValue = couponValue
            
            self.discount = discount
            
            self.fyndCredits = fyndCredits
            
            self.giftPrice = giftPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pmPriceSplit = try container.decode(Double.self, forKey: .pmPriceSplit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundAmount = try container.decode(Double.self, forKey: .refundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferPrice = try container.decode(Double.self, forKey: .transferPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashback = try container.decode(Double.self, forKey: .cashback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftPrice = try container.decode(Double.self, forKey: .giftPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encode(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encode(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encode(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encode(pmPriceSplit, forKey: .pmPriceSplit)
            
            
            
            
            try? container.encode(refundAmount, forKey: .refundAmount)
            
            
            
            
            try? container.encode(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encode(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encode(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encode(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encode(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encode(cashback, forKey: .cashback)
            
            
            
            
            try? container.encode(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encode(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encode(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encode(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encode(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encode(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encode(discount, forKey: .discount)
            
            
            
            
            try? container.encode(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encode(giftPrice, forKey: .giftPrice)
            
            
        }
        
    }
}


