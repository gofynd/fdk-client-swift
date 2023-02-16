

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var totalUnits: Int

        public var hsnCode: String

        public var priceEffective: Int

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var transferPrice: Int

        public var gstTag: String

        public var discount: Int

        public var refundCredit: Int

        public var cashback: Int

        public var valueOfGood: Double

        public var itemName: String

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var size: String

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var amountPaid: Double

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var promotionEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case discount

            case refundCredit = "refund_credit"

            case cashback

            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.discount = discount

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
        }
    }
}
