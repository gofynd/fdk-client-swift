

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaid: Int

        public var discount: Int

        public var valueOfGood: Int

        public var fyndCredits: Int

        public var identifiers: [String: Any]

        public var transferPrice: Int

        public var cashback: Int

        public var cashbackApplied: Int

        public var gstFee: String

        public var gstTag: String

        public var couponEffectiveDiscount: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var couponValue: Int

        public var size: String

        public var promotionEffectiveDiscount: Int

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var brandCalculatedAmount: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case discount

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case identifiers

            case transferPrice = "transfer_price"

            case cashback

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case brandCalculatedAmount = "brand_calculated_amount"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.amountPaid = amountPaid

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaid: Int

        public var discount: Int

        public var valueOfGood: Int

        public var fyndCredits: Int

        public var identifiers: [String: Any]

        public var transferPrice: Int

        public var cashback: Int

        public var cashbackApplied: Int

        public var gstFee: String

        public var gstTag: String

        public var couponEffectiveDiscount: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var couponValue: Int

        public var size: String

        public var promotionEffectiveDiscount: Int

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var brandCalculatedAmount: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case discount

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case identifiers

            case transferPrice = "transfer_price"

            case cashback

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case brandCalculatedAmount = "brand_calculated_amount"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.amountPaid = amountPaid

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
