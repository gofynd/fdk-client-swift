

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OmsReports
         Used By: Order
     */

    class OmsReports: Codable {
        public var reportName: String?

        public var s3Key: String?

        public var reportType: String?

        public var requestDetails: [String: Any]?

        public var reportRequestedAt: String?

        public var reportCreatedAt: String?

        public var displayName: String?

        public var status: String?

        public var reportId: String?

        public enum CodingKeys: String, CodingKey {
            case reportName = "report_name"

            case s3Key = "s3_key"

            case reportType = "report_type"

            case requestDetails = "request_details"

            case reportRequestedAt = "report_requested_at"

            case reportCreatedAt = "report_created_at"

            case displayName = "display_name"

            case status

            case reportId = "report_id"
        }

        public init(displayName: String? = nil, reportCreatedAt: String? = nil, reportId: String? = nil, reportName: String? = nil, reportRequestedAt: String? = nil, reportType: String? = nil, requestDetails: [String: Any]? = nil, s3Key: String? = nil, status: String? = nil) {
            self.reportName = reportName

            self.s3Key = s3Key

            self.reportType = reportType

            self.requestDetails = requestDetails

            self.reportRequestedAt = reportRequestedAt

            self.reportCreatedAt = reportCreatedAt

            self.displayName = displayName

            self.status = status

            self.reportId = reportId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reportName = try container.decode(String.self, forKey: .reportName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                s3Key = try container.decode(String.self, forKey: .s3Key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportType = try container.decode(String.self, forKey: .reportType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestDetails = try container.decode([String: Any].self, forKey: .requestDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportRequestedAt = try container.decode(String.self, forKey: .reportRequestedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportCreatedAt = try container.decode(String.self, forKey: .reportCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                reportId = try container.decode(String.self, forKey: .reportId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reportName, forKey: .reportName)

            try? container.encodeIfPresent(s3Key, forKey: .s3Key)

            try? container.encodeIfPresent(reportType, forKey: .reportType)

            try? container.encodeIfPresent(requestDetails, forKey: .requestDetails)

            try? container.encode(reportRequestedAt, forKey: .reportRequestedAt)

            try? container.encode(reportCreatedAt, forKey: .reportCreatedAt)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(reportId, forKey: .reportId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OmsReports
         Used By: Order
     */

    class OmsReports: Codable {
        public var reportName: String?

        public var s3Key: String?

        public var reportType: String?

        public var requestDetails: [String: Any]?

        public var reportRequestedAt: String?

        public var reportCreatedAt: String?

        public var displayName: String?

        public var status: String?

        public var reportId: String?

        public enum CodingKeys: String, CodingKey {
            case reportName = "report_name"

            case s3Key = "s3_key"

            case reportType = "report_type"

            case requestDetails = "request_details"

            case reportRequestedAt = "report_requested_at"

            case reportCreatedAt = "report_created_at"

            case displayName = "display_name"

            case status

            case reportId = "report_id"
        }

        public init(displayName: String? = nil, reportCreatedAt: String? = nil, reportId: String? = nil, reportName: String? = nil, reportRequestedAt: String? = nil, reportType: String? = nil, requestDetails: [String: Any]? = nil, s3Key: String? = nil, status: String? = nil) {
            self.reportName = reportName

            self.s3Key = s3Key

            self.reportType = reportType

            self.requestDetails = requestDetails

            self.reportRequestedAt = reportRequestedAt

            self.reportCreatedAt = reportCreatedAt

            self.displayName = displayName

            self.status = status

            self.reportId = reportId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reportName = try container.decode(String.self, forKey: .reportName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                s3Key = try container.decode(String.self, forKey: .s3Key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportType = try container.decode(String.self, forKey: .reportType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestDetails = try container.decode([String: Any].self, forKey: .requestDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportRequestedAt = try container.decode(String.self, forKey: .reportRequestedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportCreatedAt = try container.decode(String.self, forKey: .reportCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                reportId = try container.decode(String.self, forKey: .reportId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reportName, forKey: .reportName)

            try? container.encodeIfPresent(s3Key, forKey: .s3Key)

            try? container.encodeIfPresent(reportType, forKey: .reportType)

            try? container.encodeIfPresent(requestDetails, forKey: .requestDetails)

            try? container.encode(reportRequestedAt, forKey: .reportRequestedAt)

            try? container.encode(reportCreatedAt, forKey: .reportCreatedAt)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(reportId, forKey: .reportId)
        }
    }
}