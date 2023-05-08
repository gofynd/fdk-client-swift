

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var taxCollectedAtSource: Int?

        public var size: String

        public var couponEffectiveDiscount: Double

        public var refundCredit: Int

        public var cashbackApplied: Int

        public var codCharges: Int

        public var hsnCode: String

        public var gstTag: String

        public var totalUnits: Int

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var identifiers: Identifier

        public var gstFee: Double

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var priceMarked: Int

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var discount: Int

        public var cashback: Int

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var fyndCredits: Int

        public var priceEffective: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case size

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case identifiers

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case discount

            case cashback

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.size = size

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.discount = discount

            self.cashback = cashback

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var taxCollectedAtSource: Int?

        public var size: String

        public var couponEffectiveDiscount: Double

        public var refundCredit: Int

        public var cashbackApplied: Int

        public var codCharges: Int

        public var hsnCode: String

        public var gstTag: String

        public var totalUnits: Int

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var identifiers: Identifier

        public var gstFee: Double

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var priceMarked: Int

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var discount: Int

        public var cashback: Int

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var fyndCredits: Int

        public var priceEffective: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case size

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case identifiers

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case discount

            case cashback

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.size = size

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.discount = discount

            self.cashback = cashback

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
