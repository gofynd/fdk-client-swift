

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var identifiers: Identifier

        public var priceEffective: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var hsnCode: String

        public var gstFee: Double

        public var fyndCredits: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var cashback: Int

        public var size: String

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var valueOfGood: Double

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var codCharges: Int

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case priceEffective = "price_effective"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashback

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case valueOfGood = "value_of_good"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashback = cashback

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
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

        public var priceEffective: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var hsnCode: String

        public var gstFee: Double

        public var fyndCredits: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var cashback: Int

        public var size: String

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var valueOfGood: Double

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var codCharges: Int

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case priceEffective = "price_effective"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashback

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case valueOfGood = "value_of_good"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashback = cashback

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}
