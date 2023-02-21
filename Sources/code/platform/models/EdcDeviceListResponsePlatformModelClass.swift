

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var currentPage: Int

        public var activeDeviceCount: Int

        public var inactiveDeviceCount: Int

        public var deviceCount: Int

        public var nextPage: Bool

        public var totalStores: Int

        public var deviceList: [EdcDevice]

        public var totalPage: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case currentPage = "current_page"

            case activeDeviceCount = "active_device_count"

            case inactiveDeviceCount = "inactive_device_count"

            case deviceCount = "device_count"

            case nextPage = "next_page"

            case totalStores = "total_stores"

            case deviceList = "device_list"

            case totalPage = "total_page"

            case success
        }

        public init(activeDeviceCount: Int, currentPage: Int, deviceCount: Int, deviceList: [EdcDevice], inactiveDeviceCount: Int, nextPage: Bool, success: Bool, totalPage: Int, totalStores: Int) {
            self.currentPage = currentPage

            self.activeDeviceCount = activeDeviceCount

            self.inactiveDeviceCount = inactiveDeviceCount

            self.deviceCount = deviceCount

            self.nextPage = nextPage

            self.totalStores = totalStores

            self.deviceList = deviceList

            self.totalPage = totalPage

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentPage = try container.decode(Int.self, forKey: .currentPage)

            activeDeviceCount = try container.decode(Int.self, forKey: .activeDeviceCount)

            inactiveDeviceCount = try container.decode(Int.self, forKey: .inactiveDeviceCount)

            deviceCount = try container.decode(Int.self, forKey: .deviceCount)

            nextPage = try container.decode(Bool.self, forKey: .nextPage)

            totalStores = try container.decode(Int.self, forKey: .totalStores)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)

            totalPage = try container.decode(Int.self, forKey: .totalPage)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentPage, forKey: .currentPage)

            try? container.encodeIfPresent(activeDeviceCount, forKey: .activeDeviceCount)

            try? container.encodeIfPresent(inactiveDeviceCount, forKey: .inactiveDeviceCount)

            try? container.encodeIfPresent(deviceCount, forKey: .deviceCount)

            try? container.encodeIfPresent(nextPage, forKey: .nextPage)

            try? container.encodeIfPresent(totalStores, forKey: .totalStores)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)

            try? container.encodeIfPresent(totalPage, forKey: .totalPage)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
