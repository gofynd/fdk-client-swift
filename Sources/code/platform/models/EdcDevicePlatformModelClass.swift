

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var isActive: Bool?

        public var storeId: Int?

        public var merchantStorePosCode: String?

        public var edcSerialNo: String?

        public var terminalSerialNo: String?

        public var appId: String?

        public var deviceTag: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case edcSerialNo = "edc_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case appId = "app_id"

            case deviceTag = "device_tag"
        }

        public init(appId: String? = nil, deviceTag: String? = nil, edcSerialNo: String? = nil, isActive: Bool? = nil, merchantStorePosCode: String? = nil, storeId: Int? = nil, terminalSerialNo: String? = nil) {
            self.isActive = isActive

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode

            self.edcSerialNo = edcSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.appId = appId

            self.deviceTag = deviceTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                edcSerialNo = try container.decode(String.self, forKey: .edcSerialNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(edcSerialNo, forKey: .edcSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)
        }
    }
}
