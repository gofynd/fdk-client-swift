

import Foundation
public extension PlatformClient {
    /*
         Model: ManualStoreReassign
         Used By: OrderManage
     */

    class ManualStoreReassign: Codable {
        public var shipmentId: String

        public var reasonId: [Int]?

        public var storeId: Int

        public var reasonText: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case reasonId = "reason_id"

            case storeId = "store_id"

            case reasonText = "reason_text"
        }

        public init(reasonId: [Int]? = nil, reasonText: String? = nil, shipmentId: String, storeId: Int) {
            self.shipmentId = shipmentId

            self.reasonId = reasonId

            self.storeId = storeId

            self.reasonText = reasonText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(reasonId, forKey: .reasonId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(reasonText, forKey: .reasonText)
        }
    }
}
