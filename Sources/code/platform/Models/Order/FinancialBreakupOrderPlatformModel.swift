

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var fyndCredits: Int

        public var identifiers: Identifier

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var size: String

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var gstTag: String

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var amountPaid: Double

        public var itemName: String

        public var priceMarked: Int

        public var couponValue: Double

        public var codCharges: Int

        public var refundCredit: Int

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var priceEffective: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case identifiers

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case itemName = "item_name"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case priceEffective = "price_effective"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.itemName = itemName

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.priceEffective = priceEffective

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

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
        public var fyndCredits: Int

        public var identifiers: Identifier

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var size: String

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var gstTag: String

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var amountPaid: Double

        public var itemName: String

        public var priceMarked: Int

        public var couponValue: Double

        public var codCharges: Int

        public var refundCredit: Int

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var priceEffective: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case identifiers

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case itemName = "item_name"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case priceEffective = "price_effective"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.itemName = itemName

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.priceEffective = priceEffective

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
