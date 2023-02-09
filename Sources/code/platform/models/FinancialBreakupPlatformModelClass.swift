

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var deliveryCharge: Int

        public var brandCalculatedAmount: Int

        public var codCharges: Int

        public var totalUnits: Int

        public var amountPaid: Int

        public var gstTaxPercentage: Int

        public var size: String

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var priceMarked: Int

        public var gstTag: String

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Int

        public var gstFee: String

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var cashback: Int

        public var hsnCode: String

        public var amountPaidRoundoff: Int?

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Int

        public var itemName: String

        public var discount: Int

        public var refundCredit: Int

        public var couponValue: Int

        public var valueOfGood: Int

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case size

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case cashback

            case hsnCode = "hsn_code"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case discount

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.size = size

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.hsnCode = hsnCode

            self.amountPaidRoundoff = amountPaidRoundoff

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.discount = discount

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            size = try container.decode(String.self, forKey: .size)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            discount = try container.decode(Int.self, forKey: .discount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
