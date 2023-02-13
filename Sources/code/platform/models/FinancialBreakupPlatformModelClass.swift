

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var gstTag: String

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Int

        public var totalUnits: Int

        public var brandCalculatedAmount: Int

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var refundCredit: Int

        public var cashbackApplied: Int

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var itemName: String

        public var valueOfGood: Int

        public var taxCollectedAtSource: Int?

        public var amountPaid: Int

        public var size: String

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var cashback: Int

        public var pmPriceSplit: [String: Any]

        public var couponValue: Int

        public var hsnCode: String

        public var promotionEffectiveDiscount: Int

        public var priceMarked: Int

        public var transferPrice: Int

        public var gstFee: String

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case cashbackApplied = "cashback_applied"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case size

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case cashback

            case pmPriceSplit = "pm_price_split"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.pmPriceSplit = pmPriceSplit

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(String.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}
