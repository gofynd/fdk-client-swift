

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcModel: String

        public var deviceTag: String?

        public var edcDeviceSerialNo: String

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcModel: String

        public var deviceTag: String?

        public var edcDeviceSerialNo: String

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
