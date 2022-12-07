

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var fyndCredits: Int

        public var couponValue: Int

        public var addedToFyndCash: Bool

        public var priceEffective: Int

        public var identifiers: Identifier

        public var gstFee: String

        public var brandCalculatedAmount: Int

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var pmPriceSplit: [String: Any]

        public var codCharges: Int

        public var valueOfGood: Int

        public var promotionEffectiveDiscount: Int

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var amountPaid: Int

        public var couponEffectiveDiscount: Int

        public var itemName: String

        public var gstTag: String

        public var size: String

        public var totalUnits: Int

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case priceEffective = "price_effective"

            case identifiers

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case pmPriceSplit = "pm_price_split"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case size

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case cashback

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.priceEffective = priceEffective

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.pmPriceSplit = pmPriceSplit

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.itemName = itemName

            self.gstTag = gstTag

            self.size = size

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
