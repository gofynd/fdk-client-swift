

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var activeDeviceCount: Int

        public var deviceCount: Int

        public var totalStores: Int

        public var inactiveDeviceCount: Int

        public var currentPage: Int

        public var success: Bool

        public var deviceList: [EdcDevice]

        public var totalPage: Int

        public var nextPage: Bool

        public enum CodingKeys: String, CodingKey {
            case activeDeviceCount = "active_device_count"

            case deviceCount = "device_count"

            case totalStores = "total_stores"

            case inactiveDeviceCount = "inactive_device_count"

            case currentPage = "current_page"

            case success

            case deviceList = "device_list"

            case totalPage = "total_page"

            case nextPage = "next_page"
        }

        public init(activeDeviceCount: Int, currentPage: Int, deviceCount: Int, deviceList: [EdcDevice], inactiveDeviceCount: Int, nextPage: Bool, success: Bool, totalPage: Int, totalStores: Int) {
            self.activeDeviceCount = activeDeviceCount

            self.deviceCount = deviceCount

            self.totalStores = totalStores

            self.inactiveDeviceCount = inactiveDeviceCount

            self.currentPage = currentPage

            self.success = success

            self.deviceList = deviceList

            self.totalPage = totalPage

            self.nextPage = nextPage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            deviceCount = try container.decode(Int.self, forKey: .deviceCount)

            totalStores = try container.decode(Int.self, forKey: .totalStores)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            currentPage = try container.decode(Int.self, forKey: .currentPage)

            success = try container.decode(Bool.self, forKey: .success)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)

            totalPage = try container.decode(Int.self, forKey: .totalPage)

            nextPage = try container.decode(Bool.self, forKey: .nextPage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(deviceCount, forKey: .deviceCount)

            try? container.encodeIfPresent(totalStores, forKey: .totalStores)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(currentPage, forKey: .currentPage)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)

            try? container.encodeIfPresent(totalPage, forKey: .totalPage)

            try? container.encodeIfPresent(nextPage, forKey: .nextPage)
        }
    }
}
