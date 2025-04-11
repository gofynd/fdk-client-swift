

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderingCurrencyPrices
        Used By: Order
    */

    class OrderingCurrencyPrices: Codable {
        
        
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
        
        public var amountToBeCollected: Double?
        
        public var addedToFyndCash: Double?
        
        public var gstTaxPercentage: Double?
        
        public var tcsPercentage: Double?
        
        public var cnRefundAmount: Double?
        
        public var appliedEmiDiscount: Double?
        
        public var appliedInstantDiscount: Double?
        

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
            
            case amountToBeCollected = "amount_to_be_collected"
            
            case addedToFyndCash = "added_to_fynd_cash"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case tcsPercentage = "tcs_percentage"
            
            case cnRefundAmount = "cn_refund_amount"
            
            case appliedEmiDiscount = "applied_emi_discount"
            
            case appliedInstantDiscount = "applied_instant_discount"
            
        }

        public init(addedToFyndCash: Double? = nil, amountPaid: Double? = nil, amountPaidRoundoff: Double? = nil, amountToBeCollected: Double? = nil, appliedEmiDiscount: Double? = nil, appliedInstantDiscount: Double? = nil, brandCalculatedAmount: Double? = nil, cashback: Double? = nil, cashbackApplied: Double? = nil, cnRefundAmount: Double? = nil, codCharges: Double? = nil, couponEffectiveDiscount: Double? = nil, couponValue: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, giftPrice: Double? = nil, gstTaxPercentage: Double? = nil, pmPriceSplit: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, promotionEffectiveDiscount: Double? = nil, refundAmount: Double? = nil, refundCredit: Double? = nil, taxCollectedAtSource: Double? = nil, tcsPercentage: Double? = nil, transferPrice: Double? = nil, valueOfGood: Double? = nil) {
            
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
            
            self.amountToBeCollected = amountToBeCollected
            
            self.addedToFyndCash = addedToFyndCash
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.tcsPercentage = tcsPercentage
            
            self.cnRefundAmount = cnRefundAmount
            
            self.appliedEmiDiscount = appliedEmiDiscount
            
            self.appliedInstantDiscount = appliedInstantDiscount
            
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
                
            
            
                do {
                    amountToBeCollected = try container.decode(Double.self, forKey: .amountToBeCollected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addedToFyndCash = try container.decode(Double.self, forKey: .addedToFyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cnRefundAmount = try container.decode(Double.self, forKey: .cnRefundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedEmiDiscount = try container.decode(Double.self, forKey: .appliedEmiDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedInstantDiscount = try container.decode(Double.self, forKey: .appliedInstantDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)
            
            
            
            
            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
            
            
            
            
            try? container.encodeIfPresent(amountToBeCollected, forKey: .amountToBeCollected)
            
            
            
            
            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
            
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)
            
            
            
            
            try? container.encodeIfPresent(cnRefundAmount, forKey: .cnRefundAmount)
            
            
            
            
            try? container.encodeIfPresent(appliedEmiDiscount, forKey: .appliedEmiDiscount)
            
            
            
            
            try? container.encodeIfPresent(appliedInstantDiscount, forKey: .appliedInstantDiscount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderingCurrencyPrices
        Used By: Order
    */

    class OrderingCurrencyPrices: Codable {
        
        
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
        
        public var amountToBeCollected: Double?
        
        public var addedToFyndCash: Double?
        
        public var gstTaxPercentage: Double?
        
        public var tcsPercentage: Double?
        
        public var cnRefundAmount: Double?
        
        public var appliedEmiDiscount: Double?
        
        public var appliedInstantDiscount: Double?
        

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
            
            case amountToBeCollected = "amount_to_be_collected"
            
            case addedToFyndCash = "added_to_fynd_cash"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case tcsPercentage = "tcs_percentage"
            
            case cnRefundAmount = "cn_refund_amount"
            
            case appliedEmiDiscount = "applied_emi_discount"
            
            case appliedInstantDiscount = "applied_instant_discount"
            
        }

        public init(addedToFyndCash: Double? = nil, amountPaid: Double? = nil, amountPaidRoundoff: Double? = nil, amountToBeCollected: Double? = nil, appliedEmiDiscount: Double? = nil, appliedInstantDiscount: Double? = nil, brandCalculatedAmount: Double? = nil, cashback: Double? = nil, cashbackApplied: Double? = nil, cnRefundAmount: Double? = nil, codCharges: Double? = nil, couponEffectiveDiscount: Double? = nil, couponValue: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, giftPrice: Double? = nil, gstTaxPercentage: Double? = nil, pmPriceSplit: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, promotionEffectiveDiscount: Double? = nil, refundAmount: Double? = nil, refundCredit: Double? = nil, taxCollectedAtSource: Double? = nil, tcsPercentage: Double? = nil, transferPrice: Double? = nil, valueOfGood: Double? = nil) {
            
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
            
            self.amountToBeCollected = amountToBeCollected
            
            self.addedToFyndCash = addedToFyndCash
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.tcsPercentage = tcsPercentage
            
            self.cnRefundAmount = cnRefundAmount
            
            self.appliedEmiDiscount = appliedEmiDiscount
            
            self.appliedInstantDiscount = appliedInstantDiscount
            
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
                
            
            
                do {
                    amountToBeCollected = try container.decode(Double.self, forKey: .amountToBeCollected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addedToFyndCash = try container.decode(Double.self, forKey: .addedToFyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cnRefundAmount = try container.decode(Double.self, forKey: .cnRefundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedEmiDiscount = try container.decode(Double.self, forKey: .appliedEmiDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedInstantDiscount = try container.decode(Double.self, forKey: .appliedInstantDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)
            
            
            
            
            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
            
            
            
            
            try? container.encodeIfPresent(amountToBeCollected, forKey: .amountToBeCollected)
            
            
            
            
            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
            
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)
            
            
            
            
            try? container.encodeIfPresent(cnRefundAmount, forKey: .cnRefundAmount)
            
            
            
            
            try? container.encodeIfPresent(appliedEmiDiscount, forKey: .appliedEmiDiscount)
            
            
            
            
            try? container.encodeIfPresent(appliedInstantDiscount, forKey: .appliedInstantDiscount)
            
            
        }
        
    }
}


