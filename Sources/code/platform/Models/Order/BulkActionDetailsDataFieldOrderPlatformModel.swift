

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BulkActionDetailsDataField
         Used By: Order
     */

    class BulkActionDetailsDataField: Codable {
        public var successfulShipmentIds: [String]?

        public var batchId: String?

        public var successfulShipmentsCount: Int?

        public var companyId: String?

        public var failedShipmentsCount: Int?

        public var totalShipmentsCount: Int?

        public var processingShipmentsCount: Int?

        public enum CodingKeys: String, CodingKey {
            case successfulShipmentIds = "successful_shipment_ids"

            case batchId = "batch_id"

            case successfulShipmentsCount = "successful_shipments_count"

            case companyId = "company_id"

            case failedShipmentsCount = "failed_shipments_count"

            case totalShipmentsCount = "total_shipments_count"

            case processingShipmentsCount = "processing_shipments_count"
        }

        public init(batchId: String? = nil, companyId: String? = nil, failedShipmentsCount: Int? = nil, processingShipmentsCount: Int? = nil, successfulShipmentsCount: Int? = nil, successfulShipmentIds: [String]? = nil, totalShipmentsCount: Int? = nil) {
            self.successfulShipmentIds = successfulShipmentIds

            self.batchId = batchId

            self.successfulShipmentsCount = successfulShipmentsCount

            self.companyId = companyId

            self.failedShipmentsCount = failedShipmentsCount

            self.totalShipmentsCount = totalShipmentsCount

            self.processingShipmentsCount = processingShipmentsCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                successfulShipmentIds = try container.decode([String].self, forKey: .successfulShipmentIds)

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
                successfulShipmentsCount = try container.decode(Int.self, forKey: .successfulShipmentsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

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
                totalShipmentsCount = try container.decode(Int.self, forKey: .totalShipmentsCount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successfulShipmentIds, forKey: .successfulShipmentIds)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(successfulShipmentsCount, forKey: .successfulShipmentsCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(failedShipmentsCount, forKey: .failedShipmentsCount)

            try? container.encodeIfPresent(totalShipmentsCount, forKey: .totalShipmentsCount)

            try? container.encodeIfPresent(processingShipmentsCount, forKey: .processingShipmentsCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BulkActionDetailsDataField
         Used By: Order
     */

    class BulkActionDetailsDataField: Codable {
        public var successfulShipmentIds: [String]?

        public var batchId: String?

        public var successfulShipmentsCount: Int?

        public var companyId: String?

        public var failedShipmentsCount: Int?

        public var totalShipmentsCount: Int?

        public var processingShipmentsCount: Int?

        public enum CodingKeys: String, CodingKey {
            case successfulShipmentIds = "successful_shipment_ids"

            case batchId = "batch_id"

            case successfulShipmentsCount = "successful_shipments_count"

            case companyId = "company_id"

            case failedShipmentsCount = "failed_shipments_count"

            case totalShipmentsCount = "total_shipments_count"

            case processingShipmentsCount = "processing_shipments_count"
        }

        public init(batchId: String? = nil, companyId: String? = nil, failedShipmentsCount: Int? = nil, processingShipmentsCount: Int? = nil, successfulShipmentsCount: Int? = nil, successfulShipmentIds: [String]? = nil, totalShipmentsCount: Int? = nil) {
            self.successfulShipmentIds = successfulShipmentIds

            self.batchId = batchId

            self.successfulShipmentsCount = successfulShipmentsCount

            self.companyId = companyId

            self.failedShipmentsCount = failedShipmentsCount

            self.totalShipmentsCount = totalShipmentsCount

            self.processingShipmentsCount = processingShipmentsCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                successfulShipmentIds = try container.decode([String].self, forKey: .successfulShipmentIds)

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
                successfulShipmentsCount = try container.decode(Int.self, forKey: .successfulShipmentsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

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
                totalShipmentsCount = try container.decode(Int.self, forKey: .totalShipmentsCount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successfulShipmentIds, forKey: .successfulShipmentIds)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(successfulShipmentsCount, forKey: .successfulShipmentsCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(failedShipmentsCount, forKey: .failedShipmentsCount)

            try? container.encodeIfPresent(totalShipmentsCount, forKey: .totalShipmentsCount)

            try? container.encodeIfPresent(processingShipmentsCount, forKey: .processingShipmentsCount)
        }
    }
}
