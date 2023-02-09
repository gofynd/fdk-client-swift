

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var transferPrice: Int

        public var discount: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var totalUnits: Int

        public var itemName: String

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var identifiers: Identifier

        public var pmPriceSplit: [String: Any]

        public var gstTaxPercentage: Int

        public var brandCalculatedAmount: Int

        public var promotionEffectiveDiscount: Int

        public var hsnCode: String

        public var couponValue: Int

        public var amountPaidRoundoff: Int?

        public var amountPaid: Int

        public var gstTag: String

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var valueOfGood: Int

        public var gstFee: String

        public var couponEffectiveDiscount: Int

        public var size: String

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case discount

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case identifiers

            case pmPriceSplit = "pm_price_split"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case hsnCode = "hsn_code"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case cashback

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.transferPrice = transferPrice

            self.discount = discount

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.identifiers = identifiers

            self.pmPriceSplit = pmPriceSplit

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.hsnCode = hsnCode

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
