

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTaxPercentage: Int

        public var itemName: String

        public var size: String

        public var transferPrice: Int

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var discount: Int

        public var gstTag: String

        public var fyndCredits: Int

        public var totalUnits: Int

        public var identifiers: Identifier

        public var couponEffectiveDiscount: Double

        public var priceEffective: Int

        public var taxCollectedAtSource: Int?

        public var valueOfGood: Double

        public var codCharges: Int

        public var deliveryCharge: Double

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var refundCredit: Int

        public var gstFee: Double

        public var cashbackApplied: Int

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case size

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case discount

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case identifiers

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.size = size

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.discount = discount

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTaxPercentage: Int

        public var itemName: String

        public var size: String

        public var transferPrice: Int

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var discount: Int

        public var gstTag: String

        public var fyndCredits: Int

        public var totalUnits: Int

        public var identifiers: Identifier

        public var couponEffectiveDiscount: Double

        public var priceEffective: Int

        public var taxCollectedAtSource: Int?

        public var valueOfGood: Double

        public var codCharges: Int

        public var deliveryCharge: Double

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var refundCredit: Int

        public var gstFee: Double

        public var cashbackApplied: Int

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case size

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case discount

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case identifiers

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.size = size

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.discount = discount

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}
