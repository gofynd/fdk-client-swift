

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceListResponse
         Used By: Payment
     */

    class EdcDeviceListResponse: Codable {
        public var deviceList: [EdcDevice]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case deviceList = "device_list"

            case success
        }

        public init(deviceList: [EdcDevice], success: Bool) {
            self.deviceList = deviceList

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deviceList = try container.decode([EdcDevice].self, forKey: .deviceList)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deviceList, forKey: .deviceList)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
