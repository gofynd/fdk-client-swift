

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var totalStores: Int

        public var currentPage: Int

        public var nextPage: Bool

        public var deviceCount: Int

        public var activeDeviceCount: Int

        public var totalPage: Int

        public var deviceList: [EdcDevice]

        public var success: Bool

        public var inactiveDeviceCount: Int

        public enum CodingKeys: String, CodingKey {
            case totalStores = "total_stores"

            case currentPage = "current_page"

            case nextPage = "next_page"

            case deviceCount = "device_count"

            case activeDeviceCount = "active_device_count"

            case totalPage = "total_page"

            case deviceList = "device_list"

            case success

            case inactiveDeviceCount = "inactive_device_count"
        }

        public init(activeDeviceCount: Int, currentPage: Int, deviceCount: Int, deviceList: [EdcDevice], inactiveDeviceCount: Int, nextPage: Bool, success: Bool, totalPage: Int, totalStores: Int) {
            self.totalStores = totalStores

            self.currentPage = currentPage

            self.nextPage = nextPage

            self.deviceCount = deviceCount

            self.activeDeviceCount = activeDeviceCount

            self.totalPage = totalPage

            self.deviceList = deviceList

            self.success = success

            self.inactiveDeviceCount = inactiveDeviceCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalStores = try container.decode(Int.self, forKey: .totalStores)

            currentPage = try container.decode(Int.self, forKey: .currentPage)

            nextPage = try container.decode(Bool.self, forKey: .nextPage)

            deviceCount = try container.decode(Int.self, forKey: .deviceCount)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            totalPage = try container.decode(Int.self, forKey: .totalPage)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)

            success = try container.decode(Bool.self, forKey: .success)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalStores, forKey: .totalStores)

            try? container.encodeIfPresent(currentPage, forKey: .currentPage)

            try? container.encodeIfPresent(nextPage, forKey: .nextPage)

            try? container.encodeIfPresent(deviceCount, forKey: .deviceCount)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(totalPage, forKey: .totalPage)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)
        }
    }
}
