

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var success: Bool

        public var currentPage: Int

        public var deviceList: [EdcDevice]

        public var inactiveDeviceCount: Int

        public var deviceCount: Int

        public var nextPage: Bool

        public var activeDeviceCount: Int

        public var totalStores: Int

        public var totalPage: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case currentPage = "current_page"

            case deviceList = "device_list"

            case inactiveDeviceCount = "inactive_device_count"

            case deviceCount = "device_count"

            case nextPage = "next_page"

            case activeDeviceCount = "active_device_count"

            case totalStores = "total_stores"

            case totalPage = "total_page"
        }

        public init(activeDeviceCount: Int, currentPage: Int, deviceCount: Int, deviceList: [EdcDevice], inactiveDeviceCount: Int, nextPage: Bool, success: Bool, totalPage: Int, totalStores: Int) {
            self.success = success

            self.currentPage = currentPage

            self.deviceList = deviceList

            self.inactiveDeviceCount = inactiveDeviceCount

            self.deviceCount = deviceCount

            self.nextPage = nextPage

            self.activeDeviceCount = activeDeviceCount

            self.totalStores = totalStores

            self.totalPage = totalPage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            currentPage = try container.decode(Int.self, forKey: .currentPage)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            deviceCount = try container.decode(Int.self, forKey: .deviceCount)

            nextPage = try container.decode(Bool.self, forKey: .nextPage)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            totalStores = try container.decode(Int.self, forKey: .totalStores)

            totalPage = try container.decode(Int.self, forKey: .totalPage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(currentPage, forKey: .currentPage)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(deviceCount, forKey: .deviceCount)

            try? container.encodeIfPresent(nextPage, forKey: .nextPage)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(totalStores, forKey: .totalStores)

            try? container.encodeIfPresent(totalPage, forKey: .totalPage)
        }
    }
}
