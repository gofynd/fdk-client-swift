

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var terminalSerialNo: String

        public var deviceTag: String?

        public var storeName: String

        public var edcDeviceSerialNo: String

        public var aggregatorId: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case deviceTag = "device_tag"

            case storeName = "store_name"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorId = "aggregator_id"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, storeId: Int, storeName: String, terminalSerialNo: String) {
            self.terminalSerialNo = terminalSerialNo

            self.deviceTag = deviceTag

            self.storeName = storeName

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorId = aggregatorId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeName = try container.decode(String.self, forKey: .storeName)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encode(storeName, forKey: .storeName)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
