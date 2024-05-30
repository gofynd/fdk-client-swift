

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FinancialBreakup
        Used By: Order
    */

    class FinancialBreakup: Codable {
        
        
        public var refundCredit: Double
        
        public var amountPaidRoundoff: Int?
        
        public var priceEffective: Double
        
        public var promotionEffectiveDiscount: Double
        
        public var transferPrice: Double
        
        public var couponEffectiveDiscount: Double
        
        public var gstFee: Double
        
        public var taxCollectedAtSource: Double?
        
        public var brandCalculatedAmount: Double
        
        public var deliveryCharge: Double
        
        public var gstTag: String
        
        public var hsnCode: String
        
        public var cashback: Double
        
        public var itemName: String
        
        public var valueOfGood: Double
        
        public var cashbackApplied: Double
        
        public var codCharges: Double
        
        public var priceMarked: Double
        
        public var size: String
        
        public var amountPaid: Double
        
        public var couponValue: Double
        
        public var discount: Double
        
        public var fyndCredits: Double
        
        public var gstTaxPercentage: Double
        
        public var identifiers: Identifier
        
        public var totalUnits: Int
        
        public var addedToFyndCash: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case refundCredit = "refund_credit"
            
            case amountPaidRoundoff = "amount_paid_roundoff"
            
            case priceEffective = "price_effective"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case transferPrice = "transfer_price"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case gstFee = "gst_fee"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case deliveryCharge = "delivery_charge"
            
            case gstTag = "gst_tag"
            
            case hsnCode = "hsn_code"
            
            case cashback = "cashback"
            
            case itemName = "item_name"
            
            case valueOfGood = "value_of_good"
            
            case cashbackApplied = "cashback_applied"
            
            case codCharges = "cod_charges"
            
            case priceMarked = "price_marked"
            
            case size = "size"
            
            case amountPaid = "amount_paid"
            
            case couponValue = "coupon_value"
            
            case discount = "discount"
            
            case fyndCredits = "fynd_credits"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case identifiers = "identifiers"
            
            case totalUnits = "total_units"
            
            case addedToFyndCash = "added_to_fynd_cash"
            
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double? = nil, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            
            self.refundCredit = refundCredit
            
            self.amountPaidRoundoff = amountPaidRoundoff
            
            self.priceEffective = priceEffective
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.transferPrice = transferPrice
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.gstFee = gstFee
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.deliveryCharge = deliveryCharge
            
            self.gstTag = gstTag
            
            self.hsnCode = hsnCode
            
            self.cashback = cashback
            
            self.itemName = itemName
            
            self.valueOfGood = valueOfGood
            
            self.cashbackApplied = cashbackApplied
            
            self.codCharges = codCharges
            
            self.priceMarked = priceMarked
            
            self.size = size
            
            self.amountPaid = amountPaid
            
            self.couponValue = couponValue
            
            self.discount = discount
            
            self.fyndCredits = fyndCredits
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.identifiers = identifiers
            
            self.totalUnits = totalUnits
            
            self.addedToFyndCash = addedToFyndCash
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                
            
            
            
                do {
                    amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
            
            
            
                transferPrice = try container.decode(Double.self, forKey: .transferPrice)
                
            
            
            
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
            
            
            
                gstFee = try container.decode(Double.self, forKey: .gstFee)
                
            
            
            
                do {
                    taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
            
            
            
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
            
            
            
                gstTag = try container.decode(String.self, forKey: .gstTag)
                
            
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                cashback = try container.decode(Double.self, forKey: .cashback)
                
            
            
            
                itemName = try container.decode(String.self, forKey: .itemName)
                
            
            
            
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
            
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                couponValue = try container.decode(Double.self, forKey: .couponValue)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
            
            
            
                gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                totalUnits = try container.decode(Int.self, forKey: .totalUnits)
                
            
            
            
                addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
            
            
            
            
            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FinancialBreakup
        Used By: Order
    */

    class FinancialBreakup: Codable {
        
        
        public var refundCredit: Double
        
        public var amountPaidRoundoff: Int?
        
        public var priceEffective: Double
        
        public var promotionEffectiveDiscount: Double
        
        public var transferPrice: Double
        
        public var couponEffectiveDiscount: Double
        
        public var gstFee: Double
        
        public var taxCollectedAtSource: Double?
        
        public var brandCalculatedAmount: Double
        
        public var deliveryCharge: Double
        
        public var gstTag: String
        
        public var hsnCode: String
        
        public var cashback: Double
        
        public var itemName: String
        
        public var valueOfGood: Double
        
        public var cashbackApplied: Double
        
        public var codCharges: Double
        
        public var priceMarked: Double
        
        public var size: String
        
        public var amountPaid: Double
        
        public var couponValue: Double
        
        public var discount: Double
        
        public var fyndCredits: Double
        
        public var gstTaxPercentage: Double
        
        public var identifiers: Identifier
        
        public var totalUnits: Int
        
        public var addedToFyndCash: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case refundCredit = "refund_credit"
            
            case amountPaidRoundoff = "amount_paid_roundoff"
            
            case priceEffective = "price_effective"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case transferPrice = "transfer_price"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case gstFee = "gst_fee"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case deliveryCharge = "delivery_charge"
            
            case gstTag = "gst_tag"
            
            case hsnCode = "hsn_code"
            
            case cashback = "cashback"
            
            case itemName = "item_name"
            
            case valueOfGood = "value_of_good"
            
            case cashbackApplied = "cashback_applied"
            
            case codCharges = "cod_charges"
            
            case priceMarked = "price_marked"
            
            case size = "size"
            
            case amountPaid = "amount_paid"
            
            case couponValue = "coupon_value"
            
            case discount = "discount"
            
            case fyndCredits = "fynd_credits"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case identifiers = "identifiers"
            
            case totalUnits = "total_units"
            
            case addedToFyndCash = "added_to_fynd_cash"
            
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double? = nil, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            
            self.refundCredit = refundCredit
            
            self.amountPaidRoundoff = amountPaidRoundoff
            
            self.priceEffective = priceEffective
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.transferPrice = transferPrice
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.gstFee = gstFee
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.deliveryCharge = deliveryCharge
            
            self.gstTag = gstTag
            
            self.hsnCode = hsnCode
            
            self.cashback = cashback
            
            self.itemName = itemName
            
            self.valueOfGood = valueOfGood
            
            self.cashbackApplied = cashbackApplied
            
            self.codCharges = codCharges
            
            self.priceMarked = priceMarked
            
            self.size = size
            
            self.amountPaid = amountPaid
            
            self.couponValue = couponValue
            
            self.discount = discount
            
            self.fyndCredits = fyndCredits
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.identifiers = identifiers
            
            self.totalUnits = totalUnits
            
            self.addedToFyndCash = addedToFyndCash
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                
            
            
            
                do {
                    amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
            
            
            
                transferPrice = try container.decode(Double.self, forKey: .transferPrice)
                
            
            
            
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
            
            
            
                gstFee = try container.decode(Double.self, forKey: .gstFee)
                
            
            
            
                do {
                    taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
            
            
            
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
            
            
            
                gstTag = try container.decode(String.self, forKey: .gstTag)
                
            
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                cashback = try container.decode(Double.self, forKey: .cashback)
                
            
            
            
                itemName = try container.decode(String.self, forKey: .itemName)
                
            
            
            
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
            
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                couponValue = try container.decode(Double.self, forKey: .couponValue)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
            
            
            
                gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                totalUnits = try container.decode(Int.self, forKey: .totalUnits)
                
            
            
            
                addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
            
            
            
            
            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
            
            
        }
        
    }
}


