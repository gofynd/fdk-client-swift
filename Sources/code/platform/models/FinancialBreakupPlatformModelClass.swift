

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Int

        public var itemName: String

        public var gstTag: String

        public var codCharges: Int

        public var size: String

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Int

        public var amountPaidRoundoff: Int?

        public var amountPaid: Int

        public var cashback: Int

        public var pmPriceSplit: [String: Any]

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var promotionEffectiveDiscount: Int

        public var couponValue: Int

        public var transferPrice: Int

        public var cashbackApplied: Int

        public var discount: Int

        public var priceMarked: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var priceEffective: Int

        public var totalUnits: Int

        public var gstFee: String

        public var deliveryCharge: Int

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var valueOfGood: Int

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case codCharges = "cod_charges"

            case size

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case cashback

            case pmPriceSplit = "pm_price_split"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case cashbackApplied = "cashback_applied"

            case discount

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case totalUnits = "total_units"

            case gstFee = "gst_fee"

            case deliveryCharge = "delivery_charge"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.itemName = itemName

            self.gstTag = gstTag

            self.codCharges = codCharges

            self.size = size

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.pmPriceSplit = pmPriceSplit

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.totalUnits = totalUnits

            self.gstFee = gstFee

            self.deliveryCharge = deliveryCharge

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
