

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponEffectiveDiscount: Double

        public var fyndCredits: Int

        public var discount: Int

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var refundCredit: Int

        public var identifiers: Identifier

        public var gstTaxPercentage: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var hsnCode: String

        public var itemName: String

        public var codCharges: Int

        public var valueOfGood: Double

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var transferPrice: Int

        public var gstFee: Double

        public var totalUnits: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case discount

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case identifiers

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case deliveryCharge = "delivery_charge"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.itemName = itemName

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponEffectiveDiscount: Double

        public var fyndCredits: Int

        public var discount: Int

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var refundCredit: Int

        public var identifiers: Identifier

        public var gstTaxPercentage: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var hsnCode: String

        public var itemName: String

        public var codCharges: Int

        public var valueOfGood: Double

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var transferPrice: Int

        public var gstFee: Double

        public var totalUnits: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case discount

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case identifiers

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case deliveryCharge = "delivery_charge"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.itemName = itemName

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
