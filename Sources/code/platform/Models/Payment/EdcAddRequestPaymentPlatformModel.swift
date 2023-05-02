

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcDeviceSerialNo: String

        public var edcModel: String

        public var terminalSerialNo: String

        public var storeId: Int

        public var aggregatorId: Int

        public var deviceTag: String?

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"

            case storeId = "store_id"

            case aggregatorId = "aggregator_id"

            case deviceTag = "device_tag"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo

            self.storeId = storeId

            self.aggregatorId = aggregatorId

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encode(deviceTag, forKey: .deviceTag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcDeviceSerialNo: String

        public var edcModel: String

        public var terminalSerialNo: String

        public var storeId: Int

        public var aggregatorId: Int

        public var deviceTag: String?

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case edcModel = "edc_model"

            case terminalSerialNo = "terminal_serial_no"

            case storeId = "store_id"

            case aggregatorId = "aggregator_id"

            case deviceTag = "device_tag"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.edcModel = edcModel

            self.terminalSerialNo = terminalSerialNo

            self.storeId = storeId

            self.aggregatorId = aggregatorId

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encode(deviceTag, forKey: .deviceTag)
        }
    }
}
