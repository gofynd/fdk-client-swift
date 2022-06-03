

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalPincodesServed: Int

        public var totalActiveZones: Int

        public var totalZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalPincodesServed = "total_pincodes_served"

            case totalActiveZones = "total_active_zones"

            case totalZones = "total_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalPincodesServed = totalPincodesServed

            self.totalActiveZones = totalActiveZones

            self.totalZones = totalZones
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalZones = try container.decode(Int.self, forKey: .totalZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
        }
    }
}
