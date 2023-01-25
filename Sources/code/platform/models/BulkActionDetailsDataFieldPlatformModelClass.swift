

import Foundation
public extension PlatformClient {
    /*
         Model: BulkActionDetailsDataField
         Used By: Order
     */

    class BulkActionDetailsDataField: Codable {
        public var companyId: String?

        public var successfulShipmentIds: [String]?

        public var totalShipmentsCount: Int?

        public var batchId: String?

        public var processingShipmentsCount: Int?

        public var failedShipmentsCount: Int?

        public var successfulShipmentsCount: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case successfulShipmentIds = "successful_shipment_ids"

            case totalShipmentsCount = "total_shipments_count"

            case batchId = "batch_id"

            case processingShipmentsCount = "processing_shipments_count"

            case failedShipmentsCount = "failed_shipments_count"

            case successfulShipmentsCount = "successful_shipments_count"
        }

        public init(batchId: String? = nil, companyId: String? = nil, failedShipmentsCount: Int? = nil, processingShipmentsCount: Int? = nil, successfulShipmentsCount: Int? = nil, successfulShipmentIds: [String]? = nil, totalShipmentsCount: Int? = nil) {
            self.companyId = companyId

            self.successfulShipmentIds = successfulShipmentIds

            self.totalShipmentsCount = totalShipmentsCount

            self.batchId = batchId

            self.processingShipmentsCount = processingShipmentsCount

            self.failedShipmentsCount = failedShipmentsCount

            self.successfulShipmentsCount = successfulShipmentsCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successfulShipmentIds = try container.decode([String].self, forKey: .successfulShipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentsCount = try container.decode(Int.self, forKey: .totalShipmentsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processingShipmentsCount = try container.decode(Int.self, forKey: .processingShipmentsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedShipmentsCount = try container.decode(Int.self, forKey: .failedShipmentsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successfulShipmentsCount = try container.decode(Int.self, forKey: .successfulShipmentsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(successfulShipmentIds, forKey: .successfulShipmentIds)

            try? container.encodeIfPresent(totalShipmentsCount, forKey: .totalShipmentsCount)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(processingShipmentsCount, forKey: .processingShipmentsCount)

            try? container.encodeIfPresent(failedShipmentsCount, forKey: .failedShipmentsCount)

            try? container.encodeIfPresent(successfulShipmentsCount, forKey: .successfulShipmentsCount)
        }
    }
}