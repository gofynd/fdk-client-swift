

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var juspay: AggregatorRoute?

        public var jiopay: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var epaylater: AggregatorRoute?

        public var ajiodhan: AggregatorRoute?

        public var mswipe: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case juspay

            case jiopay

            case fynd

            case epaylater

            case ajiodhan

            case mswipe

            case razorpay

            case payubiz

            case rupifi

            case stripe

            case upiRazorpay = "upi_razorpay"

            case bqrRazorpay = "bqr_razorpay"

            case ccavenue

            case simpl
        }

        public init(ajiodhan: AggregatorRoute? = nil, bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            self.juspay = juspay

            self.jiopay = jiopay

            self.fynd = fynd

            self.epaylater = epaylater

            self.ajiodhan = ajiodhan

            self.mswipe = mswipe

            self.razorpay = razorpay

            self.payubiz = payubiz

            self.rupifi = rupifi

            self.stripe = stripe

            self.upiRazorpay = upiRazorpay

            self.bqrRazorpay = bqrRazorpay

            self.ccavenue = ccavenue

            self.simpl = simpl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

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
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)

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
                ajiodhan = try container.decode(AggregatorRoute.self, forKey: .ajiodhan)

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
                razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)

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
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

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
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(epaylater, forKey: .epaylater)

            try? container.encode(ajiodhan, forKey: .ajiodhan)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(simpl, forKey: .simpl)
        }
    }
}
