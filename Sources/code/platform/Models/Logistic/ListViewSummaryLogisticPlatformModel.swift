

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ListViewSummary
         Used By: Logistic
     */

    class ListViewSummary: Codable {
        public var totalActiveZones: Int

        public var totalZones: Int

        public var totalPincodesServed: Int

        public enum CodingKeys: String, CodingKey {
            case totalActiveZones = "total_active_zones"

            case totalZones = "total_zones"

            case totalPincodesServed = "total_pincodes_served"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalActiveZones = totalActiveZones

            self.totalZones = totalZones

            self.totalPincodesServed = totalPincodesServed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ListViewSummary
         Used By: Logistic
     */

    class ListViewSummary: Codable {
        public var totalActiveZones: Int

        public var totalZones: Int

        public var totalPincodesServed: Int

        public enum CodingKeys: String, CodingKey {
            case totalActiveZones = "total_active_zones"

            case totalZones = "total_zones"

            case totalPincodesServed = "total_pincodes_served"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalActiveZones = totalActiveZones

            self.totalZones = totalZones

            self.totalPincodesServed = totalPincodesServed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
        }
    }
}
