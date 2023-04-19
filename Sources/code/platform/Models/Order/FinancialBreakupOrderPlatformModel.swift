

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var gstTag: String

        public var size: String

        public var couponValue: Double

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var deliveryCharge: Int

        public var hsnCode: String

        public var cashbackApplied: Int

        public var discount: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var totalUnits: Int

        public var identifiers: Identifier

        public var cashback: Int

        public var itemName: String

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case size

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case hsnCode = "hsn_code"

            case cashbackApplied = "cashback_applied"

            case discount

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case identifiers

            case cashback

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.size = size

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.hsnCode = hsnCode

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.cashback = cashback

            self.itemName = itemName

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashback = try container.decode(Int.self, forKey: .cashback)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var gstTag: String

        public var size: String

        public var couponValue: Double

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var deliveryCharge: Int

        public var hsnCode: String

        public var cashbackApplied: Int

        public var discount: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var totalUnits: Int

        public var identifiers: Identifier

        public var cashback: Int

        public var itemName: String

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case size

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case hsnCode = "hsn_code"

            case cashbackApplied = "cashback_applied"

            case discount

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case identifiers

            case cashback

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.size = size

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.hsnCode = hsnCode

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.cashback = cashback

            self.itemName = itemName

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashback = try container.decode(Int.self, forKey: .cashback)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
