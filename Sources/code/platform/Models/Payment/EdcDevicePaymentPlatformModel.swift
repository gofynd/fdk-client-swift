

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var terminalSerialNo: String

        public var aggregatorName: String?

        public var applicationId: String

        public var terminalUniqueIdentifier: String

        public var deviceTag: String

        public var edcModel: String?

        public var storeId: Int

        public var isActive: Bool

        public var aggregatorId: Int

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case deviceTag = "device_tag"

            case edcModel = "edc_model"

            case storeId = "store_id"

            case isActive = "is_active"

            case aggregatorId = "aggregator_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalSerialNo = terminalSerialNo

            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.deviceTag = deviceTag

            self.edcModel = edcModel

            self.storeId = storeId

            self.isActive = isActive

            self.aggregatorId = aggregatorId

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var terminalSerialNo: String

        public var aggregatorName: String?

        public var applicationId: String

        public var terminalUniqueIdentifier: String

        public var deviceTag: String

        public var edcModel: String?

        public var storeId: Int

        public var isActive: Bool

        public var aggregatorId: Int

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case aggregatorName = "aggregator_name"

            case applicationId = "application_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case deviceTag = "device_tag"

            case edcModel = "edc_model"

            case storeId = "store_id"

            case isActive = "is_active"

            case aggregatorId = "aggregator_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalSerialNo = terminalSerialNo

            self.aggregatorName = aggregatorName

            self.applicationId = applicationId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.deviceTag = deviceTag

            self.edcModel = edcModel

            self.storeId = storeId

            self.isActive = isActive

            self.aggregatorId = aggregatorId

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}
