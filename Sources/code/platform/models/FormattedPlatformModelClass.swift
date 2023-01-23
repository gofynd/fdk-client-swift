

import Foundation
public extension PlatformClient {
    /*
         Model: Formatted
         Used By: Order
     */

    class Formatted: Codable {
        public var fMax: String?

        public var fMin: String?

        public enum CodingKeys: String, CodingKey {
            case fMax = "f_max"

            case fMin = "f_min"
        }

        public init(fMax: String? = nil, fMin: String? = nil) {
            self.fMax = fMax

            self.fMin = fMin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fMax = try container.decode(String.self, forKey: .fMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fMin = try container.decode(String.self, forKey: .fMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fMax, forKey: .fMax)

            try? container.encodeIfPresent(fMin, forKey: .fMin)
        }
    }
}
