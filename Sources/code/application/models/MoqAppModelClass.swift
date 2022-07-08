

import Foundation
public extension ApplicationClient {
    /*
         Model: Moq
         Used By: Catalog
     */
    class Moq: Codable {
        public var minimum: Int?

        public var maximum: Int?

        public enum CodingKeys: String, CodingKey {
            case minimum

            case maximum
        }

        public init(maximum: Int? = nil, minimum: Int? = nil) {
            self.minimum = minimum

            self.maximum = maximum
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minimum = try container.decode(Int.self, forKey: .minimum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maximum = try container.decode(Int.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minimum, forKey: .minimum)

            try? container.encodeIfPresent(maximum, forKey: .maximum)
        }
    }
}
