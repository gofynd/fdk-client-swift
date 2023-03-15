

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetailsPaymentMethodsDataThreeDSecureUsage
         Used By: Billing
     */

    class InvoiceDetailsPaymentMethodsDataThreeDSecureUsage: Codable {
        public var supported: Bool?

        public enum CodingKeys: String, CodingKey {
            case supported
        }

        public init(supported: Bool? = nil) {
            self.supported = supported
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                supported = try container.decode(Bool.self, forKey: .supported)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(supported, forKey: .supported)
        }
    }
}
