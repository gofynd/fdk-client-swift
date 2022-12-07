

import Foundation
public extension PlatformClient {
    /*
         Model: Formatted
         Used By: Orders
     */

    class Formatted: Codable {
        public var fMin: String?

        public var fMax: String?

        public enum CodingKeys: String, CodingKey {
            case fMin = "f_min"

            case fMax = "f_max"
        }

        public init(fMax: String? = nil, fMin: String? = nil) {
            self.fMin = fMin

            self.fMax = fMax
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fMin = try container.decode(String.self, forKey: .fMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fMax = try container.decode(String.self, forKey: .fMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fMin, forKey: .fMin)

            try? container.encodeIfPresent(fMax, forKey: .fMax)
        }
    }
}
