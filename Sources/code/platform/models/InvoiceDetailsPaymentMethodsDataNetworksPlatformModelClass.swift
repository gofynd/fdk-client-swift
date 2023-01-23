

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetailsPaymentMethodsDataNetworks
         Used By: Billing
     */

    class InvoiceDetailsPaymentMethodsDataNetworks: Codable {
        public var available: [String]?

        public var preferred: String?

        public enum CodingKeys: String, CodingKey {
            case available

            case preferred
        }

        public init(available: [String]? = nil, preferred: String? = nil) {
            self.available = available

            self.preferred = preferred
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                available = try container.decode([String].self, forKey: .available)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                preferred = try container.decode(String.self, forKey: .preferred)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(available, forKey: .available)

            try? container.encodeIfPresent(preferred, forKey: .preferred)
        }
    }
}
