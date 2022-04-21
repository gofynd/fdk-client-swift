

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentSelectionLock
         Used By: Configuration
     */

    class PaymentSelectionLock: Codable {
        public var enabled: Bool?

        public var defaultOptions: String?

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case defaultOptions = "default_options"

            case paymentIdentifier = "payment_identifier"
        }

        public init(defaultOptions: String? = nil, enabled: Bool? = nil, paymentIdentifier: String? = nil) {
            self.enabled = enabled

            self.defaultOptions = defaultOptions

            self.paymentIdentifier = paymentIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultOptions = try container.decode(String.self, forKey: .defaultOptions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(defaultOptions, forKey: .defaultOptions)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
