

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcSerialNo: String

        public var storeId: Int

        public var merchantStorePosCode: String

        public var terminalSerialNo: String

        public var deviceTag: String

        public var isActive: String

        public enum CodingKeys: String, CodingKey {
            case edcSerialNo = "edc_serial_no"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case terminalSerialNo = "terminal_serial_no"

            case deviceTag = "device_tag"

            case isActive = "is_active"
        }

        public init(deviceTag: String, edcSerialNo: String, isActive: String, merchantStorePosCode: String, storeId: Int, terminalSerialNo: String) {
            self.edcSerialNo = edcSerialNo

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode

            self.terminalSerialNo = terminalSerialNo

            self.deviceTag = deviceTag

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcSerialNo = try container.decode(String.self, forKey: .edcSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(String.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcSerialNo, forKey: .edcSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
