

import Foundation
public extension ApplicationClient {
    /*
         Model: Promise
         Used By: Order
     */
    class Promise: Codable {
        public var timestamp: Timestamp?

        public enum CodingKeys: String, CodingKey {
            case timestamp
        }

        public init(timestamp: Timestamp? = nil) {
            self.timestamp = timestamp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timestamp = try container.decode(Timestamp.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }
}
