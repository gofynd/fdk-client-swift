

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var refundCredit: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var discount: Int

        public var gstTag: String

        public var pmPriceSplit: [String: Any]

        public var amountPaid: Int

        public var couponEffectiveDiscount: Int

        public var gstFee: String

        public var fyndCredits: Int

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var promotionEffectiveDiscount: Int

        public var totalUnits: Int

        public var valueOfGood: Int

        public var size: String

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case identifiers

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case discount

            case gstTag = "gst_tag"

            case pmPriceSplit = "pm_price_split"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case size

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.discount = discount

            self.gstTag = gstTag

            self.pmPriceSplit = pmPriceSplit

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.size = size

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var refundCredit: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var discount: Int

        public var gstTag: String

        public var pmPriceSplit: [String: Any]

        public var amountPaid: Int

        public var couponEffectiveDiscount: Int

        public var gstFee: String

        public var fyndCredits: Int

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var promotionEffectiveDiscount: Int

        public var totalUnits: Int

        public var valueOfGood: Int

        public var size: String

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case identifiers

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case discount

            case gstTag = "gst_tag"

            case pmPriceSplit = "pm_price_split"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case size

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.discount = discount

            self.gstTag = gstTag

            self.pmPriceSplit = pmPriceSplit

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.size = size

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
