

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var couponValue: Int

        public var gstTaxPercentage: Int

        public var itemName: String

        public var amountPaid: Int

        public var promotionEffectiveDiscount: Int

        public var size: String

        public var totalUnits: Int

        public var priceMarked: Int

        public var gstFee: String

        public var valueOfGood: Int

        public var discount: Int

        public var refundCredit: Int

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var transferPrice: Int

        public var fyndCredits: Int

        public var brandCalculatedAmount: Int

        public var gstTag: String

        public var couponEffectiveDiscount: Int

        public var codCharges: Int

        public var pmPriceSplit: [String: Any]

        public var amountPaidRoundoff: Int?

        public var cashback: Int

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case discount

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case pmPriceSplit = "pm_price_split"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashback

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.pmPriceSplit = pmPriceSplit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashback = cashback

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
