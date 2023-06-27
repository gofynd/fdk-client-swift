

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalZones: Int

        public var totalPincodesServed: Int

        public var totalActiveZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalZones = "total_zones"

            case totalPincodesServed = "total_pincodes_served"

            case totalActiveZones = "total_active_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalZones = totalZones

            self.totalPincodesServed = totalPincodesServed

            self.totalActiveZones = totalActiveZones
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)
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

        public var totalPincodesServed: Int

        public var totalActiveZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalZones = "total_zones"

            case totalPincodesServed = "total_pincodes_served"

            case totalActiveZones = "total_active_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalZones = totalZones

            self.totalPincodesServed = totalPincodesServed

            self.totalActiveZones = totalActiveZones
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)
        }
    }
}
