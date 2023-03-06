

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var gstTag: String

        public var cashback: Int

        public var fyndCredits: Int

        public var taxCollectedAtSource: Int?

        public var totalUnits: Int

        public var couponValue: Double

        public var size: String

        public var itemName: String

        public var valueOfGood: Double

        public var hsnCode: String

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var discount: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var gstFee: Double

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Int

        public var codCharges: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case identifiers

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case cashback

            case fyndCredits = "fynd_credits"

            case taxCollectedAtSource = "tax_collected_at_source"

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case size

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.size = size

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

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
        public var refundCredit: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var gstTag: String

        public var cashback: Int

        public var fyndCredits: Int

        public var taxCollectedAtSource: Int?

        public var totalUnits: Int

        public var couponValue: Double

        public var size: String

        public var itemName: String

        public var valueOfGood: Double

        public var hsnCode: String

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var discount: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var gstFee: Double

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Int

        public var codCharges: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case identifiers

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case cashback

            case fyndCredits = "fynd_credits"

            case taxCollectedAtSource = "tax_collected_at_source"

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case size

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.size = size

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
