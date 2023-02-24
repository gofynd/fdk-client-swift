

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var terminalSerialNo: String

        public var storeName: String

        public var aggregatorName: String?

        public var aggregatorId: Int

        public var applicationId: String

        public var storeId: Int

        public var isActive: String

        public var edcDeviceSerialNo: String

        public var terminalUniqueIdentifier: String

        public var deviceTag: String

        public var merchantStorePosCode: String?

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case storeName = "store_name"

            case aggregatorName = "aggregator_name"

            case aggregatorId = "aggregator_id"

            case applicationId = "application_id"

            case storeId = "store_id"

            case isActive = "is_active"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case deviceTag = "device_tag"

            case merchantStorePosCode = "merchant_store_pos_code"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, isActive: String, merchantStorePosCode: String? = nil, storeId: Int, storeName: String, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalSerialNo = terminalSerialNo

            self.storeName = storeName

            self.aggregatorName = aggregatorName

            self.aggregatorId = aggregatorId

            self.applicationId = applicationId

            self.storeId = storeId

            self.isActive = isActive

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.deviceTag = deviceTag

            self.merchantStorePosCode = merchantStorePosCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeName = try container.decode(String.self, forKey: .storeName)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            isActive = try container.decode(String.self, forKey: .isActive)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)
        }
    }
}
