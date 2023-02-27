

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDeviceAddResponse
         Used By: Payment
     */

    class EdcDeviceAddResponse: Codable {
        public var success: Bool

        public var data: EdcDevice

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: EdcDevice, success: Bool) {
            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(EdcDevice.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
