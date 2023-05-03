

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var discount: Int

        public var totalUnits: Int

        public var couponValue: Double

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var priceMarked: Int

        public var amountPaid: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var gstFee: Double

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case discount

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.discount = discount

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var discount: Int

        public var totalUnits: Int

        public var couponValue: Double

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var priceMarked: Int

        public var amountPaid: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var gstFee: Double

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case discount

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.discount = discount

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
