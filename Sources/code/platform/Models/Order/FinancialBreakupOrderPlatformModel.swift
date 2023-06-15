

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var refundCredit: Int

        public var couponValue: Double

        public var cashback: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var identifiers: Identifier

        public var gstTag: String

        public var codCharges: Int

        public var gstFee: Double

        public var totalUnits: Int

        public var transferPrice: Int

        public var priceMarked: Int

        public var valueOfGood: Double

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var deliveryCharge: Double

        public var discount: Int

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case cashback

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case identifiers

            case gstTag = "gst_tag"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case discount

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.cashback = cashback

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var refundCredit: Int

        public var couponValue: Double

        public var cashback: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var identifiers: Identifier

        public var gstTag: String

        public var codCharges: Int

        public var gstFee: Double

        public var totalUnits: Int

        public var transferPrice: Int

        public var priceMarked: Int

        public var valueOfGood: Double

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var deliveryCharge: Double

        public var discount: Int

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case cashback

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case identifiers

            case gstTag = "gst_tag"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case discount

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.cashback = cashback

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
