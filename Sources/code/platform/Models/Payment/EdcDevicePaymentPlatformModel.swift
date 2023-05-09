

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var edcDeviceSerialNo: String

        public var storeId: Int

        public var aggregatorName: String?

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var edcModel: String?

        public var isActive: Bool

        public var applicationId: String

        public var terminalUniqueIdentifier: String

        public var merchantStorePosCode: String?

        public var deviceTag: String

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case storeId = "store_id"

            case aggregatorName = "aggregator_name"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case edcModel = "edc_model"

            case isActive = "is_active"

            case applicationId = "application_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case merchantStorePosCode = "merchant_store_pos_code"

            case deviceTag = "device_tag"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.storeId = storeId

            self.aggregatorName = aggregatorName

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.edcModel = edcModel

            self.isActive = isActive

            self.applicationId = applicationId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.merchantStorePosCode = merchantStorePosCode

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

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
        public var edcDeviceSerialNo: String

        public var storeId: Int

        public var aggregatorName: String?

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var edcModel: String?

        public var isActive: Bool

        public var applicationId: String

        public var terminalUniqueIdentifier: String

        public var merchantStorePosCode: String?

        public var deviceTag: String

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case storeId = "store_id"

            case aggregatorName = "aggregator_name"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case edcModel = "edc_model"

            case isActive = "is_active"

            case applicationId = "application_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case merchantStorePosCode = "merchant_store_pos_code"

            case deviceTag = "device_tag"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.storeId = storeId

            self.aggregatorName = aggregatorName

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.edcModel = edcModel

            self.isActive = isActive

            self.applicationId = applicationId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.merchantStorePosCode = merchantStorePosCode

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)
        }
    }
}
