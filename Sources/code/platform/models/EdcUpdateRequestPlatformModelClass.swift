

import Foundation
public extension PlatformClient {
    /*
         Model: EdcUpdateRequest
         Used By: Payment
     */

    class EdcUpdateRequest: Codable {
        public var terminalSerialNo: String

        public var isActive: String?

        public var deviceTag: String?

        public var storeName: String?

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String?

        public var aggregatorId: Int?

        public var storeId: Int?

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"

            case isActive = "is_active"

            case deviceTag = "device_tag"

            case storeName = "store_name"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case aggregatorId = "aggregator_id"

            case storeId = "store_id"
        }

        public init(aggregatorId: Int? = nil, deviceTag: String? = nil, edcDeviceSerialNo: String? = nil, isActive: String? = nil, merchantStorePosCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, terminalSerialNo: String) {
            self.terminalSerialNo = terminalSerialNo

            self.isActive = isActive

            self.deviceTag = deviceTag

            self.storeName = storeName

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.aggregatorId = aggregatorId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            do {
                isActive = try container.decode(String.self, forKey: .isActive)

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

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

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
                edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

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

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encode(storeName, forKey: .storeName)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
