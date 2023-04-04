

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var discount: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var size: String

        public var cashback: Int

        public var refundCredit: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var couponValue: Double

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var itemName: String

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case discount

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case size

            case cashback

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.discount = discount

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.size = size

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.itemName = itemName

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            itemName = try container.decode(String.self, forKey: .itemName)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

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
        public var cashbackApplied: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var discount: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var size: String

        public var cashback: Int

        public var refundCredit: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var couponValue: Double

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var itemName: String

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case discount

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case size

            case cashback

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.discount = discount

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.size = size

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.itemName = itemName

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            itemName = try container.decode(String.self, forKey: .itemName)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
