

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponEffectiveDiscount: Double

        public var amountPaid: Double

        public var cashbackApplied: Int

        public var size: String

        public var gstFee: Double

        public var gstTag: String

        public var totalUnits: Int

        public var priceMarked: Int

        public var cashback: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var couponValue: Double

        public var hsnCode: String

        public var refundCredit: Int

        public var identifiers: Identifier

        public var priceEffective: Int

        public var deliveryCharge: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var codCharges: Int

        public var transferPrice: Int

        public var discount: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case size

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case cashback

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case identifiers

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
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

        public var amountPaid: Double

        public var cashbackApplied: Int

        public var size: String

        public var gstFee: Double

        public var gstTag: String

        public var totalUnits: Int

        public var priceMarked: Int

        public var cashback: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var couponValue: Double

        public var hsnCode: String

        public var refundCredit: Int

        public var identifiers: Identifier

        public var priceEffective: Int

        public var deliveryCharge: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var codCharges: Int

        public var transferPrice: Int

        public var discount: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case size

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case cashback

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case identifiers

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
