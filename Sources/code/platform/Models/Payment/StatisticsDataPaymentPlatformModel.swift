

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: StatisticsData
         Used By: Payment
     */

    class StatisticsData: Codable {
        public var inactiveDeviceCount: Int

        public var activeDeviceCount: Int

        public enum CodingKeys: String, CodingKey {
            case inactiveDeviceCount = "inactive_device_count"

            case activeDeviceCount = "active_device_count"
        }

        public init(activeDeviceCount: Int, inactiveDeviceCount: Int) {
            self.inactiveDeviceCount = inactiveDeviceCount

            self.activeDeviceCount = activeDeviceCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: StatisticsData
         Used By: Payment
     */

    class StatisticsData: Codable {
        public var inactiveDeviceCount: Int

        public var activeDeviceCount: Int

        public enum CodingKeys: String, CodingKey {
            case inactiveDeviceCount = "inactive_device_count"

            case activeDeviceCount = "active_device_count"
        }

        public init(activeDeviceCount: Int, inactiveDeviceCount: Int) {
            self.inactiveDeviceCount = inactiveDeviceCount

            self.activeDeviceCount = activeDeviceCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)
        }
    }
}
