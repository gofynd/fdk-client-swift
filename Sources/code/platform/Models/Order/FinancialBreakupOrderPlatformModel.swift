

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Int

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var discount: Int

        public var totalUnits: Int

        public var cashback: Int

        public var gstTag: String

        public var identifiers: Identifier

        public var amountPaid: Int

        public var transferPrice: Int

        public var gstFee: String

        public var promotionEffectiveDiscount: Int

        public var gstTaxPercentage: Int

        public var itemName: String

        public var hsnCode: String

        public var refundCredit: Int

        public var couponValue: Int

        public var couponEffectiveDiscount: Int

        public var amountPaidRoundoff: Int?

        public var pmPriceSplit: [String: Any]

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var size: String

        public var deliveryCharge: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var brandCalculatedAmount: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case discount

            case totalUnits = "total_units"

            case cashback

            case gstTag = "gst_tag"

            case identifiers

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case pmPriceSplit = "pm_price_split"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case size

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.discount = discount

            self.totalUnits = totalUnits

            self.cashback = cashback

            self.gstTag = gstTag

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.pmPriceSplit = pmPriceSplit

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Int

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var discount: Int

        public var totalUnits: Int

        public var cashback: Int

        public var gstTag: String

        public var identifiers: Identifier

        public var amountPaid: Int

        public var transferPrice: Int

        public var gstFee: String

        public var promotionEffectiveDiscount: Int

        public var gstTaxPercentage: Int

        public var itemName: String

        public var hsnCode: String

        public var refundCredit: Int

        public var couponValue: Int

        public var couponEffectiveDiscount: Int

        public var amountPaidRoundoff: Int?

        public var pmPriceSplit: [String: Any]

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var size: String

        public var deliveryCharge: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var brandCalculatedAmount: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case discount

            case totalUnits = "total_units"

            case cashback

            case gstTag = "gst_tag"

            case identifiers

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case pmPriceSplit = "pm_price_split"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case size

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.discount = discount

            self.totalUnits = totalUnits

            self.cashback = cashback

            self.gstTag = gstTag

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.pmPriceSplit = pmPriceSplit

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
