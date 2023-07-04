

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var isActive: Bool

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public var terminalUniqueIdentifier: String

        public var storeId: Int

        public var terminalSerialNo: String

        public var aggregatorName: String?

        public var applicationId: String

        public var edcModel: String?

        public var aggregatorId: Int

        public var deviceTag: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case storeId = "store_id"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case edcModel = "edc_model"

            case aggregatorId = "aggregator_id"

            case deviceTag = "device_tag"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.isActive = isActive

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.storeId = storeId

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.edcModel = edcModel

            self.aggregatorId = aggregatorId

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var isActive: Bool

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public var terminalUniqueIdentifier: String

        public var storeId: Int

        public var terminalSerialNo: String

        public var aggregatorName: String?

        public var applicationId: String

        public var edcModel: String?

        public var aggregatorId: Int

        public var deviceTag: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case storeId = "store_id"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case edcModel = "edc_model"

            case aggregatorId = "aggregator_id"

            case deviceTag = "device_tag"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.isActive = isActive

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.storeId = storeId

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.edcModel = edcModel

            self.aggregatorId = aggregatorId

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)
        }
    }
}
