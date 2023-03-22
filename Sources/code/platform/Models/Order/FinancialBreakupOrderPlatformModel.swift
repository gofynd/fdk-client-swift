

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var identifiers: Identifier

        public var itemName: String

        public var refundCredit: Int

        public var gstFee: Double

        public var hsnCode: String

        public var priceEffective: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var valueOfGood: Double

        public var couponEffectiveDiscount: Double

        public var priceMarked: Int

        public var gstTag: String

        public var totalUnits: Int

        public var promotionEffectiveDiscount: Double

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var deliveryCharge: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var couponValue: Double

        public var transferPrice: Int

        public var cashback: Int

        public var amountPaid: Double

        public var size: String

        public var discount: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemName = "item_name"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case cashback

            case amountPaid = "amount_paid"

            case size

            case discount

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.identifiers = identifiers

            self.itemName = itemName

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.size = size

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

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
        public var identifiers: Identifier

        public var itemName: String

        public var refundCredit: Int

        public var gstFee: Double

        public var hsnCode: String

        public var priceEffective: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var valueOfGood: Double

        public var couponEffectiveDiscount: Double

        public var priceMarked: Int

        public var gstTag: String

        public var totalUnits: Int

        public var promotionEffectiveDiscount: Double

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var deliveryCharge: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var couponValue: Double

        public var transferPrice: Int

        public var cashback: Int

        public var amountPaid: Double

        public var size: String

        public var discount: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemName = "item_name"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case cashback

            case amountPaid = "amount_paid"

            case size

            case discount

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.identifiers = identifiers

            self.itemName = itemName

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.size = size

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
