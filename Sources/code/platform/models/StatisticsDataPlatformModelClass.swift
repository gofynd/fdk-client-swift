

import Foundation
public extension PlatformClient {
    /*
         Model: StatisticsData
         Used By: Payment
     */

    class StatisticsData: Codable {
        public var filterOptions: [String: Any]

        public var inactiveDeviceCount: Int

        public var storeCount: Int

        public var activeDeviceCount: Int

        public enum CodingKeys: String, CodingKey {
            case filterOptions = "filter_options"

            case inactiveDeviceCount = "inactive_device_count"

            case storeCount = "store_count"

            case activeDeviceCount = "active_device_count"
        }

        public init(activeDeviceCount: Int, filterOptions: [String: Any], inactiveDeviceCount: Int, storeCount: Int) {
            self.filterOptions = filterOptions

            self.inactiveDeviceCount = inactiveDeviceCount

            self.storeCount = storeCount

            self.activeDeviceCount = activeDeviceCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filterOptions = try container.decode([String: Any].self, forKey: .filterOptions)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            storeCount = try container.decode(Int.self, forKey: .storeCount)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filterOptions, forKey: .filterOptions)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(storeCount, forKey: .storeCount)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)
        }
    }
}
