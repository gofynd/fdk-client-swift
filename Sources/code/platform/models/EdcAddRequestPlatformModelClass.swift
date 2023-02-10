

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var terminalSerialNo: String

        public var merchantStorePosCode: String

        public var edcSerialNo: String

        public var deviceTag: String

        public var isActive: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcSerialNo = "edc_serial_no"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case storeId = "store_id"
        }

        public init(deviceTag: String, edcSerialNo: String, isActive: String, merchantStorePosCode: String, storeId: Int, terminalSerialNo: String) {
            self.terminalSerialNo = terminalSerialNo

            self.merchantStorePosCode = merchantStorePosCode

            self.edcSerialNo = edcSerialNo

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            edcSerialNo = try container.decode(String.self, forKey: .edcSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(String.self, forKey: .isActive)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcSerialNo, forKey: .edcSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
