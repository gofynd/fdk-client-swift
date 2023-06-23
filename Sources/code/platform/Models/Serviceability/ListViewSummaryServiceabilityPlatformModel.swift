

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalZones: Int

        public var totalActiveZones: Int

        public var totalPincodesServed: Int

        public enum CodingKeys: String, CodingKey {
            case totalZones = "total_zones"

            case totalActiveZones = "total_active_zones"

            case totalPincodesServed = "total_pincodes_served"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalZones = totalZones

            self.totalActiveZones = totalActiveZones

            self.totalPincodesServed = totalPincodesServed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalZones: Int

        public var totalActiveZones: Int

        public var totalPincodesServed: Int

        public enum CodingKeys: String, CodingKey {
            case totalZones = "total_zones"

            case totalActiveZones = "total_active_zones"

            case totalPincodesServed = "total_pincodes_served"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalZones = totalZones

            self.totalActiveZones = totalActiveZones

            self.totalPincodesServed = totalPincodesServed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
        }
    }
}
