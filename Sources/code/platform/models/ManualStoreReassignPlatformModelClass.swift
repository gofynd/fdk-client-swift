

import Foundation
public extension PlatformClient {
    /*
         Model: ManualStoreReassign
         Used By: OrderManage
     */

    class ManualStoreReassign: Codable {
        public var reasonId: [Int]?

        public var storeId: Int

        public var reasonText: String?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case reasonId = "reason_id"

            case storeId = "store_id"

            case reasonText = "reason_text"

            case shipmentId = "shipment_id"
        }

        public init(reasonId: [Int]? = nil, reasonText: String? = nil, shipmentId: String, storeId: Int) {
            self.reasonId = reasonId

            self.storeId = storeId

            self.reasonText = reasonText

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasonId = try container.decode([Int].self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(reasonId, forKey: .reasonId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(reasonText, forKey: .reasonText)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
