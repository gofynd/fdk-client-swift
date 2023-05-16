

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var merchantStorePosCode: String?

        public var storeId: Int

        public var aggregatorId: Int

        public var terminalUniqueIdentifier: String

        public var edcDeviceSerialNo: String

        public var aggregatorName: String?

        public var edcModel: String?

        public var deviceTag: String

        public var isActive: Bool

        public var terminalSerialNo: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case merchantStorePosCode = "merchant_store_pos_code"

            case storeId = "store_id"

            case aggregatorId = "aggregator_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorName = "aggregator_name"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case terminalSerialNo = "terminal_serial_no"

            case applicationId = "application_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.merchantStorePosCode = merchantStorePosCode

            self.storeId = storeId

            self.aggregatorId = aggregatorId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorName = aggregatorName

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.terminalSerialNo = terminalSerialNo

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var merchantStorePosCode: String?

        public var storeId: Int

        public var aggregatorId: Int

        public var terminalUniqueIdentifier: String

        public var edcDeviceSerialNo: String

        public var aggregatorName: String?

        public var edcModel: String?

        public var deviceTag: String

        public var isActive: Bool

        public var terminalSerialNo: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case merchantStorePosCode = "merchant_store_pos_code"

            case storeId = "store_id"

            case aggregatorId = "aggregator_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorName = "aggregator_name"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case terminalSerialNo = "terminal_serial_no"

            case applicationId = "application_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.merchantStorePosCode = merchantStorePosCode

            self.storeId = storeId

            self.aggregatorId = aggregatorId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorName = aggregatorName

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.terminalSerialNo = terminalSerialNo

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
