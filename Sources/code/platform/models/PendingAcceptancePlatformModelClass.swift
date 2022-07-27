

import Foundation
public extension PlatformClient {
    /*
         Model: PendingAcceptance
         Used By: Orders
     */

    class PendingAcceptance: Codable {
        public var total: Int

        public var cod: Int

        public var prepaid: Int

        public enum CodingKeys: String, CodingKey {
            case total

            case cod

            case prepaid
        }

        public init(cod: Int, prepaid: Int, total: Int) {
            self.total = total

            self.cod = cod

            self.prepaid = prepaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            total = try container.decode(Int.self, forKey: .total)

            cod = try container.decode(Int.self, forKey: .cod)

            prepaid = try container.decode(Int.self, forKey: .prepaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(cod, forKey: .cod)

            try? container.encodeIfPresent(prepaid, forKey: .prepaid)
        }
    }
}
