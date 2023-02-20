

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var storeId: Int?

        public var deviceTag: String?

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var edcSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case edcSerialNo = "edc_serial_no"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcSerialNo: String, storeId: Int? = nil, terminalSerialNo: String) {
            self.storeId = storeId

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.edcSerialNo = edcSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            edcSerialNo = try container.decode(String.self, forKey: .edcSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcSerialNo, forKey: .edcSerialNo)
        }
    }
}
