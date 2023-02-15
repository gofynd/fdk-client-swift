

import Foundation
public extension PlatformClient {
    /*
         Model: bulkListingData
         Used By: Order
     */

    class bulkListingData: Codable {
        public var successfulShipments: [[String: Any]]?

        public var status: String?

        public var uploadedOn: String?

        public var successful: Int?

        public var excelUrl: String?

        public var processingShipments: [String]?

        public var fileName: String?

        public var storeCode: String?

        public var storeId: Int?

        public var userName: String?

        public var failedShipments: [[String: Any]]?

        public var failed: Int?

        public var userId: String?

        public var total: Int?

        public var storeName: String?

        public var batchId: String?

        public var id: String?

        public var processing: Int?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case successfulShipments = "successful_shipments"

            case status

            case uploadedOn = "uploaded_on"

            case successful

            case excelUrl = "excel_url"

            case processingShipments = "processing_shipments"

            case fileName = "file_name"

            case storeCode = "store_code"

            case storeId = "store_id"

            case userName = "user_name"

            case failedShipments = "failed_shipments"

            case failed

            case userId = "user_id"

            case total

            case storeName = "store_name"

            case batchId = "batch_id"

            case id

            case processing

            case companyId = "company_id"
        }

        public init(batchId: String? = nil, companyId: Int? = nil, excelUrl: String? = nil, failed: Int? = nil, failedShipments: [[String: Any]]? = nil, fileName: String? = nil, id: String? = nil, processing: Int? = nil, processingShipments: [String]? = nil, status: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, successful: Int? = nil, successfulShipments: [[String: Any]]? = nil, total: Int? = nil, uploadedOn: String? = nil, userId: String? = nil, userName: String? = nil) {
            self.successfulShipments = successfulShipments

            self.status = status

            self.uploadedOn = uploadedOn

            self.successful = successful

            self.excelUrl = excelUrl

            self.processingShipments = processingShipments

            self.fileName = fileName

            self.storeCode = storeCode

            self.storeId = storeId

            self.userName = userName

            self.failedShipments = failedShipments

            self.failed = failed

            self.userId = userId

            self.total = total

            self.storeName = storeName

            self.batchId = batchId

            self.id = id

            self.processing = processing

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                successfulShipments = try container.decode([[String: Any]].self, forKey: .successfulShipments)

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
                uploadedOn = try container.decode(String.self, forKey: .uploadedOn)

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
                excelUrl = try container.decode(String.self, forKey: .excelUrl)

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
                fileName = try container.decode(String.self, forKey: .fileName)

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
                storeId = try container.decode(Int.self, forKey: .storeId)

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
                failedShipments = try container.decode([[String: Any]].self, forKey: .failedShipments)

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
                userId = try container.decode(String.self, forKey: .userId)

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
                storeName = try container.decode(String.self, forKey: .storeName)

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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successfulShipments, forKey: .successfulShipments)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)

            try? container.encodeIfPresent(successful, forKey: .successful)

            try? container.encodeIfPresent(excelUrl, forKey: .excelUrl)

            try? container.encodeIfPresent(processingShipments, forKey: .processingShipments)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(userName, forKey: .userName)

            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(processing, forKey: .processing)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
