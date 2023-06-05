

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: UserRegistered
         Used By: Cart
     */

    class UserRegistered: Codable {
        public var end: String?

        public var start: String?

        public enum CodingKeys: String, CodingKey {
            case end

            case start
        }

        public init(end: String? = nil, start: String? = nil) {
            self.end = end

            self.start = start
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(end, forKey: .end)

            try? container.encode(start, forKey: .start)
        }
    }
}
