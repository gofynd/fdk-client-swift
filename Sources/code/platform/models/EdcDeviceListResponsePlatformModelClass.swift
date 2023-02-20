

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var deviceCount: Int

        public var totalPage: Int

        public var success: Bool

        public var nextPage: Bool

        public var inactiveDeviceCount: Int

        public var deviceList: [EdcDevice]

        public var totalStores: Int

        public var currentPage: Int

        public var activeDeviceCount: Int

        public enum CodingKeys: String, CodingKey {
            case deviceCount = "device_count"

            case totalPage = "total_page"

            case success

            case nextPage = "next_page"

            case inactiveDeviceCount = "inactive_device_count"

            case deviceList = "device_list"

            case totalStores = "total_stores"

            case currentPage = "current_page"

            case activeDeviceCount = "active_device_count"
        }

        public init(activeDeviceCount: Int, currentPage: Int, deviceCount: Int, deviceList: [EdcDevice], inactiveDeviceCount: Int, nextPage: Bool, success: Bool, totalPage: Int, totalStores: Int) {
            self.deviceCount = deviceCount

            self.totalPage = totalPage

            self.success = success

            self.nextPage = nextPage

            self.inactiveDeviceCount = inactiveDeviceCount

            self.deviceList = deviceList

            self.totalStores = totalStores

            self.currentPage = currentPage

            self.activeDeviceCount = activeDeviceCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deviceCount = try container.decode(Int.self, forKey: .deviceCount)

            totalPage = try container.decode(Int.self, forKey: .totalPage)

            success = try container.decode(Bool.self, forKey: .success)

            nextPage = try container.decode(Bool.self, forKey: .nextPage)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)

            totalStores = try container.decode(Int.self, forKey: .totalStores)

            currentPage = try container.decode(Int.self, forKey: .currentPage)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deviceCount, forKey: .deviceCount)

            try? container.encodeIfPresent(totalPage, forKey: .totalPage)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(nextPage, forKey: .nextPage)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)

            try? container.encodeIfPresent(totalStores, forKey: .totalStores)

            try? container.encodeIfPresent(currentPage, forKey: .currentPage)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)
        }
    }
}
