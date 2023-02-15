

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var totalUnits: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var itemName: String

        public var cashback: Int

        public var discount: Int

        public var gstTaxPercentage: Int

        public var valueOfGood: Double

        public var transferPrice: Int

        public var gstFee: Double

        public var gstTag: String

        public var amountPaid: Double

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var size: String

        public var addedToFyndCash: Bool

        public var deliveryCharge: Int

        public var codCharges: Int

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case itemName = "item_name"

            case cashback

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.totalUnits = totalUnits

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.itemName = itemName

            self.cashback = cashback

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
