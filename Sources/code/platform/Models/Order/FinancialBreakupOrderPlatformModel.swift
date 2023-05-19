

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var gstFee: Double

        public var identifiers: Identifier

        public var amountPaid: Double

        public var cashback: Int

        public var transferPrice: Int

        public var hsnCode: String

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var itemName: String

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var cashbackApplied: Int

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Double

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case gstFee = "gst_fee"

            case identifiers

            case amountPaid = "amount_paid"

            case cashback

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.itemName = itemName

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

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
        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var gstFee: Double

        public var identifiers: Identifier

        public var amountPaid: Double

        public var cashback: Int

        public var transferPrice: Int

        public var hsnCode: String

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var itemName: String

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var cashbackApplied: Int

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Double

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case gstFee = "gst_fee"

            case identifiers

            case amountPaid = "amount_paid"

            case cashback

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.itemName = itemName

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}
