

import Foundation
public extension PlatformClient {
    /*
         Model: EdcUpdateRequest
         Used By: Payment
     */

    class EdcUpdateRequest: Codable {
        public var isActive: String?

        public var deviceTag: String?

        public var storeId: Int

        public var terminalSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case deviceTag = "device_tag"

            case storeId = "store_id"

            case terminalSerialNo = "terminal_serial_no"
        }

        public init(deviceTag: String? = nil, isActive: String? = nil, storeId: Int, terminalSerialNo: String) {
            self.isActive = isActive

            self.deviceTag = deviceTag

            self.storeId = storeId

            self.terminalSerialNo = terminalSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
        }
    }
}
