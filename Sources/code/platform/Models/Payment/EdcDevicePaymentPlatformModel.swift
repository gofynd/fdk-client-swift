

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var aggregatorName: String?

        public var applicationId: String

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public var deviceTag: String

        public var isActive: Bool

        public var terminalUniqueIdentifier: String

        public var storeId: Int

        public var edcModel: String?

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case storeId = "store_id"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.storeId = storeId

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

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
        public var aggregatorName: String?

        public var applicationId: String

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public var deviceTag: String

        public var isActive: Bool

        public var terminalUniqueIdentifier: String

        public var storeId: Int

        public var edcModel: String?

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case storeId = "store_id"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.storeId = storeId

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}
