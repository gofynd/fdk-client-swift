

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var size: String

        public var gstTag: String

        public var deliveryCharge: Int

        public var cashback: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Int

        public var amountPaid: Int

        public var couponValue: Int

        public var identifiers: Identifier

        public var gstTaxPercentage: Int

        public var discount: Int

        public var hsnCode: String

        public var refundCredit: Int

        public var gstFee: String

        public var promotionEffectiveDiscount: Int

        public var priceMarked: Int

        public var transferPrice: Int

        public var totalUnits: Int

        public var pmPriceSplit: [String: Any]

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Int

        public var valueOfGood: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case cashback

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case identifiers

            case gstTaxPercentage = "gst_tax_percentage"

            case discount

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case totalUnits = "total_units"

            case pmPriceSplit = "pm_price_split"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.size = size

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.gstTaxPercentage = gstTaxPercentage

            self.discount = discount

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.totalUnits = totalUnits

            self.pmPriceSplit = pmPriceSplit

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            discount = try container.decode(Int.self, forKey: .discount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
