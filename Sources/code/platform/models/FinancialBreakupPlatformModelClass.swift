

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaid: Int

        public var taxCollectedAtSource: Int?

        public var brandCalculatedAmount: Int

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var valueOfGood: Int

        public var codCharges: Int

        public var gstFee: String

        public var totalUnits: Int

        public var gstTag: String

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var size: String

        public var itemName: String

        public var priceMarked: Int

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var promotionEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var cashback: Int

        public var discount: Int

        public var couponEffectiveDiscount: Int

        public var refundCredit: Int

        public var couponValue: Int

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case size

            case itemName = "item_name"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashback

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.amountPaid = amountPaid

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.size = size

            self.itemName = itemName

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.cashback = cashback

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
