

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var edcModelId: Int

        public var storeName: String

        public var deviceTag: String?

        public var edcDeviceSerialNo: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case edcModelId = "edc_model_id"

            case storeName = "store_name"

            case deviceTag = "device_tag"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModelId: Int, storeId: Int, storeName: String, terminalSerialNo: String) {
            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.edcModelId = edcModelId

            self.storeName = storeName

            self.deviceTag = deviceTag

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            edcModelId = try container.decode(Int.self, forKey: .edcModelId)

            storeName = try container.decode(String.self, forKey: .storeName)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcModelId, forKey: .edcModelId)

            try? container.encode(storeName, forKey: .storeName)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
