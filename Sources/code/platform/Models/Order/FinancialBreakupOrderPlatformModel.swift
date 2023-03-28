

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var hsnCode: String

        public var identifiers: Identifier

        public var size: String

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var gstFee: Double

        public var codCharges: Int

        public var itemName: String

        public var transferPrice: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var discount: Int

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case hsnCode = "hsn_code"

            case identifiers

            case size

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case gstFee = "gst_fee"

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case discount

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.size = size

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.gstFee = gstFee

            self.codCharges = codCharges

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.discount = discount

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

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
        public var gstTag: String

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var hsnCode: String

        public var identifiers: Identifier

        public var size: String

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var gstFee: Double

        public var codCharges: Int

        public var itemName: String

        public var transferPrice: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var discount: Int

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case hsnCode = "hsn_code"

            case identifiers

            case size

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case gstFee = "gst_fee"

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case discount

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.size = size

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.gstFee = gstFee

            self.codCharges = codCharges

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.discount = discount

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
