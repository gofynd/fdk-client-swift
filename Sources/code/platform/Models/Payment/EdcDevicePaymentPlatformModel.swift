

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var aggregatorName: String?

        public var applicationId: String

        public var deviceTag: String

        public var aggregatorId: Int

        public var edcModel: String?

        public var terminalUniqueIdentifier: String

        public var edcDeviceSerialNo: String

        public var isActive: Bool

        public var merchantStorePosCode: String?

        public var terminalSerialNo: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"

            case edcModel = "edc_model"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case isActive = "is_active"

            case merchantStorePosCode = "merchant_store_pos_code"

            case terminalSerialNo = "terminal_serial_no"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId

            self.edcModel = edcModel

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.isActive = isActive

            self.merchantStorePosCode = merchantStorePosCode

            self.terminalSerialNo = terminalSerialNo

            self.storeId = storeId
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

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
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

        public var deviceTag: String

        public var aggregatorId: Int

        public var edcModel: String?

        public var terminalUniqueIdentifier: String

        public var edcDeviceSerialNo: String

        public var isActive: Bool

        public var merchantStorePosCode: String?

        public var terminalSerialNo: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"

            case edcModel = "edc_model"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case isActive = "is_active"

            case merchantStorePosCode = "merchant_store_pos_code"

            case terminalSerialNo = "terminal_serial_no"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId

            self.edcModel = edcModel

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.isActive = isActive

            self.merchantStorePosCode = merchantStorePosCode

            self.terminalSerialNo = terminalSerialNo

            self.storeId = storeId
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

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
