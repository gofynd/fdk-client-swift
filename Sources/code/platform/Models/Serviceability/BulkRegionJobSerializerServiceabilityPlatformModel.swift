

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionJobSerializer
         Used By: Serviceability
     */

    class BulkRegionJobSerializer: Codable {
        public var fileUrl: String

        public var action: String

        public var jobAction: String

        public var countryIsoCode: String?

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case fileUrl = "file_url"

            case action

            case jobAction = "job_action"

            case countryIsoCode = "country_iso_code"

            case batchId = "batch_id"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.fileUrl = fileUrl

            self.action = action

            self.jobAction = jobAction

            self.countryIsoCode = countryIsoCode

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fileUrl = try container.decode(String.self, forKey: .fileUrl)

            action = try container.decode(String.self, forKey: .action)

            jobAction = try container.decode(String.self, forKey: .jobAction)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(jobAction, forKey: .jobAction)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionJobSerializer
         Used By: Serviceability
     */

    class BulkRegionJobSerializer: Codable {
        public var fileUrl: String

        public var action: String

        public var jobAction: String

        public var countryIsoCode: String?

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case fileUrl = "file_url"

            case action

            case jobAction = "job_action"

            case countryIsoCode = "country_iso_code"

            case batchId = "batch_id"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.fileUrl = fileUrl

            self.action = action

            self.jobAction = jobAction

            self.countryIsoCode = countryIsoCode

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fileUrl = try container.decode(String.self, forKey: .fileUrl)

            action = try container.decode(String.self, forKey: .action)

            jobAction = try container.decode(String.self, forKey: .jobAction)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(jobAction, forKey: .jobAction)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}
