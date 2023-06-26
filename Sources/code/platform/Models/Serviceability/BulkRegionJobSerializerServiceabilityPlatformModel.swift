

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionJobSerializer
         Used By: Serviceability
     */

    class BulkRegionJobSerializer: Codable {
        public var batchId: String

        public var countryIsoCode: String?

        public var action: String

        public var jobAction: String

        public var fileUrl: String

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case countryIsoCode = "country_iso_code"

            case action

            case jobAction = "job_action"

            case fileUrl = "file_url"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.batchId = batchId

            self.countryIsoCode = countryIsoCode

            self.action = action

            self.jobAction = jobAction

            self.fileUrl = fileUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            jobAction = try container.decode(String.self, forKey: .jobAction)

            fileUrl = try container.decode(String.self, forKey: .fileUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(jobAction, forKey: .jobAction)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionJobSerializer
         Used By: Serviceability
     */

    class BulkRegionJobSerializer: Codable {
        public var batchId: String

        public var countryIsoCode: String?

        public var action: String

        public var jobAction: String

        public var fileUrl: String

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case countryIsoCode = "country_iso_code"

            case action

            case jobAction = "job_action"

            case fileUrl = "file_url"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.batchId = batchId

            self.countryIsoCode = countryIsoCode

            self.action = action

            self.jobAction = jobAction

            self.fileUrl = fileUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            jobAction = try container.decode(String.self, forKey: .jobAction)

            fileUrl = try container.decode(String.self, forKey: .fileUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(jobAction, forKey: .jobAction)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
        }
    }
}
