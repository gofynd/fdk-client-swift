

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ShipmentPayment
         Used By: Order
     */
    class ShipmentPayment: Codable {
        public var mop: String?

        public var status: String?

        public var mode: String?

        public var displayName: String?

        public var logo: String?

        public var paymentMode: String?

        public enum CodingKeys: String, CodingKey {
            case mop

            case status

            case mode

            case displayName = "display_name"

            case logo

            case paymentMode = "payment_mode"
        }

        public init(displayName: String? = nil, logo: String? = nil, mode: String? = nil, mop: String? = nil, paymentMode: String? = nil, status: String? = nil) {
            self.mop = mop

            self.status = status

            self.mode = mode

            self.displayName = displayName

            self.logo = logo

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mop = try container.decode(String.self, forKey: .mop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mop, forKey: .mop)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
