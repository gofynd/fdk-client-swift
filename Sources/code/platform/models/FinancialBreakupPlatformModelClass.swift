

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var promotionEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Int

        public var priceMarked: Int

        public var codCharges: Int

        public var valueOfGood: Int

        public var fyndCredits: Int

        public var totalUnits: Int

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var amountPaid: Int

        public var refundCredit: Int

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var couponValue: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var identifiers: Identifier

        public var gstFee: String

        public var hsnCode: String

        public var discount: Int

        public var itemName: String

        public var gstTag: String

        public var size: String

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var brandCalculatedAmount: Int

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case cashback

            case identifiers

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case discount

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case size

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.discount = discount

            self.itemName = itemName

            self.gstTag = gstTag

            self.size = size

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
