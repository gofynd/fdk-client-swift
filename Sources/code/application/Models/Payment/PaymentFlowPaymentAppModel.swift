

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var mswipe: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var epaylater: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var jiopay: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case mswipe

            case ccavenue

            case juspay

            case bqrRazorpay = "bqr_razorpay"

            case simpl

            case razorpay

            case epaylater

            case upiRazorpay = "upi_razorpay"

            case payubiz

            case jiopay

            case rupifi

            case stripe

            case fynd
        }

        public init(bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            self.mswipe = mswipe

            self.ccavenue = ccavenue

            self.juspay = juspay

            self.bqrRazorpay = bqrRazorpay

            self.simpl = simpl

            self.razorpay = razorpay

            self.epaylater = epaylater

            self.upiRazorpay = upiRazorpay

            self.payubiz = payubiz

            self.jiopay = jiopay

            self.rupifi = rupifi

            self.stripe = stripe

            self.fynd = fynd
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(simpl, forKey: .simpl)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(epaylater, forKey: .epaylater)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(fynd, forKey: .fynd)
        }
    }
}
