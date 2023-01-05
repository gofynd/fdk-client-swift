

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformOrderDetailsPage
         Used By: Order
     */

    class PlatformOrderDetailsPage: Codable {
        public var next: String?

        public var previous: String?

        public enum CodingKeys: String, CodingKey {
            case next

            case previous
        }

        public init(next: String? = nil, previous: String? = nil) {
            self.next = next

            self.previous = previous
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                next = try container.decode(String.self, forKey: .next)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previous = try container.decode(String.self, forKey: .previous)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(previous, forKey: .previous)
        }
    }
}
