

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BulkActionDetailsResponse
         Used By: Order
     */

    class BulkActionDetailsResponse: Codable {
        public var error: [String]?

        public var status: Bool?

        public var message: String?

        public var userId: String?

        public var uploadedOn: String?

        public var data: [BulkActionDetailsDataField]?

        public var uploadedBy: String?

        public var failedRecords: [String]?

        public var success: String?

        public enum CodingKeys: String, CodingKey {
            case error

            case status

            case message

            case userId = "user_id"

            case uploadedOn = "uploaded_on"

            case data

            case uploadedBy = "uploaded_by"

            case failedRecords = "failed_records"

            case success
        }

        public init(data: [BulkActionDetailsDataField]? = nil, error: [String]? = nil, failedRecords: [String]? = nil, message: String? = nil, status: Bool? = nil, success: String? = nil, uploadedBy: String? = nil, uploadedOn: String? = nil, userId: String? = nil) {
            self.error = error

            self.status = status

            self.message = message

            self.userId = userId

            self.uploadedOn = uploadedOn

            self.data = data

            self.uploadedBy = uploadedBy

            self.failedRecords = failedRecords

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode([String].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

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
                data = try container.decode([BulkActionDetailsDataField].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uploadedBy = try container.decode(String.self, forKey: .uploadedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(String.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(uploadedBy, forKey: .uploadedBy)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BulkActionDetailsResponse
         Used By: Order
     */

    class BulkActionDetailsResponse: Codable {
        public var error: [String]?

        public var status: Bool?

        public var message: String?

        public var userId: String?

        public var uploadedOn: String?

        public var data: [BulkActionDetailsDataField]?

        public var uploadedBy: String?

        public var failedRecords: [String]?

        public var success: String?

        public enum CodingKeys: String, CodingKey {
            case error

            case status

            case message

            case userId = "user_id"

            case uploadedOn = "uploaded_on"

            case data

            case uploadedBy = "uploaded_by"

            case failedRecords = "failed_records"

            case success
        }

        public init(data: [BulkActionDetailsDataField]? = nil, error: [String]? = nil, failedRecords: [String]? = nil, message: String? = nil, status: Bool? = nil, success: String? = nil, uploadedBy: String? = nil, uploadedOn: String? = nil, userId: String? = nil) {
            self.error = error

            self.status = status

            self.message = message

            self.userId = userId

            self.uploadedOn = uploadedOn

            self.data = data

            self.uploadedBy = uploadedBy

            self.failedRecords = failedRecords

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode([String].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

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
                data = try container.decode([BulkActionDetailsDataField].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uploadedBy = try container.decode(String.self, forKey: .uploadedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(String.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uploadedOn, forKey: .uploadedOn)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(uploadedBy, forKey: .uploadedBy)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
