

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var itemName: String

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var deliveryCharge: Double

        public var promotionEffectiveDiscount: Double

        public var gstFee: Double

        public var discount: Int

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var cashback: Int

        public var size: String

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var gstTag: String

        public var hsnCode: String

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var priceEffective: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case discount

            case fyndCredits = "fynd_credits"

            case identifiers

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case size

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.size = size

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var itemName: String

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var deliveryCharge: Double

        public var promotionEffectiveDiscount: Double

        public var gstFee: Double

        public var discount: Int

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var cashback: Int

        public var size: String

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var gstTag: String

        public var hsnCode: String

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var priceEffective: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case discount

            case fyndCredits = "fynd_credits"

            case identifiers

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case size

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.size = size

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
