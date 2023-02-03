

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var size: String

        public var gstFee: String

        public var cashback: Int

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public var totalUnits: Int

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Int

        public var itemName: String

        public var priceEffective: Int

        public var amountPaid: Int

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var couponValue: Int

        public var identifiers: Identifier

        public var refundCredit: Int

        public var hsnCode: String

        public var valueOfGood: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var fyndCredits: Int

        public var pmPriceSplit: [String: Any]

        public var promotionEffectiveDiscount: Int

        public var taxCollectedAtSource: Int?

        public var transferPrice: Int

        public var brandCalculatedAmount: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case gstFee = "gst_fee"

            case cashback

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case identifiers

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case pmPriceSplit = "pm_price_split"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.size = size

            self.gstFee = gstFee

            self.cashback = cashback

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.pmPriceSplit = pmPriceSplit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            cashback = try container.decode(Int.self, forKey: .cashback)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
