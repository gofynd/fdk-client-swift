

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionInvoiceSettings
         Used By: Billing
     */

    class SubscriptionInvoiceSettings: Codable {
        public var generation: Bool?

        public var charging: Bool?

        public enum CodingKeys: String, CodingKey {
            case generation

            case charging
        }

        public init(charging: Bool? = nil, generation: Bool? = nil) {
            self.generation = generation

            self.charging = charging
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                generation = try container.decode(Bool.self, forKey: .generation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charging = try container.decode(Bool.self, forKey: .charging)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(generation, forKey: .generation)

            try? container.encodeIfPresent(charging, forKey: .charging)
        }
    }
}
