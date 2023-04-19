

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var size: String

        public var identifiers: Identifier

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var couponValue: Double

        public var transferPrice: Int

        public var priceMarked: Int

        public var discount: Int

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int?

        public var amountPaid: Double

        public var priceEffective: Int

        public var hsnCode: String

        public var valueOfGood: Double

        public var cashback: Int

        public var refundCredit: Int

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case size

            case identifiers

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case discount

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case cashback

            case refundCredit = "refund_credit"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.identifiers = identifiers

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.discount = discount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

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
        public var gstTag: String

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var size: String

        public var identifiers: Identifier

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var couponValue: Double

        public var transferPrice: Int

        public var priceMarked: Int

        public var discount: Int

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int?

        public var amountPaid: Double

        public var priceEffective: Int

        public var hsnCode: String

        public var valueOfGood: Double

        public var cashback: Int

        public var refundCredit: Int

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case size

            case identifiers

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case discount

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case cashback

            case refundCredit = "refund_credit"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.identifiers = identifiers

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.discount = discount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
