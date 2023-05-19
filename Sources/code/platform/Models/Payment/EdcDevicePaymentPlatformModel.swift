

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var deviceTag: String

        public var merchantStorePosCode: String?

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var isActive: Bool

        public var aggregatorName: String?

        public var edcDeviceSerialNo: String

        public var applicationId: String

        public var storeId: Int

        public var terminalUniqueIdentifier: String

        public var edcModel: String?

        public enum CodingKeys: String, CodingKey {
            case deviceTag = "device_tag"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case isActive = "is_active"

            case aggregatorName = "aggregator_name"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case applicationId = "application_id"

            case storeId = "store_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcModel = "edc_model"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.deviceTag = deviceTag

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.isActive = isActive

            self.aggregatorName = aggregatorName

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.applicationId = applicationId

            self.storeId = storeId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcModel = edcModel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var deviceTag: String

        public var merchantStorePosCode: String?

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var isActive: Bool

        public var aggregatorName: String?

        public var edcDeviceSerialNo: String

        public var applicationId: String

        public var storeId: Int

        public var terminalUniqueIdentifier: String

        public var edcModel: String?

        public enum CodingKeys: String, CodingKey {
            case deviceTag = "device_tag"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case isActive = "is_active"

            case aggregatorName = "aggregator_name"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case applicationId = "application_id"

            case storeId = "store_id"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case edcModel = "edc_model"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.deviceTag = deviceTag

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.isActive = isActive

            self.aggregatorName = aggregatorName

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.applicationId = applicationId

            self.storeId = storeId

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.edcModel = edcModel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)
        }
    }
}
