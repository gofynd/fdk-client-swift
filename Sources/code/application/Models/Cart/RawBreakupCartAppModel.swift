

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: RawBreakup
         Used By: Cart
     */
    class RawBreakup: Codable {
        public var convenienceFee: Double?

        public var deliveryCharge: Double?

        public var fyndCash: Double?

        public var coupon: Double?

        public var discount: Double?

        public var vog: Double?

        public var youSaved: Double?

        public var codCharge: Double?

        public var subtotal: Double?

        public var total: Double?

        public var mrpTotal: Double?

        public var gstCharges: Double?

        public enum CodingKeys: String, CodingKey {
            case convenienceFee = "convenience_fee"

            case deliveryCharge = "delivery_charge"

            case fyndCash = "fynd_cash"

            case coupon

            case discount

            case vog

            case youSaved = "you_saved"

            case codCharge = "cod_charge"

            case subtotal

            case total

            case mrpTotal = "mrp_total"

            case gstCharges = "gst_charges"
        }

        public init(codCharge: Double? = nil, convenienceFee: Double? = nil, coupon: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCash: Double? = nil, gstCharges: Double? = nil, mrpTotal: Double? = nil, subtotal: Double? = nil, total: Double? = nil, vog: Double? = nil, youSaved: Double? = nil) {
            self.convenienceFee = convenienceFee

            self.deliveryCharge = deliveryCharge

            self.fyndCash = fyndCash

            self.coupon = coupon

            self.discount = discount

            self.vog = vog

            self.youSaved = youSaved

            self.codCharge = codCharge

            self.subtotal = subtotal

            self.total = total

            self.mrpTotal = mrpTotal

            self.gstCharges = gstCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)

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

            do {
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(Double.self, forKey: .coupon)

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
                vog = try container.decode(Double.self, forKey: .vog)

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
                codCharge = try container.decode(Double.self, forKey: .codCharge)

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
                total = try container.decode(Double.self, forKey: .total)

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
                gstCharges = try container.decode(Double.self, forKey: .gstCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(vog, forKey: .vog)

            try? container.encodeIfPresent(youSaved, forKey: .youSaved)

            try? container.encodeIfPresent(codCharge, forKey: .codCharge)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)

            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
        }
    }
}
