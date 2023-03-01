

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var terminalSerialNo: String

        public var applicationId: String

        public var edcModel: String?

        public var edcDeviceSerialNo: String

        public var merchantStorePosCode: String?

        public var isActive: Bool

        public var terminalUniqueIdentifier: String

        public var aggregatorId: Int

        public var deviceTag: String

        public var storeId: Int

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case applicationId = "application_id"

            case edcModel = "edc_model"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case merchantStorePosCode = "merchant_store_pos_code"

            case isActive = "is_active"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case aggregatorId = "aggregator_id"

            case deviceTag = "device_tag"

            case storeId = "store_id"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalSerialNo = terminalSerialNo

            self.applicationId = applicationId

            self.edcModel = edcModel

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.merchantStorePosCode = merchantStorePosCode

            self.isActive = isActive

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.aggregatorId = aggregatorId

            self.deviceTag = deviceTag

            self.storeId = storeId

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
