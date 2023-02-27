

import Foundation
public extension PlatformClient {
    /*
         Model: EdcUpdateRequest
         Used By: Payment
     */

    class EdcUpdateRequest: Codable {
        public var aggregatorId: Int?

        public var terminalSerialNo: String

        public var edcModelId: Int

        public var storeName: String?

        public var deviceTag: String?

        public var isActive: String?

        public var edcDeviceSerialNo: String?

        public var storeId: Int?

        public var merchantStorePosCode: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case terminalSerialNo = "terminal_serial_no"

            case edcModelId = "edc_model_id"

            case storeName = "store_name"

            case deviceTag = "device_tag"

            case isActive = "is_active"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"
        }

        public init(aggregatorId: Int? = nil, deviceTag: String? = nil, edcDeviceSerialNo: String? = nil, edcModelId: Int, isActive: String? = nil, merchantStorePosCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, terminalSerialNo: String) {
            self.aggregatorId = aggregatorId

            self.terminalSerialNo = terminalSerialNo

            self.edcModelId = edcModelId

            self.storeName = storeName

            self.deviceTag = deviceTag

            self.isActive = isActive

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            edcModelId = try container.decode(Int.self, forKey: .edcModelId)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

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
                isActive = try container.decode(String.self, forKey: .isActive)

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
                storeId = try container.decode(Int.self, forKey: .storeId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcModelId, forKey: .edcModelId)

            try? container.encode(storeName, forKey: .storeName)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)
        }
    }
}
