

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: GetBulkRegionJobResponse
         Used By: Serviceability
     */

    class GetBulkRegionJobResponse: Codable {
        public var data: [BulkRegionData]

        public var batchId: String?

        public var currentPageNumber: Int?

        public enum CodingKeys: String, CodingKey {
            case data

            case batchId = "batch_id"

            case currentPageNumber = "current_page_number"
        }

        public init(batchId: String? = nil, currentPageNumber: Int? = nil, data: [BulkRegionData]) {
            self.data = data

            self.batchId = batchId

            self.currentPageNumber = currentPageNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([BulkRegionData].self, forKey: .data)

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentPageNumber = try container.decode(Int.self, forKey: .currentPageNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(currentPageNumber, forKey: .currentPageNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: GetBulkRegionJobResponse
         Used By: Serviceability
     */

    class GetBulkRegionJobResponse: Codable {
        public var data: [BulkRegionData]

        public var batchId: String?

        public var currentPageNumber: Int?

        public enum CodingKeys: String, CodingKey {
            case data

            case batchId = "batch_id"

            case currentPageNumber = "current_page_number"
        }

        public init(batchId: String? = nil, currentPageNumber: Int? = nil, data: [BulkRegionData]) {
            self.data = data

            self.batchId = batchId

            self.currentPageNumber = currentPageNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([BulkRegionData].self, forKey: .data)

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentPageNumber = try container.decode(Int.self, forKey: .currentPageNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(currentPageNumber, forKey: .currentPageNumber)
        }
    }
}
