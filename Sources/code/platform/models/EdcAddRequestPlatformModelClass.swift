

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var terminalSerialNo: String

        public var storeName: String

        public var aggregatorId: Int

        public var storeId: Int

        public var edcDeviceSerialNo: String

        public var deviceTag: String?

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case storeName = "store_name"

            case aggregatorId = "aggregator_id"

            case storeId = "store_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case deviceTag = "device_tag"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, storeId: Int, storeName: String, terminalSerialNo: String) {
            self.terminalSerialNo = terminalSerialNo

            self.storeName = storeName

            self.aggregatorId = aggregatorId

            self.storeId = storeId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            storeName = try container.decode(String.self, forKey: .storeName)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encode(storeName, forKey: .storeName)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encode(deviceTag, forKey: .deviceTag)
        }
    }
}
