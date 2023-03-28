

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: StatisticsData
         Used By: Payment
     */

    class StatisticsData: Codable {
        public var activeDeviceCount: Int

        public var inactiveDeviceCount: Int

        public enum CodingKeys: String, CodingKey {
            case activeDeviceCount = "active_device_count"

            case inactiveDeviceCount = "inactive_device_count"
        }

        public init(activeDeviceCount: Int, inactiveDeviceCount: Int) {
            self.activeDeviceCount = activeDeviceCount

            self.inactiveDeviceCount = inactiveDeviceCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: StatisticsData
         Used By: Payment
     */

    class StatisticsData: Codable {
        public var activeDeviceCount: Int

        public var inactiveDeviceCount: Int

        public enum CodingKeys: String, CodingKey {
            case activeDeviceCount = "active_device_count"

            case inactiveDeviceCount = "inactive_device_count"
        }

        public init(activeDeviceCount: Int, inactiveDeviceCount: Int) {
            self.activeDeviceCount = activeDeviceCount

            self.inactiveDeviceCount = inactiveDeviceCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)
        }
    }
}
