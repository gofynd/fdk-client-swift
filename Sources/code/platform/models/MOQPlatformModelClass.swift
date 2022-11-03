

import Foundation
public extension PlatformClient {
    /*
         Model: MOQ
         Used By: Catalog
     */

    class MOQ: Codable {
        public var incrementUnit: Int?

        public var minimum: Int?

        public var maximum: Int?

        public enum CodingKeys: String, CodingKey {
            case incrementUnit = "increment_unit"

            case minimum

            case maximum
        }

        public init(incrementUnit: Int? = nil, maximum: Int? = nil, minimum: Int? = nil) {
            self.incrementUnit = incrementUnit

            self.minimum = minimum

            self.maximum = maximum
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                incrementUnit = try container.decode(Int.self, forKey: .incrementUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(incrementUnit, forKey: .incrementUnit)

            try? container.encodeIfPresent(minimum, forKey: .minimum)

            try? container.encodeIfPresent(maximum, forKey: .maximum)
        }
    }
}
