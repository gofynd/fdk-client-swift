

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var gstTaxPercentage: Int

        public var cashback: Int

        public var hsnCode: String

        public var identifiers: Identifier

        public var itemName: String

        public var size: String

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var refundCredit: Int

        public var fyndCredits: Int

        public var transferPrice: Int

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var couponValue: Double

        public var codCharges: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case cashback

            case hsnCode = "hsn_code"

            case identifiers

            case itemName = "item_name"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.cashback = cashback

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.itemName = itemName

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var gstTaxPercentage: Int

        public var cashback: Int

        public var hsnCode: String

        public var identifiers: Identifier

        public var itemName: String

        public var size: String

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var refundCredit: Int

        public var fyndCredits: Int

        public var transferPrice: Int

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var couponValue: Double

        public var codCharges: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case cashback

            case hsnCode = "hsn_code"

            case identifiers

            case itemName = "item_name"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.cashback = cashback

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.itemName = itemName

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
