

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var edcDeviceSerialNo: String

        public var deviceTag: String

        public var aggregatorName: String?

        public var merchantStorePosCode: String?

        public var applicationId: String

        public var isActive: Bool

        public var storeId: Int

        public var aggregatorId: Int

        public var terminalUniqueIdentifier: String

        public var edcModel: String?

        public var terminalSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case deviceTag = "device_tag"

            case aggregatorName = "aggregator_name"

            case merchantStorePosCode = "merchant_store_pos_code"

            case applicationId = "application_id"

            case isActive = "is_active"

            case storeId = "store_id"

            case aggregatorId = "aggregator_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.deviceTag = deviceTag

            self.aggregatorName = aggregatorName

            self.merchantStorePosCode = merchantStorePosCode

            self.applicationId = applicationId

            self.isActive = isActive

            self.storeId = storeId

            self.aggregatorId = aggregatorId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storeId = try container.decode(Int.self, forKey: .storeId)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
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

        public var deviceTag: String

        public var aggregatorName: String?

        public var merchantStorePosCode: String?

        public var applicationId: String

        public var isActive: Bool

        public var storeId: Int

        public var aggregatorId: Int

        public var terminalUniqueIdentifier: String

        public var edcModel: String?

        public var terminalSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case deviceTag = "device_tag"

            case aggregatorName = "aggregator_name"

            case merchantStorePosCode = "merchant_store_pos_code"

            case applicationId = "application_id"

            case isActive = "is_active"

            case storeId = "store_id"

            case aggregatorId = "aggregator_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.deviceTag = deviceTag

            self.aggregatorName = aggregatorName

            self.merchantStorePosCode = merchantStorePosCode

            self.applicationId = applicationId

            self.isActive = isActive

            self.storeId = storeId

            self.aggregatorId = aggregatorId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storeId = try container.decode(Int.self, forKey: .storeId)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
        }
    }
}
