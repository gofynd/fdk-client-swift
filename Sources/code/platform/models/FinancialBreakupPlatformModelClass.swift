

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var promotionEffectiveDiscount: Int

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var couponEffectiveDiscount: Int

        public var taxCollectedAtSource: Int?

        public var fyndCredits: Int

        public var gstFee: String

        public var priceMarked: Int

        public var pmPriceSplit: [String: Any]

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var couponValue: Int

        public var totalUnits: Int

        public var discount: Int

        public var transferPrice: Int

        public var priceEffective: Int

        public var cashback: Int

        public var valueOfGood: Int

        public var brandCalculatedAmount: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var gstTag: String

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var hsnCode: String

        public var amountPaid: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case priceMarked = "price_marked"

            case pmPriceSplit = "pm_price_split"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case discount

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case cashback

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.priceMarked = priceMarked

            self.pmPriceSplit = pmPriceSplit

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.discount = discount

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
