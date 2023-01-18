

import Foundation
public extension PlatformClient {
    /*
         Model: bulkListingData
         Used By: Order
     */

    class bulkListingData: Codable {
        public var storeId: Int?

        public var userId: String?

        public var successfulShipments: [[String: Any]]?

        public var excelUrl: String?

        public var uploadedOn: String?

        public var failed: Int?

        public var fileName: String?

        public var processingShipments: [String]?

        public var id: String?

        public var companyId: Int?

        public var storeName: String?

        public var total: Int?

        public var storeCode: String?

        public var status: String?

        public var batchId: String?

        public var userName: String?

        public var successful: Int?

        public var failedShipments: [[String: Any]]?

        public var processing: Int?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case userId = "user_id"

            case successfulShipments = "successful_shipments"

            case excelUrl = "excel_url"

            case uploadedOn = "uploaded_on"

            case failed

            case fileName = "file_name"

            case processingShipments = "processing_shipments"

            case id

            case companyId = "company_id"

            case storeName = "store_name"

            case total

            case storeCode = "store_code"

            case status

            case batchId = "batch_id"

            case userName = "user_name"

            case successful

            case failedShipments = "failed_shipments"

            case processing
        }

        public init(batchId: String? = nil, companyId: Int? = nil, excelUrl: String? = nil, failed: Int? = nil, failedShipments: [[String: Any]]? = nil, fileName: String? = nil, id: String? = nil, processing: Int? = nil, processingShipments: [String]? = nil, status: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, successful: Int? = nil, successfulShipments: [[String: Any]]? = nil, total: Int? = nil, uploadedOn: String? = nil, userId: String? = nil, userName: String? = nil) {
            self.storeId = storeId

            self.userId = userId

            self.successfulShipments = successfulShipments

            self.excelUrl = excelUrl

            self.uploadedOn = uploadedOn

            self.failed = failed

            self.fileName = fileName

            self.processingShipments = processingShipments

            self.id = id

            self.companyId = companyId

            self.storeName = storeName

            self.total = total

            self.storeCode = storeCode

            self.status = status

            self.batchId = batchId

            self.userName = userName

            self.successful = successful

            self.failedShipments = failedShipments

            self.processing = processing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successfulShipments = try container.decode([[String: Any]].self, forKey: .successfulShipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excelUrl = try container.decode(String.self, forKey: .excelUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uploadedOn = try container.decode(String.self, forKey: .uploadedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileName = try container.decode(String.self, forKey: .fileName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processingShipments = try container.decode([String].self, forKey: .processingShipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

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
                userName = try container.decode(String.self, forKey: .userName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successful = try container.decode(Int.self, forKey: .successful)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedShipments = try container.decode([[String: Any]].self, forKey: .failedShipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processing = try container.decode(Int.self, forKey: .processing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(successfulShipments, forKey: .successfulShipments)

            try? container.encodeIfPresent(excelUrl, forKey: .excelUrl)

            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(processingShipments, forKey: .processingShipments)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(userName, forKey: .userName)

            try? container.encodeIfPresent(successful, forKey: .successful)

            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)

            try? container.encodeIfPresent(processing, forKey: .processing)
        }
    }
}
