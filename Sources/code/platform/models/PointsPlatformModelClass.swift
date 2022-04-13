import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Points
         Used By: Rewards
     */

    class Points: Codable {
        public var available: Double?

        public enum CodingKeys: String, CodingKey {
            case available
        }

        public init(available: Double?) {
            self.available = available
        }

        public func duplicate() -> Points {
            let dict = self.dictionary!
            let copy = Points(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                available = try container.decode(Double.self, forKey: .available)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(available, forKey: .available)
        }
    }
}
