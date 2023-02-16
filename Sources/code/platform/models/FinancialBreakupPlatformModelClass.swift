

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var totalUnits: Int

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var refundCredit: Int

        public var codCharges: Int

        public var hsnCode: String

        public var gstFee: Double

        public var couponValue: Double

        public var transferPrice: Int

        public var gstTag: String

        public var taxCollectedAtSource: Int?

        public var valueOfGood: Double

        public var amountPaid: Double

        public var cashback: Int

        public var promotionEffectiveDiscount: Double

        public var size: String

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case discount

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case refundCredit = "refund_credit"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.discount = discount

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.refundCredit = refundCredit

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
