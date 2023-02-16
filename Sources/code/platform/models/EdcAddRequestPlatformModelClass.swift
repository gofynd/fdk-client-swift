

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var terminalSerialNo: String

        public var isActive: String

        public var deviceTag: String

        public var storeId: Int

        public var edcSerialNo: String

        public var merchantStorePosCode: String

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case isActive = "is_active"

            case deviceTag = "device_tag"

            case storeId = "store_id"

            case edcSerialNo = "edc_serial_no"

            case merchantStorePosCode = "merchant_store_pos_code"
        }

        public init(deviceTag: String, edcSerialNo: String, isActive: String, merchantStorePosCode: String, storeId: Int, terminalSerialNo: String) {
            self.terminalSerialNo = terminalSerialNo

            self.isActive = isActive

            self.deviceTag = deviceTag

            self.storeId = storeId

            self.edcSerialNo = edcSerialNo

            self.merchantStorePosCode = merchantStorePosCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            isActive = try container.decode(String.self, forKey: .isActive)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            storeId = try container.decode(Int.self, forKey: .storeId)

            edcSerialNo = try container.decode(String.self, forKey: .edcSerialNo)

            merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcSerialNo, forKey: .edcSerialNo)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)
        }
    }
}
