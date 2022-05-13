

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var mswipe: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var jiopay: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var epaylater: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case mswipe

            case bqrRazorpay = "bqr_razorpay"

            case jiopay

            case ccavenue

            case juspay

            case razorpay

            case stripe

            case fynd

            case simpl

            case rupifi

            case epaylater

            case upiRazorpay = "upi_razorpay"

            case payubiz
        }

        public init(bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            self.mswipe = mswipe

            self.bqrRazorpay = bqrRazorpay

            self.jiopay = jiopay

            self.ccavenue = ccavenue

            self.juspay = juspay

            self.razorpay = razorpay

            self.stripe = stripe

            self.fynd = fynd

            self.simpl = simpl

            self.rupifi = rupifi

            self.epaylater = epaylater

            self.upiRazorpay = upiRazorpay

            self.payubiz = payubiz
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
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

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
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)

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
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(simpl, forKey: .simpl)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(epaylater, forKey: .epaylater)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(payubiz, forKey: .payubiz)
        }
    }
}
