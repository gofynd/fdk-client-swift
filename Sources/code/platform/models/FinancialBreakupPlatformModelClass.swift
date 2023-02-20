

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var transferPrice: Int

        public var size: String

        public var totalUnits: Int

        public var hsnCode: String

        public var amountPaid: Double

        public var identifiers: Identifier

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var fyndCredits: Int

        public var cashback: Int

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public var deliveryCharge: Int

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var discount: Int

        public var gstTag: String

        public var refundCredit: Int

        public var valueOfGood: Double

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case size

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case identifiers

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case discount

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.transferPrice = transferPrice

            self.size = size

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.discount = discount

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
