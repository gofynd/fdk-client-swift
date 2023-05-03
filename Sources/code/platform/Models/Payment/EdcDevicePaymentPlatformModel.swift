

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var storeId: Int

        public var applicationId: String

        public var merchantStorePosCode: String?

        public var isActive: Bool

        public var edcDeviceSerialNo: String

        public var edcModel: String?

        public var terminalUniqueIdentifier: String

        public var terminalSerialNo: String

        public var deviceTag: String

        public var aggregatorId: Int

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case applicationId = "application_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case isActive = "is_active"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case edcModel = "edc_model"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case terminalSerialNo = "terminal_serial_no"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.storeId = storeId

            self.applicationId = applicationId

            self.merchantStorePosCode = merchantStorePosCode

            self.isActive = isActive

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.edcModel = edcModel

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.terminalSerialNo = terminalSerialNo

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var storeId: Int

        public var applicationId: String

        public var merchantStorePosCode: String?

        public var isActive: Bool

        public var edcDeviceSerialNo: String

        public var edcModel: String?

        public var terminalUniqueIdentifier: String

        public var terminalSerialNo: String

        public var deviceTag: String

        public var aggregatorId: Int

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case applicationId = "application_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case isActive = "is_active"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case edcModel = "edc_model"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case terminalSerialNo = "terminal_serial_no"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.storeId = storeId

            self.applicationId = applicationId

            self.merchantStorePosCode = merchantStorePosCode

            self.isActive = isActive

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.edcModel = edcModel

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.terminalSerialNo = terminalSerialNo

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
