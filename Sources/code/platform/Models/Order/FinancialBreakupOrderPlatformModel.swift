

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var taxCollectedAtSource: Int?

        public var gstTaxPercentage: Int

        public var amountPaidRoundoff: Int?

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var amountPaid: Double

        public var identifiers: Identifier

        public var couponEffectiveDiscount: Double

        public var cashback: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var addedToFyndCash: Bool

        public var gstTag: String

        public var priceMarked: Int

        public var couponValue: Double

        public var itemName: String

        public var transferPrice: Int

        public var size: String

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var totalUnits: Int

        public var refundCredit: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case identifiers

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case size

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.identifiers = identifiers

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.size = size

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

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
        public var taxCollectedAtSource: Int?

        public var gstTaxPercentage: Int

        public var amountPaidRoundoff: Int?

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var amountPaid: Double

        public var identifiers: Identifier

        public var couponEffectiveDiscount: Double

        public var cashback: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var addedToFyndCash: Bool

        public var gstTag: String

        public var priceMarked: Int

        public var couponValue: Double

        public var itemName: String

        public var transferPrice: Int

        public var size: String

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var totalUnits: Int

        public var refundCredit: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case identifiers

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case size

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.identifiers = identifiers

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.size = size

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}
