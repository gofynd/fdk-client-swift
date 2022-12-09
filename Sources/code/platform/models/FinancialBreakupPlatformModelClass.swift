

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var transferPrice: Int

        public var itemName: String

        public var couponValue: Int

        public var amountPaid: Int

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var gstTag: String

        public var discount: Int

        public var identifiers: Identifier

        public var promotionEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Int

        public var codCharges: Int

        public var valueOfGood: Int

        public var deliveryCharge: Int

        public var refundCredit: Int

        public var cashback: Int

        public var size: String

        public var fyndCredits: Int

        public var gstFee: String

        public var hsnCode: String

        public var brandCalculatedAmount: Int

        public var taxCollectedAtSource: Int?

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case discount

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case cashback

            case size

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.discount = discount

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.size = size

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}
