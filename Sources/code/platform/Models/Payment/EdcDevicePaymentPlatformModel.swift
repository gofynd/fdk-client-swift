

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var terminalUniqueIdentifier: String

        public var aggregatorId: Int

        public var aggregatorName: String?

        public var isActive: Bool

        public var storeId: Int

        public var edcModel: String?

        public var deviceTag: String

        public var applicationId: String

        public var terminalSerialNo: String

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case aggregatorId = "aggregator_id"

            case aggregatorName = "aggregator_name"

            case isActive = "is_active"

            case storeId = "store_id"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case applicationId = "application_id"

            case terminalSerialNo = "terminal_serial_no"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.aggregatorId = aggregatorId

            self.aggregatorName = aggregatorName

            self.isActive = isActive

            self.storeId = storeId

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.applicationId = applicationId

            self.terminalSerialNo = terminalSerialNo

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

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

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

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
        public var terminalUniqueIdentifier: String

        public var aggregatorId: Int

        public var aggregatorName: String?

        public var isActive: Bool

        public var storeId: Int

        public var edcModel: String?

        public var deviceTag: String

        public var applicationId: String

        public var terminalSerialNo: String

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case aggregatorId = "aggregator_id"

            case aggregatorName = "aggregator_name"

            case isActive = "is_active"

            case storeId = "store_id"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case applicationId = "application_id"

            case terminalSerialNo = "terminal_serial_no"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.aggregatorId = aggregatorId

            self.aggregatorName = aggregatorName

            self.isActive = isActive

            self.storeId = storeId

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.applicationId = applicationId

            self.terminalSerialNo = terminalSerialNo

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

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

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}
