

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var edcDeviceSerialNo: String

        public var isActive: String

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var applicationId: String

        public var storeId: Int

        public var deviceTag: String

        public var terminalUniqueIdentifier: String

        public var merchantStorePosCode: String?

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case isActive = "is_active"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case applicationId = "application_id"

            case storeId = "store_id"

            case deviceTag = "device_tag"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case merchantStorePosCode = "merchant_store_pos_code"
        }

        public init(aggregatorId: Int, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, isActive: String, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.isActive = isActive

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.applicationId = applicationId

            self.storeId = storeId

            self.deviceTag = deviceTag

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.merchantStorePosCode = merchantStorePosCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            isActive = try container.decode(String.self, forKey: .isActive)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)
        }
    }
}
