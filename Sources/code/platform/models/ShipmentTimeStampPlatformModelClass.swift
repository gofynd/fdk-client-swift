

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTimeStamp
         Used By: Order
     */

    class ShipmentTimeStamp: Codable {
        public var tMin: String?

        public var tMax: String?

        public enum CodingKeys: String, CodingKey {
            case tMin = "t_min"

            case tMax = "t_max"
        }

        public init(tMax: String? = nil, tMin: String? = nil) {
            self.tMin = tMin

            self.tMax = tMax
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tMin = try container.decode(String.self, forKey: .tMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tMax = try container.decode(String.self, forKey: .tMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tMin, forKey: .tMin)

            try? container.encodeIfPresent(tMax, forKey: .tMax)
        }
    }
}
