

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var isActive: String

        public var storeId: Int

        public var merchantStorePosCode: String

        public var edcSerialNo: String

        public var terminalSerialNo: String

        public var deviceTag: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcSerialNo = "edc_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case deviceTag = "device_tag"
        }

        public init(deviceTag: String, edcSerialNo: String, isActive: String, merchantStorePosCode: String, storeId: Int, terminalSerialNo: String) {
            self.isActive = isActive

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode

            self.edcSerialNo = edcSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(String.self, forKey: .isActive)

            storeId = try container.decode(Int.self, forKey: .storeId)

            merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            edcSerialNo = try container.decode(String.self, forKey: .edcSerialNo)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcSerialNo, forKey: .edcSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)
        }
    }
}
