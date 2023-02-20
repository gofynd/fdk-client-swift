

import Foundation
public extension PlatformClient {
    /*
         Model: EdcUpdateRequest
         Used By: Payment
     */

    class EdcUpdateRequest: Codable {
        public var deviceTag: String?

        public var merchantStorePosCode: String?

        public var aggregatorId: Int?

        public var terminalSerialNo: String

        public var isActive: String?

        public var storeId: Int?

        public enum CodingKeys: String, CodingKey {
            case deviceTag = "device_tag"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case isActive = "is_active"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int? = nil, deviceTag: String? = nil, isActive: String? = nil, merchantStorePosCode: String? = nil, storeId: Int? = nil, terminalSerialNo: String) {
            self.deviceTag = deviceTag

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.isActive = isActive

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                isActive = try container.decode(String.self, forKey: .isActive)

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

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
