

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var size: String

        public var discount: Int

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var gstTag: String

        public var totalUnits: Int

        public var refundCredit: Int

        public var couponValue: Double

        public var priceMarked: Int

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var hsnCode: String

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"

            case identifiers

            case transferPrice = "transfer_price"

            case size

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.size = size

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var size: String

        public var discount: Int

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var gstTag: String

        public var totalUnits: Int

        public var refundCredit: Int

        public var couponValue: Double

        public var priceMarked: Int

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var hsnCode: String

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"

            case identifiers

            case transferPrice = "transfer_price"

            case size

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.size = size

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
