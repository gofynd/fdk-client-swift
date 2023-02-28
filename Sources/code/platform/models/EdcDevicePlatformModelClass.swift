

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var applicationId: String

        public var aggregatorName: String?

        public var isActive: Bool

        public var edcDeviceSerialNo: String

        public var deviceTag: String

        public var terminalUniqueIdentifier: String

        public var merchantStorePosCode: String?

        public var aggregatorId: Int

        public var storeId: Int

        public var edcModel: String?

        public var terminalSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case aggregatorName = "aggregator_name"

            case isActive = "is_active"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case deviceTag = "device_tag"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorId = "aggregator_id"

            case storeId = "store_id"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.applicationId = applicationId

            self.aggregatorName = aggregatorName

            self.isActive = isActive

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.deviceTag = deviceTag

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorId = aggregatorId

            self.storeId = storeId

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
        }
    }
}
