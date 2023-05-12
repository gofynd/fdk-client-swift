

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalActiveZones: Int

        public var totalPincodesServed: Int

        public var totalZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalActiveZones = "total_active_zones"

            case totalPincodesServed = "total_pincodes_served"

            case totalZones = "total_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalActiveZones = totalActiveZones

            self.totalPincodesServed = totalPincodesServed

            self.totalZones = totalZones
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalZones = try container.decode(Int.self, forKey: .totalZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalActiveZones: Int

        public var totalPincodesServed: Int

        public var totalZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalActiveZones = "total_active_zones"

            case totalPincodesServed = "total_pincodes_served"

            case totalZones = "total_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalActiveZones = totalActiveZones

            self.totalPincodesServed = totalPincodesServed

            self.totalZones = totalZones
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalZones = try container.decode(Int.self, forKey: .totalZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
        }
    }
}
