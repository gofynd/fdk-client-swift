

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var promotionEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var refundCredit: Int

        public var itemName: String

        public var fyndCredits: Int

        public var gstTag: String

        public var priceMarked: Int

        public var size: String

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var hsnCode: String

        public var couponEffectiveDiscount: Double

        public var taxCollectedAtSource: Int?

        public var cashback: Int

        public var discount: Int

        public var valueOfGood: Double

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case size

            case identifiers

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashback

            case discount

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.size = size

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashback = cashback

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var promotionEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var refundCredit: Int

        public var itemName: String

        public var fyndCredits: Int

        public var gstTag: String

        public var priceMarked: Int

        public var size: String

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var hsnCode: String

        public var couponEffectiveDiscount: Double

        public var taxCollectedAtSource: Int?

        public var cashback: Int

        public var discount: Int

        public var valueOfGood: Double

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case size

            case identifiers

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashback

            case discount

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.size = size

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashback = cashback

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
