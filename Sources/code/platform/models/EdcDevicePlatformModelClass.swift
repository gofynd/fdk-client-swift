

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var edcModel: String?

        public var aggregatorId: Int

        public var deviceTag: String

        public var storeId: Int

        public var merchantStorePosCode: String?

        public var aggregatorName: String?

        public var isActive: Bool

        public var terminalSerialNo: String

        public var applicationId: String

        public var terminalUniqueIdentifier: String

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case edcModel = "edc_model"

            case aggregatorId = "aggregator_id"

            case deviceTag = "device_tag"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorName = "aggregator_name"

            case isActive = "is_active"

            case terminalSerialNo = "terminal_serial_no"

            case applicationId = "application_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.edcModel = edcModel

            self.aggregatorId = aggregatorId

            self.deviceTag = deviceTag

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorName = aggregatorName

            self.isActive = isActive

            self.terminalSerialNo = terminalSerialNo

            self.applicationId = applicationId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}
