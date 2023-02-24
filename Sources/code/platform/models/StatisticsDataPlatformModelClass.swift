

import Foundation
public extension PlatformClient {
    /*
         Model: StatisticsData
         Used By: Payment
     */

    class StatisticsData: Codable {
        public var activeDeviceCount: Int

        public var storeCount: Int

        public var inactiveDeviceCount: Int

        public var filterOptions: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case activeDeviceCount = "active_device_count"

            case storeCount = "store_count"

            case inactiveDeviceCount = "inactive_device_count"

            case filterOptions = "filter_options"
        }

        public init(activeDeviceCount: Int, filterOptions: [String: Any], inactiveDeviceCount: Int, storeCount: Int) {
            self.activeDeviceCount = activeDeviceCount

            self.storeCount = storeCount

            self.inactiveDeviceCount = inactiveDeviceCount

            self.filterOptions = filterOptions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            storeCount = try container.decode(Int.self, forKey: .storeCount)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            filterOptions = try container.decode([String: Any].self, forKey: .filterOptions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(storeCount, forKey: .storeCount)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(filterOptions, forKey: .filterOptions)
        }
    }
}
