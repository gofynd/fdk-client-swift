

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var success: Bool

        public var deviceList: [EdcDevice]

        public enum CodingKeys: String, CodingKey {
            case success

            case deviceList = "device_list"
        }

        public init(deviceList: [EdcDevice], success: Bool) {
            self.success = success

            self.deviceList = deviceList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)
        }
    }
}
