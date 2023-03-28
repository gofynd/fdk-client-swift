

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var rupifi: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var jiopay: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var mswipe: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var epaylater: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case rupifi

            case payubiz

            case upiRazorpay = "upi_razorpay"

            case fynd

            case jiopay

            case stripe

            case ccavenue

            case simpl

            case juspay

            case mswipe

            case bqrRazorpay = "bqr_razorpay"

            case razorpay

            case epaylater
        }

        public init(bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            self.rupifi = rupifi

            self.payubiz = payubiz

            self.upiRazorpay = upiRazorpay

            self.fynd = fynd

            self.jiopay = jiopay

            self.stripe = stripe

            self.ccavenue = ccavenue

            self.simpl = simpl

            self.juspay = juspay

            self.mswipe = mswipe

            self.bqrRazorpay = bqrRazorpay

            self.razorpay = razorpay

            self.epaylater = epaylater
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)

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
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)

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
                jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)

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
                ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)

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
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

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
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(simpl, forKey: .simpl)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(epaylater, forKey: .epaylater)
        }
    }
}
