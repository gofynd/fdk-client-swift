

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcSerialNo: String

        public var aggregatorId: Int

        public var terminalSerialNo: String

        public var deviceTag: String?

        public var storeId: Int?

        public enum CodingKeys: String, CodingKey {
            case edcSerialNo = "edc_serial_no"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case deviceTag = "device_tag"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcSerialNo: String, storeId: Int? = nil, terminalSerialNo: String) {
            self.edcSerialNo = edcSerialNo

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.deviceTag = deviceTag

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcSerialNo = try container.decode(String.self, forKey: .edcSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcSerialNo, forKey: .edcSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
