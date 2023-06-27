

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcUpdateRequest
         Used By: Payment
     */

    class EdcUpdateRequest: Codable {
        public var aggregatorId: Int?

        public var isActive: Bool?

        public var storeId: Int?

        public var edcModel: String?

        public var deviceTag: String?

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case isActive = "is_active"

            case storeId = "store_id"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int? = nil, deviceTag: String? = nil, edcDeviceSerialNo: String? = nil, edcModel: String? = nil, isActive: Bool? = nil, merchantStorePosCode: String? = nil, storeId: Int? = nil) {
            self.aggregatorId = aggregatorId

            self.isActive = isActive

            self.storeId = storeId

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                edcModel = try container.decode(String.self, forKey: .edcModel)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcUpdateRequest
         Used By: Payment
     */

    class EdcUpdateRequest: Codable {
        public var aggregatorId: Int?

        public var isActive: Bool?

        public var storeId: Int?

        public var edcModel: String?

        public var deviceTag: String?

        public var merchantStorePosCode: String?

        public var edcDeviceSerialNo: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case isActive = "is_active"

            case storeId = "store_id"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int? = nil, deviceTag: String? = nil, edcDeviceSerialNo: String? = nil, edcModel: String? = nil, isActive: Bool? = nil, merchantStorePosCode: String? = nil, storeId: Int? = nil) {
            self.aggregatorId = aggregatorId

            self.isActive = isActive

            self.storeId = storeId

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.merchantStorePosCode = merchantStorePosCode

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                edcModel = try container.decode(String.self, forKey: .edcModel)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}
