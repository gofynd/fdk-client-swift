import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: EntityChargeRecurring
         Used By: Billing
     */

    class EntityChargeRecurring: Codable {
        public var interval: String

        public enum CodingKeys: String, CodingKey {
            case interval
        }

        public init(interval: String) {
            self.interval = interval
        }

        public func duplicate() -> EntityChargeRecurring {
            let dict = self.dictionary!
            let copy = EntityChargeRecurring(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            interval = try container.decode(String.self, forKey: .interval)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(interval, forKey: .interval)
        }
    }
}
