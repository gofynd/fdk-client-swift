

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcDeviceSerialNo: String

        public var aggregatorId: Int

        public var edcModel: String

        public var storeId: Int

        public var deviceTag: String?

        public var terminalSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorId = "aggregator_id"

            case edcModel = "edc_model"

            case storeId = "store_id"

            case deviceTag = "device_tag"

            case terminalSerialNo = "terminal_serial_no"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorId = aggregatorId

            self.edcModel = edcModel

            self.storeId = storeId

            self.deviceTag = deviceTag

            self.terminalSerialNo = terminalSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
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

        public var aggregatorId: Int

        public var edcModel: String

        public var storeId: Int

        public var deviceTag: String?

        public var terminalSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorId = "aggregator_id"

            case edcModel = "edc_model"

            case storeId = "store_id"

            case deviceTag = "device_tag"

            case terminalSerialNo = "terminal_serial_no"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorId = aggregatorId

            self.edcModel = edcModel

            self.storeId = storeId

            self.deviceTag = deviceTag

            self.terminalSerialNo = terminalSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
        }
    }
}
