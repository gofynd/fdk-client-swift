

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var success: Bool

        public var inactiveDeviceCount: Int

        public var deviceList: [EdcDevice]

        public var totalStores: Int

        public var deviceCount: Int

        public var nextPage: Bool

        public var currentPage: Int

        public var activeDeviceCount: Int

        public var totalPage: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case inactiveDeviceCount = "inactive_device_count"

            case deviceList = "device_list"

            case totalStores = "total_stores"

            case deviceCount = "device_count"

            case nextPage = "next_page"

            case currentPage = "current_page"

            case activeDeviceCount = "active_device_count"

            case totalPage = "total_page"
        }

        public init(activeDeviceCount: Int, currentPage: Int, deviceCount: Int, deviceList: [EdcDevice], inactiveDeviceCount: Int, nextPage: Bool, success: Bool, totalPage: Int, totalStores: Int) {
            self.success = success

            self.inactiveDeviceCount = inactiveDeviceCount

            self.deviceList = deviceList

            self.totalStores = totalStores

            self.deviceCount = deviceCount

            self.nextPage = nextPage

            self.currentPage = currentPage

            self.activeDeviceCount = activeDeviceCount

            self.totalPage = totalPage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)

            totalStores = try container.decode(Int.self, forKey: .totalStores)

            deviceCount = try container.decode(Int.self, forKey: .deviceCount)

            nextPage = try container.decode(Bool.self, forKey: .nextPage)

            currentPage = try container.decode(Int.self, forKey: .currentPage)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            totalPage = try container.decode(Int.self, forKey: .totalPage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)

            try? container.encodeIfPresent(totalStores, forKey: .totalStores)

            try? container.encodeIfPresent(deviceCount, forKey: .deviceCount)

            try? container.encodeIfPresent(nextPage, forKey: .nextPage)

            try? container.encodeIfPresent(currentPage, forKey: .currentPage)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(totalPage, forKey: .totalPage)
        }
    }
}
