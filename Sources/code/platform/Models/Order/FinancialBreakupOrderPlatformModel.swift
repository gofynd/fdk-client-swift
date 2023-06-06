

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var totalUnits: Int

        public var discount: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var refundCredit: Int

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var size: String

        public var valueOfGood: Double

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var couponEffectiveDiscount: Double

        public var fyndCredits: Int

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var hsnCode: String

        public var amountPaid: Double

        public var cashback: Int

        public var cashbackApplied: Int

        public var itemName: String

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case size

            case valueOfGood = "value_of_good"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case cashback

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.totalUnits = totalUnits

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.valueOfGood = valueOfGood

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var totalUnits: Int

        public var discount: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var refundCredit: Int

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var size: String

        public var valueOfGood: Double

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var couponEffectiveDiscount: Double

        public var fyndCredits: Int

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var hsnCode: String

        public var amountPaid: Double

        public var cashback: Int

        public var cashbackApplied: Int

        public var itemName: String

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case size

            case valueOfGood = "value_of_good"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case cashback

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.totalUnits = totalUnits

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.valueOfGood = valueOfGood

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
