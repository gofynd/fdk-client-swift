

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var upiRazorpay: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var mswipe: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var epaylater: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var jiopay: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case upiRazorpay = "upi_razorpay"

            case simpl

            case payubiz

            case rupifi

            case mswipe

            case ccavenue

            case epaylater

            case razorpay

            case stripe

            case jiopay

            case bqrRazorpay = "bqr_razorpay"

            case fynd

            case juspay
        }

        public init(bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            self.upiRazorpay = upiRazorpay

            self.simpl = simpl

            self.payubiz = payubiz

            self.rupifi = rupifi

            self.mswipe = mswipe

            self.ccavenue = ccavenue

            self.epaylater = epaylater

            self.razorpay = razorpay

            self.stripe = stripe

            self.jiopay = jiopay

            self.bqrRazorpay = bqrRazorpay

            self.fynd = fynd

            self.juspay = juspay
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)

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
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)

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
                epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)

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
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

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
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

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

            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(simpl, forKey: .simpl)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(epaylater, forKey: .epaylater)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(juspay, forKey: .juspay)
        }
    }
}
