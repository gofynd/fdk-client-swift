

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var terminalUniqueIdentifier: String

        public var merchantStorePosCode: String?

        public var edcModel: String?

        public var applicationId: String

        public var storeId: Int

        public var deviceTag: String

        public var isActive: Bool

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public var edcDeviceSerialNo: String

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcModel = "edc_model"

            case applicationId = "application_id"

            case storeId = "store_id"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.merchantStorePosCode = merchantStorePosCode

            self.edcModel = edcModel

            self.applicationId = applicationId

            self.storeId = storeId

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

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
        public var terminalUniqueIdentifier: String

        public var merchantStorePosCode: String?

        public var edcModel: String?

        public var applicationId: String

        public var storeId: Int

        public var deviceTag: String

        public var isActive: Bool

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public var edcDeviceSerialNo: String

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcModel = "edc_model"

            case applicationId = "application_id"

            case storeId = "store_id"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.merchantStorePosCode = merchantStorePosCode

            self.edcModel = edcModel

            self.applicationId = applicationId

            self.storeId = storeId

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
