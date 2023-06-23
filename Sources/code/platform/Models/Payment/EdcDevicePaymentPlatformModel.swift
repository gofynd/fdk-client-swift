

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var aggregatorName: String?

        public var deviceTag: String

        public var aggregatorId: Int

        public var edcModel: String?

        public var merchantStorePosCode: String?

        public var terminalSerialNo: String

        public var storeId: Int

        public var terminalUniqueIdentifier: String

        public var isActive: Bool

        public var applicationId: String

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"

            case edcModel = "edc_model"

            case merchantStorePosCode = "merchant_store_pos_code"

            case terminalSerialNo = "terminal_serial_no"

            case storeId = "store_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case isActive = "is_active"

            case applicationId = "application_id"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId

            self.edcModel = edcModel

            self.merchantStorePosCode = merchantStorePosCode

            self.terminalSerialNo = terminalSerialNo

            self.storeId = storeId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.isActive = isActive

            self.applicationId = applicationId

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

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

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

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
        public var aggregatorName: String?

        public var deviceTag: String

        public var aggregatorId: Int

        public var edcModel: String?

        public var merchantStorePosCode: String?

        public var terminalSerialNo: String

        public var storeId: Int

        public var terminalUniqueIdentifier: String

        public var isActive: Bool

        public var applicationId: String

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"

            case edcModel = "edc_model"

            case merchantStorePosCode = "merchant_store_pos_code"

            case terminalSerialNo = "terminal_serial_no"

            case storeId = "store_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case isActive = "is_active"

            case applicationId = "application_id"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId

            self.edcModel = edcModel

            self.merchantStorePosCode = merchantStorePosCode

            self.terminalSerialNo = terminalSerialNo

            self.storeId = storeId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.isActive = isActive

            self.applicationId = applicationId

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

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

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}
