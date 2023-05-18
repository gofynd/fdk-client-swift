

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var hsnCode: String

        public var gstFee: Double

        public var size: String

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var cashback: Int

        public var gstTag: String

        public var itemName: String

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var valueOfGood: Double

        public var couponValue: Double

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case size

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case cashback

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.size = size

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.gstTag = gstTag

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

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
        public var refundCredit: Int

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var hsnCode: String

        public var gstFee: Double

        public var size: String

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var cashback: Int

        public var gstTag: String

        public var itemName: String

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var valueOfGood: Double

        public var couponValue: Double

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case size

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case cashback

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.size = size

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.gstTag = gstTag

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
