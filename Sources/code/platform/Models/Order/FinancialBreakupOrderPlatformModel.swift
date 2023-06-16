

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var itemName: String

        public var gstTag: String

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var priceMarked: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var deliveryCharge: Double

        public var gstTaxPercentage: Int

        public var promotionEffectiveDiscount: Double

        public var size: String

        public var amountPaid: Double

        public var codCharges: Int

        public var discount: Int

        public var transferPrice: Int

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var refundCredit: Int

        public var cashback: Int

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case discount

            case transferPrice = "transfer_price"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case refundCredit = "refund_credit"

            case cashback

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.discount = discount

            self.transferPrice = transferPrice

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

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
        public var valueOfGood: Double

        public var itemName: String

        public var gstTag: String

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var priceMarked: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var deliveryCharge: Double

        public var gstTaxPercentage: Int

        public var promotionEffectiveDiscount: Double

        public var size: String

        public var amountPaid: Double

        public var codCharges: Int

        public var discount: Int

        public var transferPrice: Int

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var refundCredit: Int

        public var cashback: Int

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case discount

            case transferPrice = "transfer_price"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case refundCredit = "refund_credit"

            case cashback

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.discount = discount

            self.transferPrice = transferPrice

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}
