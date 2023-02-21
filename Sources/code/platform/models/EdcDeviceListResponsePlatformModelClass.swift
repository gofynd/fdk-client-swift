

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var currentPage: Int

        public var totalPage: Int

        public var deviceCount: Int

        public var nextPage: Bool

        public var inactiveDeviceCount: Int

        public var activeDeviceCount: Int

        public var success: Bool

        public var totalStores: Int

        public var deviceList: [EdcDevice]

        public enum CodingKeys: String, CodingKey {
            case currentPage = "current_page"

            case totalPage = "total_page"

            case deviceCount = "device_count"

            case nextPage = "next_page"

            case inactiveDeviceCount = "inactive_device_count"

            case activeDeviceCount = "active_device_count"

            case success

            case totalStores = "total_stores"

            case deviceList = "device_list"
        }

        public init(activeDeviceCount: Int, currentPage: Int, deviceCount: Int, deviceList: [EdcDevice], inactiveDeviceCount: Int, nextPage: Bool, success: Bool, totalPage: Int, totalStores: Int) {
            self.currentPage = currentPage

            self.totalPage = totalPage

            self.deviceCount = deviceCount

            self.nextPage = nextPage

            self.inactiveDeviceCount = inactiveDeviceCount

            self.activeDeviceCount = activeDeviceCount

            self.success = success

            self.totalStores = totalStores

            self.deviceList = deviceList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentPage = try container.decode(Int.self, forKey: .currentPage)

            totalPage = try container.decode(Int.self, forKey: .totalPage)

            deviceCount = try container.decode(Int.self, forKey: .deviceCount)

            nextPage = try container.decode(Bool.self, forKey: .nextPage)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            success = try container.decode(Bool.self, forKey: .success)

            totalStores = try container.decode(Int.self, forKey: .totalStores)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentPage, forKey: .currentPage)

            try? container.encodeIfPresent(totalPage, forKey: .totalPage)

            try? container.encodeIfPresent(deviceCount, forKey: .deviceCount)

            try? container.encodeIfPresent(nextPage, forKey: .nextPage)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalStores, forKey: .totalStores)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)
        }
    }
}
