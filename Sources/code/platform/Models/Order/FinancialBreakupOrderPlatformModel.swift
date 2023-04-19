

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var gstFee: Double

        public var priceMarked: Int

        public var codCharges: Int

        public var hsnCode: String

        public var priceEffective: Int

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public var size: String

        public var fyndCredits: Int

        public var itemName: String

        public var gstTag: String

        public var cashback: Int

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var totalUnits: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case size

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case cashback

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case identifiers

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.size = size

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.gstTag = gstTag

            self.cashback = cashback

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

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
        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var gstFee: Double

        public var priceMarked: Int

        public var codCharges: Int

        public var hsnCode: String

        public var priceEffective: Int

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public var size: String

        public var fyndCredits: Int

        public var itemName: String

        public var gstTag: String

        public var cashback: Int

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var totalUnits: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case size

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case cashback

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case identifiers

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.size = size

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.gstTag = gstTag

            self.cashback = cashback

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
