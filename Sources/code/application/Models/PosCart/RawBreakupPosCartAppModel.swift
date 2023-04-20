

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: RawBreakup
         Used By: PosCart
     */
    class RawBreakup: Codable {
        public var coupon: Double?

        public var convenienceFee: Double?

        public var vog: Double?

        public var total: Double?

        public var gstCharges: Double?

        public var giftCard: Double?

        public var fyndCash: Double?

        public var codCharge: Double?

        public var mrpTotal: Double?

        public var subtotal: Double?

        public var youSaved: Double?

        public var discount: Double?

        public var deliveryCharge: Double?

        public enum CodingKeys: String, CodingKey {
            case coupon

            case convenienceFee = "convenience_fee"

            case vog

            case total

            case gstCharges = "gst_charges"

            case giftCard = "gift_card"

            case fyndCash = "fynd_cash"

            case codCharge = "cod_charge"

            case mrpTotal = "mrp_total"

            case subtotal

            case youSaved = "you_saved"

            case discount

            case deliveryCharge = "delivery_charge"
        }

        public init(codCharge: Double? = nil, convenienceFee: Double? = nil, coupon: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCash: Double? = nil, giftCard: Double? = nil, gstCharges: Double? = nil, mrpTotal: Double? = nil, subtotal: Double? = nil, total: Double? = nil, vog: Double? = nil, youSaved: Double? = nil) {
            self.coupon = coupon

            self.convenienceFee = convenienceFee

            self.vog = vog

            self.total = total

            self.gstCharges = gstCharges

            self.giftCard = giftCard

            self.fyndCash = fyndCash

            self.codCharge = codCharge

            self.mrpTotal = mrpTotal

            self.subtotal = subtotal

            self.youSaved = youSaved

            self.discount = discount

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(Double.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vog = try container.decode(Double.self, forKey: .vog)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCharges = try container.decode(Double.self, forKey: .gstCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftCard = try container.decode(Double.self, forKey: .giftCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharge = try container.decode(Double.self, forKey: .codCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtotal = try container.decode(Double.self, forKey: .subtotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                youSaved = try container.decode(Double.self, forKey: .youSaved)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)

            try? container.encodeIfPresent(vog, forKey: .vog)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)

            try? container.encodeIfPresent(giftCard, forKey: .giftCard)

            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)

            try? container.encodeIfPresent(codCharge, forKey: .codCharge)

            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(youSaved, forKey: .youSaved)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
