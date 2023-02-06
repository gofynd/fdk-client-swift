

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var itemName: String

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Int

        public var brandCalculatedAmount: Int

        public var transferPrice: Int

        public var couponValue: Int

        public var promotionEffectiveDiscount: Int

        public var codCharges: Int

        public var priceEffective: Int

        public var gstTag: String

        public var cashback: Int

        public var size: String

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var valueOfGood: Int

        public var identifiers: Identifier

        public var priceMarked: Int

        public var discount: Int

        public var cashbackApplied: Int

        public var amountPaidRoundoff: Int?

        public var amountPaid: Int

        public var gstFee: String

        public var hsnCode: String

        public var fyndCredits: Int

        public var pmPriceSplit: [String: Any]

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case gstTag = "gst_tag"

            case cashback

            case size

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case identifiers

            case priceMarked = "price_marked"

            case discount

            case cashbackApplied = "cashback_applied"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"

            case pmPriceSplit = "pm_price_split"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.refundCredit = refundCredit

            self.itemName = itemName

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.gstTag = gstTag

            self.cashback = cashback

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.priceMarked = priceMarked

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits

            self.pmPriceSplit = pmPriceSplit

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
