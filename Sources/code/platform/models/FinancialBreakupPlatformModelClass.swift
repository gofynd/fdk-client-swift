

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstFee: String

        public var gstTag: String

        public var totalUnits: Int

        public var amountPaid: Int

        public var fyndCredits: Int

        public var cashback: Int

        public var couponValue: Int

        public var refundCredit: Int

        public var discount: Int

        public var brandCalculatedAmount: Int

        public var transferPrice: Int

        public var itemName: String

        public var identifiers: Identifier

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var couponEffectiveDiscount: Int

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var size: String

        public var promotionEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var valueOfGood: Int

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case cashback

            case couponValue = "coupon_value"

            case refundCredit = "refund_credit"

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case identifiers

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstFee = gstFee

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.couponValue = couponValue

            self.refundCredit = refundCredit

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
