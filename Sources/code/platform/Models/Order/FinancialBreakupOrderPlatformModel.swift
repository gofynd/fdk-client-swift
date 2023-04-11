

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var codCharges: Int

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var priceMarked: Int

        public var cashback: Int

        public var amountPaid: Double

        public var fyndCredits: Int

        public var totalUnits: Int

        public var priceEffective: Int

        public var refundCredit: Int

        public var couponValue: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Int

        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Double

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var size: String

        public var discount: Int

        public var itemName: String

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case cashback

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case size

            case discount

            case itemName = "item_name"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.size = size

            self.discount = discount

            self.itemName = itemName

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

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
        public var valueOfGood: Double

        public var codCharges: Int

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var priceMarked: Int

        public var cashback: Int

        public var amountPaid: Double

        public var fyndCredits: Int

        public var totalUnits: Int

        public var priceEffective: Int

        public var refundCredit: Int

        public var couponValue: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Int

        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Double

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var size: String

        public var discount: Int

        public var itemName: String

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case cashback

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case size

            case discount

            case itemName = "item_name"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.size = size

            self.discount = discount

            self.itemName = itemName

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
