

import Foundation

public extension PlatformClient.Order {
    /*
         Model: bulkListingData
         Used By: Order
     */

    class bulkListingData: Codable {
        public var processingShipments: [String]?

        public var batchId: String?

        public var storeCode: String?

        public var storeName: String?

        public var status: String?

        public var companyId: Int?

        public var successful: Int?

        public var userId: String?

        public var uploadedOn: String?

        public var id: String?

        public var userName: String?

        public var total: Int?

        public var successfulShipments: [[String: Any]]?

        public var failed: Int?

        public var fileName: String?

        public var storeId: Int?

        public var failedShipments: [[String: Any]]?

        public var excelUrl: String?

        public var processing: Int?

        public enum CodingKeys: String, CodingKey {
            case processingShipments = "processing_shipments"

            case batchId = "batch_id"

            case storeCode = "store_code"

            case storeName = "store_name"

            case status

            case companyId = "company_id"

            case successful

            case userId = "user_id"

            case uploadedOn = "uploaded_on"

            case id

            case userName = "user_name"

            case total

            case successfulShipments = "successful_shipments"

            case failed

            case fileName = "file_name"

            case storeId = "store_id"

            case failedShipments = "failed_shipments"

            case excelUrl = "excel_url"

            case processing
        }

        public init(batchId: String? = nil, companyId: Int? = nil, excelUrl: String? = nil, failed: Int? = nil, failedShipments: [[String: Any]]? = nil, fileName: String? = nil, id: String? = nil, processing: Int? = nil, processingShipments: [String]? = nil, status: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, successful: Int? = nil, successfulShipments: [[String: Any]]? = nil, total: Int? = nil, uploadedOn: String? = nil, userId: String? = nil, userName: String? = nil) {
            self.processingShipments = processingShipments

            self.batchId = batchId

            self.storeCode = storeCode

            self.storeName = storeName

            self.status = status

            self.companyId = companyId

            self.successful = successful

            self.userId = userId

            self.uploadedOn = uploadedOn

            self.id = id

            self.userName = userName

            self.total = total

            self.successfulShipments = successfulShipments

            self.failed = failed

            self.fileName = fileName

            self.storeId = storeId

            self.failedShipments = failedShipments

            self.excelUrl = excelUrl

            self.processing = processing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                processingShipments = try container.decode([String].self, forKey: .processingShipments)

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
                storeCode = try container.decode(String.self, forKey: .storeCode)

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
                status = try container.decode(String.self, forKey: .status)

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
                successful = try container.decode(Int.self, forKey: .successful)

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
                uploadedOn = try container.decode(String.self, forKey: .uploadedOn)

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
                userName = try container.decode(String.self, forKey: .userName)

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
                successfulShipments = try container.decode([[String: Any]].self, forKey: .successfulShipments)

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
                storeId = try container.decode(Int.self, forKey: .storeId)

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
                excelUrl = try container.decode(String.self, forKey: .excelUrl)

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

            try? container.encodeIfPresent(processingShipments, forKey: .processingShipments)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(successful, forKey: .successful)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(userName, forKey: .userName)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(successfulShipments, forKey: .successfulShipments)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)

            try? container.encodeIfPresent(excelUrl, forKey: .excelUrl)

            try? container.encodeIfPresent(processing, forKey: .processing)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: bulkListingData
         Used By: Order
     */

    class bulkListingData: Codable {
        public var processingShipments: [String]?

        public var batchId: String?

        public var storeCode: String?

        public var storeName: String?

        public var status: String?

        public var companyId: Int?

        public var successful: Int?

        public var userId: String?

        public var uploadedOn: String?

        public var id: String?

        public var userName: String?

        public var total: Int?

        public var successfulShipments: [[String: Any]]?

        public var failed: Int?

        public var fileName: String?

        public var storeId: Int?

        public var failedShipments: [[String: Any]]?

        public var excelUrl: String?

        public var processing: Int?

        public enum CodingKeys: String, CodingKey {
            case processingShipments = "processing_shipments"

            case batchId = "batch_id"

            case storeCode = "store_code"

            case storeName = "store_name"

            case status

            case companyId = "company_id"

            case successful

            case userId = "user_id"

            case uploadedOn = "uploaded_on"

            case id

            case userName = "user_name"

            case total

            case successfulShipments = "successful_shipments"

            case failed

            case fileName = "file_name"

            case storeId = "store_id"

            case failedShipments = "failed_shipments"

            case excelUrl = "excel_url"

            case processing
        }

        public init(batchId: String? = nil, companyId: Int? = nil, excelUrl: String? = nil, failed: Int? = nil, failedShipments: [[String: Any]]? = nil, fileName: String? = nil, id: String? = nil, processing: Int? = nil, processingShipments: [String]? = nil, status: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, successful: Int? = nil, successfulShipments: [[String: Any]]? = nil, total: Int? = nil, uploadedOn: String? = nil, userId: String? = nil, userName: String? = nil) {
            self.processingShipments = processingShipments

            self.batchId = batchId

            self.storeCode = storeCode

            self.storeName = storeName

            self.status = status

            self.companyId = companyId

            self.successful = successful

            self.userId = userId

            self.uploadedOn = uploadedOn

            self.id = id

            self.userName = userName

            self.total = total

            self.successfulShipments = successfulShipments

            self.failed = failed

            self.fileName = fileName

            self.storeId = storeId

            self.failedShipments = failedShipments

            self.excelUrl = excelUrl

            self.processing = processing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                processingShipments = try container.decode([String].self, forKey: .processingShipments)

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
                storeCode = try container.decode(String.self, forKey: .storeCode)

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
                status = try container.decode(String.self, forKey: .status)

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
                successful = try container.decode(Int.self, forKey: .successful)

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
                uploadedOn = try container.decode(String.self, forKey: .uploadedOn)

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
                userName = try container.decode(String.self, forKey: .userName)

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
                successfulShipments = try container.decode([[String: Any]].self, forKey: .successfulShipments)

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
                storeId = try container.decode(Int.self, forKey: .storeId)

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
                excelUrl = try container.decode(String.self, forKey: .excelUrl)

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

            try? container.encodeIfPresent(processingShipments, forKey: .processingShipments)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(successful, forKey: .successful)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(userName, forKey: .userName)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(successfulShipments, forKey: .successfulShipments)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)

            try? container.encodeIfPresent(excelUrl, forKey: .excelUrl)

            try? container.encodeIfPresent(processing, forKey: .processing)
        }
    }
}