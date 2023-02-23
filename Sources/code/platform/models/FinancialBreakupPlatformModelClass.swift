

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var deliveryCharge: Int

        public var gstFee: Double

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var gstTag: String

        public var cashbackApplied: Int

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var taxCollectedAtSource: Int?

        public var cashback: Int

        public var promotionEffectiveDiscount: Double

        public var couponEffectiveDiscount: Double

        public var codCharges: Int

        public var identifiers: Identifier

        public var amountPaid: Double

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var itemName: String

        public var refundCredit: Int

        public var totalUnits: Int

        public var couponValue: Double

        public var priceEffective: Int

        public var priceMarked: Int

        public var transferPrice: Int

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case cashbackApplied = "cashback_applied"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case identifiers

            case amountPaid = "amount_paid"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case itemName = "item_name"

            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.itemName = itemName

            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            itemName = try container.decode(String.self, forKey: .itemName)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
