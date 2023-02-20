

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var applicationId: String

        public var deviceTag: String

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var isActive: String

        public var storeId: Int

        public var terminalUniqueIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case deviceTag = "device_tag"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case isActive = "is_active"

            case storeId = "store_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"
        }

        public init(aggregatorId: Int, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, isActive: String, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.applicationId = applicationId

            self.deviceTag = deviceTag

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.isActive = isActive

            self.storeId = storeId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            isActive = try container.decode(String.self, forKey: .isActive)

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)
        }
    }
}
