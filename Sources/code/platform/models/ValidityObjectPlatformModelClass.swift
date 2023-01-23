

import Foundation
public extension PlatformClient {
    /*
         Model: ValidityObject
         Used By: Discount
     */

    class ValidityObject: Codable {
        public var start: String

        public var end: String

        public enum CodingKeys: String, CodingKey {
            case start

            case end
        }

        public init(end: String, start: String) {
            self.start = start

            self.end = end
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            start = try container.decode(String.self, forKey: .start)

            end = try container.decode(String.self, forKey: .end)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }
}
