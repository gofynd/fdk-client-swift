

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var priceMarked: Int

        public var transferPrice: Int

        public var brandCalculatedAmount: Int

        public var gstTag: String

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var couponEffectiveDiscount: Int

        public var cashback: Int

        public var identifiers: Identifier

        public var itemName: String

        public var pmPriceSplit: [String: Any]

        public var totalUnits: Int

        public var discount: Int

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var deliveryCharge: Int

        public var couponValue: Int

        public var fyndCredits: Int

        public var amountPaid: Int

        public var cashbackApplied: Int

        public var gstFee: String

        public var addedToFyndCash: Bool

        public var valueOfGood: Int

        public var size: String

        public var gstTaxPercentage: Int

        public var promotionEffectiveDiscount: Int

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTag = "gst_tag"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case identifiers

            case itemName = "item_name"

            case pmPriceSplit = "pm_price_split"

            case totalUnits = "total_units"

            case discount

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTag = gstTag

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.identifiers = identifiers

            self.itemName = itemName

            self.pmPriceSplit = pmPriceSplit

            self.totalUnits = totalUnits

            self.discount = discount

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}
