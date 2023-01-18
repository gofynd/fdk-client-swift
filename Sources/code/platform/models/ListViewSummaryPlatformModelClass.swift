

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewSummary
         Used By: Logistic
     */

    class ListViewSummary: Codable {
        public var totalPincodesServed: Int

        public var totalZones: Int

        public var totalActiveZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalPincodesServed = "total_pincodes_served"

            case totalZones = "total_zones"

            case totalActiveZones = "total_active_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalPincodesServed = totalPincodesServed

            self.totalZones = totalZones

            self.totalActiveZones = totalActiveZones
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)
        }
    }
}
