

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Int

        public var hsnCode: String

        public var gstTag: String

        public var cashback: Int

        public var promotionEffectiveDiscount: Int

        public var deliveryCharge: Int

        public var couponValue: Int

        public var size: String

        public var brandCalculatedAmount: Int

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var fyndCredits: Int

        public var priceMarked: Int

        public var refundCredit: Int

        public var transferPrice: Int

        public var pmPriceSplit: [String: Any]

        public var identifiers: Identifier

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var totalUnits: Int

        public var amountPaid: Int

        public var valueOfGood: Int

        public var itemName: String

        public var gstFee: String

        public enum CodingKeys: String, CodingKey {
            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case size

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case transferPrice = "transfer_price"

            case pmPriceSplit = "pm_price_split"

            case identifiers

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case gstFee = "gst_fee"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.size = size

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.transferPrice = transferPrice

            self.pmPriceSplit = pmPriceSplit

            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(String.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}
