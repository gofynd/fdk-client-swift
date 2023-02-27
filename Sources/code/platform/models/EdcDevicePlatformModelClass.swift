

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var edcModelsName: String?

        public var terminalUniqueIdentifier: String

        public var aggregatorName: String?

        public var storeName: String

        public var deviceTag: String

        public var edcModelsId: Int

        public var applicationId: String

        public var isActive: String

        public var edcDeviceSerialNo: String

        public var storeId: Int

        public var merchantStorePosCode: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case edcModelsName = "edc_models_name"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case aggregatorName = "aggregator_name"

            case storeName = "store_name"

            case deviceTag = "device_tag"

            case edcModelsId = "edc_models_id"

            case applicationId = "application_id"

            case isActive = "is_active"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModelsId: Int, edcModelsName: String? = nil, isActive: String, merchantStorePosCode: String? = nil, storeId: Int, storeName: String, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.edcModelsName = edcModelsName

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.aggregatorName = aggregatorName

            self.storeName = storeName

            self.deviceTag = deviceTag

            self.edcModelsId = edcModelsId

            self.applicationId = applicationId

            self.isActive = isActive

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                edcModelsName = try container.decode(String.self, forKey: .edcModelsName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeName = try container.decode(String.self, forKey: .storeName)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            edcModelsId = try container.decode(Int.self, forKey: .edcModelsId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            isActive = try container.decode(String.self, forKey: .isActive)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcModelsName, forKey: .edcModelsName)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcModelsId, forKey: .edcModelsId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)
        }
    }
}
