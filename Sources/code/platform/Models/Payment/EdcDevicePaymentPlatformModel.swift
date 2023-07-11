

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

        public var aggregatorName: String?

        public var edcDeviceSerialNo: String

        public var isActive: Bool

        public var deviceTag: String

        public var edcModel: String?

        public var terminalSerialNo: String

        public var terminalUniqueIdentifier: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case applicationId = "application_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorName = "aggregator_name"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case isActive = "is_active"

            case deviceTag = "device_tag"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.storeId = storeId

            self.applicationId = applicationId

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorName = aggregatorName

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.isActive = isActive

            self.deviceTag = deviceTag

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.aggregatorId = aggregatorId
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

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
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

        public var aggregatorName: String?

        public var edcDeviceSerialNo: String

        public var isActive: Bool

        public var deviceTag: String

        public var edcModel: String?

        public var terminalSerialNo: String

        public var terminalUniqueIdentifier: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case applicationId = "application_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorName = "aggregator_name"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case isActive = "is_active"

            case deviceTag = "device_tag"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.storeId = storeId

            self.applicationId = applicationId

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorName = aggregatorName

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.isActive = isActive

            self.deviceTag = deviceTag

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.aggregatorId = aggregatorId
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

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}
