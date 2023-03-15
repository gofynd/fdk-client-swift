

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderingStoreSelect
         Used By: Configuration
     */
    class OrderingStoreSelect: Codable {
        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case uid
        }

        public init(uid: Int) {
            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
