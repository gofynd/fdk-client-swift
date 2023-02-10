

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var promotionEffectiveDiscount: Int

        public var size: String

        public var totalUnits: Int

        public var valueOfGood: Int

        public var itemName: String

        public var gstFee: String

        public var pmPriceSplit: [String: Any]

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var couponValue: Int

        public var amountPaid: Int

        public var identifiers: Identifier

        public var amountPaidRoundoff: Int?

        public var fyndCredits: Int

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var refundCredit: Int

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var codCharges: Int

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var brandCalculatedAmount: Int

        public var couponEffectiveDiscount: Int

        public var discount: Int

        public var priceEffective: Int

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case pmPriceSplit = "pm_price_split"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case identifiers

            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case refundCredit = "refund_credit"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case discount

            case priceEffective = "price_effective"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.gstFee = gstFee

            self.pmPriceSplit = pmPriceSplit

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.identifiers = identifiers

            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.refundCredit = refundCredit

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.discount = discount

            self.priceEffective = priceEffective

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
